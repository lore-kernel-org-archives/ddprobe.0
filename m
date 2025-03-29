Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014E79D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743247194; cv=none; b=DQZ9wiTOIQiXSuU+eWY+X3o6PdRX6jIve4ofvP1X+wnrM64wyfjQLl3eOXIGPT7jPxSOqz0QjaQZfOGr87kVN87izftBCF3mB9B/FBI1qR8aJhv1W01SdV+UVyKJVkP9p1hf6RJl5ukF2gSMc8W89wkJjehaSrHMCoELyN6O7+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743247194; c=relaxed/simple;
	bh=VH1DOFtLjvOTOPkMiKIMTBWQ6hSWFQF+/E/7SxCVpIs=;
	h=To:Subject:From:Message-Id:Date; b=cqUyeNgshHA3jhTH/dTZJceyRAesx41lJuu6cm9nqsqcsLPsImuUX/Wbo8ZhQ72izQmA5hiNK3H+pqBotoSqgiqh1yP4OcNAcQzJpfPaJTroLcuTRjfutqHJfxmJooZxbozQUPzd2vMZMYKp3a+OJqaxHX4f3MtoFJG8/F/d/og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBTNTS8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBTNTS8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B805EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743247193;
	bh=VH1DOFtLjvOTOPkMiKIMTBWQ6hSWFQF+/E/7SxCVpIs=;
	h=To:Subject:From:Date:From;
	b=iBTNTS8WTuegX2PINSqqmDUMItvp1jV+UdFF3rKW+iu1FZHajJ2pXbd7rhYI14p9+
	 pWO2cIWlYlbClWCMPCSiurYExys6Ji70wjx/+QrHODjvcv/rlLqJQN6Oyf4hIb90Jk
	 2F+edX9/uOzlCbOhQelSJYg516BnwbrE66DXtBDXqqlIuX/eWO1Qw9JrIUuT5u8/Z4
	 Theq0WcYKVDes2cmBLuW0D2dQkulBVIcm816UQxYnFrHQE6jAMKshvtsG+Lpj1K8kA
	 YGIEqhPwRWloMLlVOvNEpSpByH838zh25OOx7lEokMf/2EbOHRgKS1Knu1bg4Ac8NU
	 1xmIRoDfWYyjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F10C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324719365.12527.7616022514081274927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188a3ece8fe6293b0523c15a89054d3c3b84ea85aa6aa0bc014cb31e910d1e91
Date: Sat, 29 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743247193
