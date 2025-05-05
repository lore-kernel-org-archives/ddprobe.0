Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120B13AF2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746467994; cv=none; b=RoVlnn3osTi8RhRIo9GTnk+VfDjwGrRi8nMN8mZGiwjsbzucAh5unbLAK5DbuBFkkb5blngIMAJHkxPJK1rh9ezkhqiMxy6POgpvPfKYv+U7eOY6YucOSfgj6OSmAxNjVQSRvOOZ1Jg46DG9ryGx/YRofb9sbv+BOF2Ws2vndWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746467994; c=relaxed/simple;
	bh=5To0NJr1CEC6ftbGFvFen2fluvtIhjrDBxR/UxkbxtE=;
	h=To:Subject:From:Message-Id:Date; b=I+Q3G6AnNN3VvOfBArsMQm3aZL3fJR5Qn7KiVvVILE150TK09RVDfgjWv0r5fBHsuivI3o4F/ZdiSycAeg2+8/wD3K73nSzTA+YuXgeY4qvUQTsJDac63WrF1SbMmRKJ4/nzHP+ayx+Tf1fKtE6kpeMZDlGoqaIQvS6xZXmRaik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lciLU1MP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lciLU1MP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746467993;
	bh=5To0NJr1CEC6ftbGFvFen2fluvtIhjrDBxR/UxkbxtE=;
	h=To:Subject:From:Date:From;
	b=lciLU1MPyK1vCHtMiCCq12Q4xmc1ua81qXD5pSwYumkBye2NDnUEgVTMwPBuEb+gJ
	 bxveX4Fc3e7G/QV2cD/syaIYQnxYNn7WgY/9M0BWf3DDwHM0rZ1yl3AxbTRR/90OWk
	 b5Dp0r0MkueMf7tPRxsEJs80PqemYJ6kQzJZj2c4wUxTOaqSmj9sR1yvjdkaTcUKLp
	 DAS+2a8sTwV4XQ3ArzB6jjilT10qykyPS6rKLXFa1NgI8DYPgc85byZ0ezMl00WdYY
	 GiJaCPbdQC1dB/shVdVoGR1uOfuWKd2lINAUAQuR3hwndWZEHTZh8tew5v00QpwRhj
	 bRFzO57/R6aeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ACC3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646799357.9066.44144574067608229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce76f5b778b2bd4919d75706637eeb05bf7017efa4ff62affbaeb696d687de1a
Date: Mon, 05 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746467993
