Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A601D89EF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780848874; cv=none; b=GovfRgXQuYm1U8/D2dVvV/IJB7q1Yovy7pnoOMH+Cflcgrrjd6rHSuojNbn2IDbqDzKier4fSbaBK0GRT5aLhAkoQli+Db5Ag824NNpMc3karqI41jtyAeew2FzC2S952kyGdMsnm/uXeJwceSsZ2sc62qX2yE7BrTYL77uoi7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780848874; c=relaxed/simple;
	bh=7J6hNSUsv1StnqS/jSJbonR+W8M57Q6CXUk+c+URnQ4=;
	h=To:Subject:From:Message-Id:Date; b=gJ2szrvWQy+uyN5qVyyz+lgtmMYJPICDGnsY2BlXECRm8aZp3i1Xi3NW2Q9PbQ7W5hoYeUVZM6w0738xAvzJT9/P/iRMX1MHTpmtTtiZho7b8HI5HNungDt9dl1iRIO+7nCG/2kFkyegyBkyIWploM8Xd/bsC5ueyBS0GvFPG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ovh48etw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ovh48etw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBABAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780848873;
	bh=7J6hNSUsv1StnqS/jSJbonR+W8M57Q6CXUk+c+URnQ4=;
	h=To:Subject:From:Date:From;
	b=Ovh48etwjtyz60s4aFqKRhV40i6kC8TXny4sFfZ7rMuQiL9Gyi3VxrVKDivW/xU5d
	 jLsTHHo4PbENbVe2ZbbLPnmssvj01MPY+36+ToUloJ4/yoAWrryBkxEseRJeVMav/B
	 ln2uWDL0eg53OnhkZyxhRhmf/zx3+rWy3KyForljh/TjIgj1zg/vW9FonnURWutznd
	 Yoyu3Q7THJCmAMc67ZqCTeukeTdSNaL8HfqOfFxeA1qr81OQwmCN01GtWKGNTtWW7G
	 lG86tBJTaFzzAdcUKrZiEIOfnLNgodmungivs5urnhvybpuv3X2Q1kzQt/9m0e1cWW
	 TW0mB6pb3NbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3680CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084887371.22011.11961839679201502455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ea27d6bdefeff58cb8774804c9ef280ce1c293d68cb6a6a6f6f0b7cceb7740
Date: Sun, 07 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780848873
