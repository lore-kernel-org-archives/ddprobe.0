Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBFCF9F8
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716665063; cv=none; b=gAzux93SzXFbIAnUUKDA5rSRK5yCm2OxxBUBvG5iyMQekpKHDr2ZDdWggmbHV49MrCdWHam1ei40iJfgQ7HpFkm8ionXgt6VA0WATrieht+FrDPV6Q22a4aOr9JaAXbxcmfXZKC4Vtlh+o5sgIVtRFyhSmSVv3wyc/sIZZUZvTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716665063; c=relaxed/simple;
	bh=hBab4FWJfmaf/Z4PaUpU124khjW2L2+N/Wkg3V+E66Q=;
	h=To:Subject:From:Message-Id:Date; b=X+kX0F1f+Y/lU/BwZZeeVwUnPtHEXwFgs9RskTc06D9lmOyPR6ZiptpjH9l/KqxHTk1AMurEe5wkdLXPESiIyy+f/Lk5wzyug7bTGMNGgHLJ4W1/OJqKiFpSOp4/HEzXKiFmlyhX3rp9E6FW3xbjUbyc8+MgHnXKz3UV7rbgbsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTDM/VLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTDM/VLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B09C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716665062;
	bh=hBab4FWJfmaf/Z4PaUpU124khjW2L2+N/Wkg3V+E66Q=;
	h=To:Subject:From:Date:From;
	b=dTDM/VLEczYu0qzDlAkg+eBGR95u76jSNmyy+cWco/tKppYT/AzrcFqj6+GP0dC/Y
	 5iYvoH8peOYwKTOZtPkuZTfxoXo3/A9jcf+BRRW8IBQvDmz7kV5P8/2sjklrYCda13
	 +qYptsxI6fIGdtEisJPERUBH6o6ApcxZow8IE/NOzdoayFgK4fJCsTjEo2ctcImbft
	 8jz8/v2ISYuMfJm/b3du/NIBbrCr+zgJClRXPiku3+kwXFlz8k8lMhQevy6tzTt8Ic
	 i4xRb0NsJoyfDoLY+/vu5h3NcVQOVdhLlUbNKqbatoMirjZ+v/EBxDIiPxpM3OjVJq
	 9zaEl8mlWjAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE531C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666506276.7346.5417813741873857323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612c6be3c130b908edadde785c3b29d2742687290cd9c155ef024331f47e446a
Date: Sat, 25 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716665062
