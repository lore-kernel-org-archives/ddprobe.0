Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA2337A4BB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768238633; cv=none; b=fiYhG1rYlDMxzrAcs98FKPMS2wKhZz06di3DA8CEy2/Y6dE17iGB5lUC2xdiQfg7PsMsRTeF2VX9bwjmegM42Lw7bBNn59A/kgKkLDOOgTGU0J+MaNA+L7mIFJEnJLtmv377KmA61srBuvJoo3ubYAP+RWdaTy26VvdqMI1XlpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768238633; c=relaxed/simple;
	bh=hFK22VzhSfZVU9UaF3niPHWsOWDT2yscVLWo7NGtnCU=;
	h=To:Subject:From:Message-Id:Date; b=cmxMV4Vb2Df8DREAVpbYZx+rnDOHjZH/0AcVpsRJ/s2QXjgHIkDkGJukF81+rcTAv23x97HBDPGRfMItuZB3praoluTE5A3PR2cx+1M7LoFpRHN8exfyd4eh6x7HjD7BqY8avJLjcVogKtByg/memDfQMJhHWVGBO0Ua3B8ksoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtXX6LxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtXX6LxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1522C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768238633;
	bh=hFK22VzhSfZVU9UaF3niPHWsOWDT2yscVLWo7NGtnCU=;
	h=To:Subject:From:Date:From;
	b=NtXX6LxWHc+xk9obzO8vs2KYNntZx/J4okVr0OGvWPTsi1UXLLQd7pQcOzIp1mkGv
	 OZqeZEz+hxx7sPZFv/wkmYibYKhbT2chOwprSjXMpI4Em+/1I10eEAaZI5R9BV5XQ/
	 1YkynW5NOg9mMySJE1KrrahXvdAKoCXsT9wekKIpkADOaw8CsFDLCILF7kcVz4C9s5
	 soSy+KFy2qAzIdI4UE6Xl71Fb6Dc3T8QX1cO3FbzcsfG3bP2Kg89Gen9unWwAnok3I
	 H6//Vns65Yl2mV2vJFr/HQHr554c6Srj7UDQYg6eYJrFXjsiPsVU3dq1Sl5WWb6or9
	 WxMzYB9EJ2kSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155DCF45B0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823863358.13030.10286240244651903843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6edbee67e6fff7ee9f0e8506c8e166212af2eb6b0a6fbed595655f0252e650
Date: Mon, 12 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768238633
