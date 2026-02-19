Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1DD32D7DA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771542294; cv=none; b=uj7KilagquBVk3iAMsN6xceCS0/WPt4spAkub+51yzzB4QOiUmGMj2tGEHAqjWa7b6GKZO+yUEuyiPWBQkYGAjJpxy2c8DCfdSeTYD0ozG/7rXYcfONIsanHrezMUs4MvUfAB2gBKc6U7NOFjRKLQaRWzZMHQ4r5jxUWzXFIPrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771542294; c=relaxed/simple;
	bh=cAbG7vrtD8Z4lhS6A+NsetXi0ptGlOoX1aBsgth8Ifc=;
	h=To:Subject:From:Message-Id:Date; b=POMROI/fkl3x9ydwztY8nEyQ05vXHCzpK6rWk7pchWkEPSQsfr755m69x3rPJhK5iRczJT+9omLXNLlcRxg6ctLAZmQXYFCC5JZ1ylhSznplHeGqHH4BZipNQv3TKBX/becG6lJxEzYaE6rvj6zPGerffz38b5m0I3VR5n8Lgw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhuusUjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhuusUjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5D1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771542293;
	bh=cAbG7vrtD8Z4lhS6A+NsetXi0ptGlOoX1aBsgth8Ifc=;
	h=To:Subject:From:Date:From;
	b=UhuusUjquFPE3t27HVfi78UU3CyFcI75fKfAJjcr6HbdkXhfY4Hi4GkTx51ZcA6PN
	 xzfn0arc+sR3MUhXhos01U4ZOZa+yRYUX7JyHBupqyarEIGjmKjEzPP6LzdmN89QTE
	 yX7Vj1m7lqyV7Nd2RP2oMPsS/F992Ydsgyo/T4qY/Fqgc083zju95pM4dVJNpKSJfC
	 g+MIwcQbTpbW3aZWo/vZxAKUNc8mhXL4AncQgUfvjzWOPACZa3Ho6EnsChh5zowVQ0
	 u0SEHypmgjWozmX2J4ZopZ2rrpGOotZNggRv+0f6m2AVtnpwGDz7HNgaFoEvioODPE
	 9NXKxmqB2SLoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40E6C531E3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154229369.9415.16047423454216852566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ce05343129564e842e7ceb2792d3c745443c9570817edcd6238b68ee07a02e
Date: Thu, 19 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771542293
