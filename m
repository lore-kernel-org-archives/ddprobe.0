Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379913A258
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765000974; cv=none; b=cLi095/smqtRpiL2ySNYuvol2yarIMNH6juypwEsDWDdhg+bSfwgW4FO0VjjYSK1XREej89wkqz8vewuHChAFGCMJVWERXuk73lhGPv5PsHKg1uJB+/xD6YKIVPpK3BKs5SQOM+Nj0z6pHdICVf6opRF2JPDEBfeVfvQYR2JaDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765000974; c=relaxed/simple;
	bh=1ZpIO4sBAHp1bFlaM3Q9qZqzQVQfajrAps2bD9gGJ5g=;
	h=To:Subject:From:Message-Id:Date; b=hqmYAyPMrwVhczZV8UeaNTJLapCYQT1YvJ0+KNDNTI76NBatJQsgahVvWbR5UnVZrj/l0WeDV7djc+HXkIhD2go+YuZ+UAHQeygepcgLOKTh+fjZb28/nGomnGRkAhnKMeLngBNvTOxgteelPRE635oUOTrXLyUXNC6EhKhYdfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTCqHhXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTCqHhXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD90C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765000973;
	bh=1ZpIO4sBAHp1bFlaM3Q9qZqzQVQfajrAps2bD9gGJ5g=;
	h=To:Subject:From:Date:From;
	b=gTCqHhXF4P8ZMbr0FgB8jHcOQcqP1H1i758C78XUXsuIxffkWFaxvJvZgLiZv6vW4
	 FikAUHcDCem9330ne9NkZYCw7ntM296siSkqc2bAzPVY4sJf+K+LM8K9rGI2z1vRc9
	 rTanfTKKa5zPs1tIEheolFsifrlWa13MVS2AjLpvYED9z0xsa/DFckemBbLf11C2je
	 pkLmIrDCqpW+UwV7rBzBsA3eSDXmTdNnafbNvKjCAstZA/YJMa64OBgB/FTVFry81K
	 S/2dPkfvzMIj1b1XeyVV6ixD6CZihHh13KSd8eQNXrBRlI78V+TYUoUYgI3jWoT+BV
	 AS6mcYLyF4GVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3DD3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500097358.26088.6945789697302427345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2976ffbd98037b7f3648b01ea84c1f22234864352aa3745bc6a9ee6d07a62b6
Date: Sat, 06 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765000973
