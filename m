Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9854AEEF
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716275543; cv=none; b=tckCCrpp2aWUEdCPkPOW8GggUKMaDgpbGJB09BhwRQ4QCmI0gs13nI69LdkZac4V9nulgrAhcIpyxo/T8OCKeqyKgxl+jeLhoekDtB6s6Y0X0DfBPl3INKNAqew4JouKGGlC2RX7XZWkKpocDAEX357jB0yKHLvuXxfc3GobnBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716275543; c=relaxed/simple;
	bh=0Yhpjq4bX6+lz0TDfNHIi3G8EqDihbRs8FO5I5grEsg=;
	h=To:Subject:From:Message-Id:Date; b=dFBQlA7ZID2JYsqVhgmhXh+4ukZq7EcY5Gp2K6oHBQ2MSH4MJ/mPMgAz/UPVIPcaf3Ek1TgCqUJgWf55R9Bgrwg68xMySLTpzCv+F4Om/AlSPmSsMhekKHifhWPixMAy4R+JpBX9bYSaaEViLulfkCLVthXTLrRgftyfQACb8bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeTQYXJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeTQYXJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6239C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716275542;
	bh=0Yhpjq4bX6+lz0TDfNHIi3G8EqDihbRs8FO5I5grEsg=;
	h=To:Subject:From:Date:From;
	b=DeTQYXJ4VQ5SbeIRMVhoKU8aYQQdGnUH6Sh1M0TdvSw9eMitrKB5FXw6Zn9QjMiMW
	 7G0ah7fOrO+gWCd3Zm7QvUBVWsrnSXf/WkphRYV20EtbbEHIi69CDLrZK/ISJtbBNH
	 yKFEM+JqCCYHIHDtqtsX4/LKVruzEHwYnyHGkEwTE+iPKhwXO+1cUBKYUAgkE67Rjm
	 Ph8jBuSpS5iUDtic0dVELVjrkWbvemKr/lpQbiuVMRI+D3vhFCk17iKU1ONEI+fdtC
	 ijmyFol8qlNQEdbu5Ruw8bSfqqjT80enIlZaxDTah1Korjl7UVVnWuCyamh2EWZTMk
	 nRI9L86uGCUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25A7C25B75
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627554278.10371.14523551219654818003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1aa81e1c0f629eff53c5bf5ae6c8ac043efed888f3014786e34a9b4306f879
Date: Tue, 21 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716275542
