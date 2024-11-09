Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2980229CF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731171954; cv=none; b=jchlaAxXANfpuGrUf/kXEFJL1DOb7XaWGHSTgHnEkIx/9mvP+O+3VPXcLshE101KK9rioOcJpBsswlnY3ZSOVFKsu9jq0CM7Gl5cpYd24MtWiSECKxhY5aeaVsn0jazPTxjjhn0dPQQ8hw3ZB0X1MPwjuWC3psYeMxA6m66udcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731171954; c=relaxed/simple;
	bh=MsILFlykN46tE9RaEAcVsGff+l1Y4r3gM3pAPwLJo28=;
	h=To:Subject:From:Message-Id:Date; b=YVe3AAj1XuCCMq6ctjGxKnzLvBZ7R0T9B3j6/6e2eKVtkOwijDj1GvtCM6epj0LmfHKEcsf4JlBpFfNxqp6Fchy50N7U1pjs8HivDtQ9565mBCiEPYcR8sCLAFoa4kaIzdwP8LB5yJduacPz+3BX24aD4KEPHEKEq5IIglreob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlmOtnS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlmOtnS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A749DC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731171953;
	bh=MsILFlykN46tE9RaEAcVsGff+l1Y4r3gM3pAPwLJo28=;
	h=To:Subject:From:Date:From;
	b=tlmOtnS/pUASt4W4CnNMqdJu6ZxCGA747kcJ29dBAfdGQqChvwpJVwtZDZwuDdCea
	 z9lFI0O6gqme+44NXf5H4l1P0qqyFLWNvyL5ztRMPLPQgHAMu5u+04wURH2Pvmu34N
	 VOBnQhXHvEOLRtH4FZvUM2WZ2kECvOD0C0aiWoAdHtpfy1qzlMC8rbFcg+YeqonFaH
	 ab7poXECv7mb6+6VGid4xQQCxEUX1qYNcy5pUWMK5YytJ7XJEdfiPkJ/W/F74fFN1z
	 sqhzSrE64Gab8Is04ImBDo/kUgCeyhi1O/9lAvKm+AeZ93uDihcfUJecftvGTymB8n
	 CXrPrhNqERamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6FD5E376
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173117195359.5110.9689547142992102651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4921e17d996930ae81103196a0409ecd520fb33dd52b13a2e6a942d50d35a82e
Date: Sat, 09 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731171953
