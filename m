Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8CF8BF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740871734; cv=none; b=UJXVhg7QcnO2SiEQY6ucveqORqfIubboEvpjVp3oP8FpuPZZsmFpyr95lwQ2UGfrkS3h2AuPclgXpyhdlz5vHNJKAme4nQaZK9F2uTVchk76VjhKspM5ywl8zqYrEnckCRsxEmU2GfCdImSFi9wygKMGMEfzB+LzsRGX7SgnTBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740871734; c=relaxed/simple;
	bh=kq8CZbAqaoE4TGJ6YuPFuAijzWsQzRtPAt8qX7tPMtw=;
	h=To:Subject:From:Message-Id:Date; b=gShRT4v4xxJtWgzYBrarVoykb5EXN6B0E1orlbd+EgQKOlO+2W+MQI+XCuArYAjc0WkmprEW54vgX1DN7N/1jSV9Fu9Lv/q0EXPyGMnffDTk2VMhHaPZdaFSH5SCYpD/MXfw0B+Ul0gu4s7eZ60fjGM2mP1zpdrsKyTxZC3dyTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUmASlsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUmASlsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43ACC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740871733;
	bh=kq8CZbAqaoE4TGJ6YuPFuAijzWsQzRtPAt8qX7tPMtw=;
	h=To:Subject:From:Date:From;
	b=IUmASlsgE+CJpE0qVymBbAKZ3+XoTNCjW+GpEBeuxgb7rleJ2Fkk+sV28BH7sy2/y
	 4fqHyaCQahkIkynsHZcVMFJHpxJC3o7uePdvpCDTFMa/bqxQRRdW5YmODQx6ydsNjE
	 /0Bt8IFCrRmONAlFfBpL8LGmsFDdYWEViCyRx/yzjQswZPZ3J6HFToK0uA506tZfY4
	 FsxRzPrElQRVstWN42OW68s9UX+xexg0bFYuqwGD+oZRVG3kCthQgQ+YfEyJMu0uQ1
	 LBgeEvFOGNssBm6ruVFmVnGzBB3uVx64ZckMAzcymV18SbPFZuzH2eehFZkzyasG1M
	 NGAxiwkkWYrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A063BC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087173362.11204.15212490117082245356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbab9c829a835e6a36dde52e44f536e0864d748b775e2fea2c8bd2ee8d88a04
Date: Sat, 01 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740871733
