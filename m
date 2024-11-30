Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297421A255A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732989954; cv=none; b=eZP3Lpg3/KQsiVxA7fQZazwDzrqQmBPrQtCfomZrHnMYsTB239XsKCiLM+6JCfLP1KcGMpkZ7/xcR8M5tXccbNTKP1YR+Q2dnLJYhk3iXMcL9Oi2WrimjEDqk4/CGzeovYkT7bSrPPW9wPmaFxPN4A/quYaEEQeoYA3+W6/88nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732989954; c=relaxed/simple;
	bh=LwNoExS26ASsCtfXvRG6a3UWQZFDPw0jwezM9ATEQEw=;
	h=To:Subject:From:Message-Id:Date; b=XIfsL269FElUNKh2rVNMWCLGNI+Rx65Qdok8Wh+XDVt0DR7/Yc38pf1Uxf5QMd3/WLTaiKqxjCtz+G+14RBPJ+QCzVxx1mz633/ckM0aUzVyPBCcCKXtkNgZn4N+6gOR2ANaqFEHibuwHpUWiaer3mHGh9agVWkMLPIKIyYZTBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRi/TqI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRi/TqI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A3C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732989953;
	bh=LwNoExS26ASsCtfXvRG6a3UWQZFDPw0jwezM9ATEQEw=;
	h=To:Subject:From:Date:From;
	b=MRi/TqI6r+3dsZLRw9RB8po3r9RBGGnkxRkgUrJyOQH3z41EmnLzS0u0IPsSd/atX
	 ftLjNqxQes+VQRHjPYXLYOP8ogV2skG65c/9t9c6PRHlg6WmhWE35I2GKivPSup3c7
	 +MKY4h7aCeYUXpJeyMcyVojHYlDTefXqs/x+AGiRu0wrW6OOtKFaZeRs6OwBMnXL+8
	 ceCingzdNgprJHvSNx9sjkLoFwxFTsrggmLLiO7Dv0i1WT8at48vPMzRkp9oZJO473
	 IQeUQFYQwT5qydKrn7F6SWeXS6Yp9BkWSJkEpG2TOiqUadte0W8ea5COC27mdEttmH
	 eueqyPtplXPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C82D7360C
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298995358.7195.8658717474777573344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00fecacbb621311630fb45b08a51864f043501a21a43a4e11274ae5d530701d
Date: Sat, 30 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732989953
