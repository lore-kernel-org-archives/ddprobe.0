Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D11B221277
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755076794; cv=none; b=LAKmdsnZv1fyEfza+mX1tO8nnNElUZMbx1+zzBM5RbyskY5tQ+x8XvkQkKwsfaMJ2D1VWSvCueswGcqmp3bcDh8dDEeIa0C6awxdfIaEai/3q/hWj5rXH39vTk8zFF9LUqUN4aNa0GZ1BechePy2AH9qLbBK5enPr5fXRJXKgPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755076794; c=relaxed/simple;
	bh=tPKHMpjDmjCSCWsJRbpcVJcAtCyuNIEdKy+e/m9B7xY=;
	h=To:Subject:From:Message-Id:Date; b=odRtFNrJQjQ+rXAEaidT8pIVq9lIq3ca/Gd/+B+E+JQMDGcYMW/JwXYrpLSaPk/meoHM9pX7sRCyRw6FA60rJW49COm/OZ41M4PuueDASYHvyrJuiwNrJXbgk+/Ykb1Tg5/P8mo1z5MIvzpjqSLRQt5hqZzs25TDnxnL/BvjkIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/YsEtwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/YsEtwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755076793;
	bh=tPKHMpjDmjCSCWsJRbpcVJcAtCyuNIEdKy+e/m9B7xY=;
	h=To:Subject:From:Date:From;
	b=F/YsEtwWnSDPmmZcp5HQtNhsmhlFRbY7R+HFXFoEbupfPtZv3uKSjVd/+2LCNNftg
	 WHxcprLt5oNsUIxFsF4YwaS3LoOO+G3GkDpQJeJiuJEisfbzdLaU9utbnfDtIgvgMP
	 +2pEQAfXc4i6XSytoLJHEdvhlclClm+ciLH90jzah6+1kMtu43ava2hm/aoSurZKP6
	 YvV3t/wGXu4xiDz5MSUVhnAco4f9FN5vIFCDW9dSt2jfVlU8YAVFon8fknROHG9LeK
	 QWc40hCx3S1rxOj1UJ8CCO3jS4HpvqAKPpELW56V8kTATwBy2+/9aK90mCbjxVHb1D
	 j/I8i5drAv6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BBC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507679360.15226.16907750772167375072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921d518e9ae482777839925c7c444901120b2526e1dbd7fb6f96444cc10ef643
Date: Wed, 13 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755076793
