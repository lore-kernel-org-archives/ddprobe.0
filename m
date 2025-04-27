Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313FA22A4EA
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745732994; cv=none; b=d/oZ3eWd5TJp75yu73LaAYGsEIqDsIZ6xAer6kVvLfouXbJPLBzxStY42FdXyvPwo/MDtNq7OEt1tI6jA9d0hC2cGIXqwaPrEcyy7E6DnoqNdt/K4SmbGcIzXIQ6wTBQyXK4vSq+xrh23rc9rYsjNOH6CxPTZ/ixO0mbdCcNCgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745732994; c=relaxed/simple;
	bh=AhykWAAxu5h309lUQJH+I/MFtFAj5dQdZGHGQVnnGkY=;
	h=To:Subject:From:Message-Id:Date; b=WXCWTfggz6z8onB6cMBB4dFancJyVMxUOy4JLiiV4IH88e3WGe7xuUY3Z625TUO2jjc2v4vUPsmCkspkNS4FYv0QxChneRlErYoMM2TLU1fmRc1zXI9rmgPai2K0qlggAWwWXF0DsNkO4h5ye7QKtODOYV4nyxmBCb9QsTi+kYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJb9JiB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJb9JiB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AFBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745732993;
	bh=AhykWAAxu5h309lUQJH+I/MFtFAj5dQdZGHGQVnnGkY=;
	h=To:Subject:From:Date:From;
	b=mJb9JiB9BdDKNYmlStRBr+hSWdjrOfj6ZpcbMpnZ4ZCxxLZYWBLJu3u7p0BjYuRku
	 BvfMxkY/jOqJxunJLpoeeMMo0rcOTBzgWB5IJ4fGOq0s4Wa5HE7ZKY2C80e1227Jco
	 PYY5DhExf6g+RTxTiwT3OmYoP+KBXnTrS2/8pwpe3SMc4ozezZmL+LraoAP0PTasm4
	 QY8/zxcgeNm4gSrPyXy5TCEmQto+rFBQ9G59/g/idjZqLFNruH5xF0I7TdmuhALc+Z
	 uz3PnKNW8cGYCVprea9TMKrKUiqW+41WyH1NnFrcIfZ0HmAjcOFsUjtTQwm1lnN485
	 0OHPrFcRNkmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91479C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573299357.13047.5030220424912806635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8fcfa7dc769b028237d9735b652fb847c434f82bcbef97bd5210337e2c0bb1
Date: Sun, 27 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745732993
