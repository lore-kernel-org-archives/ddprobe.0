Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA828E0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775306734; cv=none; b=o+RS072OV5Gf39KIM1+7Z/z08CSZGWbDzdpMBckMAeybnyPp6ABC183nAiDjLOm3J/0J3c5bIZfgeAuEhDvp8p1gNeuqIjY4qVIBagqQvlxkpwqO4V+Q/xbIRN5zmLPUPFeZymonLldb+LBGtkUDEnfU0ofSP79gxZku2I9WsqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775306734; c=relaxed/simple;
	bh=Q6G99e3W4YHA2yAiP/j1EdTojxcsedgW2HWdPwh/nTA=;
	h=To:Subject:From:Message-Id:Date; b=q2mrd6vozjsn3NjMZuR13WU7CT3hgUsiJder5zei5nxMKZRzzwE6+GzzC5CVf7sf4rIeVYcp0GNCMvmTTjhTctdp9PySy5Jje6wy2aulK4+2y0YbiT6ueg8tEfDdg/X+ZD6dVzM/K/6oms9qp5GX8pG1JSwwBThoJW3s/smfLzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDo7fizf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDo7fizf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC485C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775306733;
	bh=Q6G99e3W4YHA2yAiP/j1EdTojxcsedgW2HWdPwh/nTA=;
	h=To:Subject:From:Date:From;
	b=uDo7fizfDjrU58WFa5VG/0e90YuRN/ibbtlxkyGR8Dk6fhR3dm5Sp2NSrP4EqqG/i
	 oybr+t3cER1VjnIVXmZ0CUtFHHzAG3TOo/sAJbAEGCB3LMaGX9DwaEFGkilO9lmN7/
	 /lXM+Wj2SirsKLsQZxDqNtMpUNbC3/vfj08yJuw/rqeD67tcinx44qK2qpXAQaTm9B
	 B0sOcwYa5Is0I6pCc7pp4LEl2eAsV+GfgLlp7z440XlGxS+2m7JU6Nq/T78SD675zw
	 mEpOQw+HwWWVcKvco/bbPo4kR5MLGGqz5Uw/oY3Vf8Z9Cv3LcQoeJv/1MLtVXtwCch
	 j/yOkTMmxFxxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9846E88D99
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530673368.7519.10899584086981873997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0f9661d9b14a1076d00e21c8bf03d2fa7cef9b277fb5f947651cb7a582c704
Date: Sat, 04 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775306733
