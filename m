Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2627C4C6E
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762096794; cv=none; b=YaiApsgJ1bNfPyJ3z5FKmv84CwLC5rkJov4dnpRCgKGowdcmSaruoJhWJ6I1ATBkRxlZsMGxtk60brsSekunrXFLDhl/WwwTClVc7nN8CinzRig/0u+7/7yFTdh6zVO2WEPcPFDmQFZfbgPRj+QpjQyLrzfkPmtRamH3+btiqlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762096794; c=relaxed/simple;
	bh=UDoNLKflUI12XjxAsTynP4D0qin5ThsYBNm6eE5w83A=;
	h=To:Subject:From:Message-Id:Date; b=IwdMVI1Y4y+fnVv1+7v3CfTH1xDSYZYksrkTsC/KKL7NxMU2ol9f89aa025Qsm92DjdRiG4vQL+NnQ78r+k2d4r5w7qcPkStgdVEbGEEkl91dQK/BAFh1yyERMV+jT8iaJODcl8oEaj/ilhHKOChUK6VXNtcgqa1dMuK1ZxNv9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/+f/3ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/+f/3ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762096793;
	bh=UDoNLKflUI12XjxAsTynP4D0qin5ThsYBNm6eE5w83A=;
	h=To:Subject:From:Date:From;
	b=s/+f/3haQdP0XXbsZqsFlNu6oVNcmllGxerq0w48CSp1nt5r+5NCnIAGxyXe0FqdO
	 vEX0fuFJFyKGeH3XopIs1shoifU3lyBAYOsDLObPI3Ak20Ln5j6cawpabvC3lxqR/H
	 IdMiNFfBROa+jqszHbvV3414VcfrdlAwvhPL+jheiPpnfL+y7ym3+DHC6nmH22PbKf
	 Uszc/hl7DbC3mxV9e2RI6EMduauwTY4yv/QHy7lU7UdZljJrpjGtkbJmSzKhyfdzlK
	 jaBLjAJemH7mNsp7eBekEtKfwO7iPOdpVJakDfpQ/0OFDHKPmTBtGsnAg1c830Li15
	 W89SoZcjzXOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97270CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209679358.19892.4503521361752741970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4024bef8be6fbad65eaf2a78c4eb2b4c9bcdb933b6c56fac7d28cf15b8702d98
Date: Sun, 02 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762096793
