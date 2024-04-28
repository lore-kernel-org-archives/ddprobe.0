Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8842AAC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714304543; cv=none; b=AVuy2kWJo8YKSyfTchY7AtT6DIAFrwN1seFwyYQuWv26K0yy87+8mfdQeA+WBWhSQhbc2ZScmOn/0no15M2I6/WIwypMHD6ONZ89v4LH1rZNG1lWQK3ODTdstje3MXs1tjdK71U0HgLDW9rm+6FPh9iEHfTjs00RubOgHZ+QpeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714304543; c=relaxed/simple;
	bh=VriAWba1vkJ5allJhJaMJA6rhBbj4YipF4YDO2+RUwU=;
	h=To:Subject:From:Message-Id:Date; b=mCLlENU6eY8iBhvKic4zJugE4LjsH/xlGmhqxJBNZio6La5eEX4IMZSfDITF/WxbNOkJxclU2H7c/iXV1j/AO2uPYNuBSQB5/ZM7iifGJTq9VVz5ey7kDHehzkmF32mG14KuvlDEdeUKGhPrkXdbhMPGkkQ8t9Tcpsx08lAi7YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrRsANSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrRsANSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B2C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714304542;
	bh=VriAWba1vkJ5allJhJaMJA6rhBbj4YipF4YDO2+RUwU=;
	h=To:Subject:From:Date:From;
	b=QrRsANSCZLk/TN6BN28a3XA9SrMbU1NMPpDsRbF+cTQR+kFzUrJn+vUn0mo3CQbQL
	 Rp64M3Zliu3y75axzQL+XS2LY9tACUHV7tElHzJBeuoH3kcsPzTkzRasJ7Tc5s+4Be
	 GLXmYy/5mciEG1YWS7TaR5lfa3CyHytx8nPHLpzo4gel+KYUk0AcnwLP+Dl8MnECED
	 n76pAhMfQoDu/rRFL8yv9MW4XDF/BRuFWMwIQ1v5Dkn28yHzQX4Yv2RO4t6B4DmJ3d
	 Qt4MnWQyoQIEYWkT6x4OcJy7mejXAb3MlIaJGaKtW40UlWeJ2lIgynZRTb81yLrOFw
	 YsjT7l2x8b8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA297C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430454275.23017.11645843464938290369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b0310a48c2d54577fadf6c5c0a26de250ee5babdd5ec2aefbd3d35f07df87f
Date: Sun, 28 Apr 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714304542
