Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292462877E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760458794; cv=none; b=p5zPl/jNjMc1YysUHFpZ+RzccSrAaeop5WqQtsW57RGAwvnWlLYjfQjLBDuJn0LvHIpHcFcQpzgwrRBp7p9/CpuHzHGUsS3Kf0nFfHdI33XBTuYgUUINylfUKt5dcbUg05G1L2U8dq9q6ClerGru5uddzMHJGBVGokOX5lEuEro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760458794; c=relaxed/simple;
	bh=uMWONZZlFihkhoyz6RvLE32PdEjBJUIqfH4Cta7X6D4=;
	h=To:Subject:From:Message-Id:Date; b=qj96KocsTMz41Okcaq0flqrJ4Ji6FDEE22XaiXWLZSLl76xGj46FewujjJY2jSnAjpg3Ra2RBmEj86lffzAxGdBxbNxjuHdBq0KPMZN7lHlda+sF77TsZyPTNTDPZf3ixncoqheg7/dEAXszVHNxSQdIiPtHaser5YevH8oFKjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjZOuwdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjZOuwdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A317AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760458793;
	bh=uMWONZZlFihkhoyz6RvLE32PdEjBJUIqfH4Cta7X6D4=;
	h=To:Subject:From:Date:From;
	b=cjZOuwdpXhm1gECQXpsEsKpZO3S/kwRLmveLCyVAmuNmejo2SpYsgGtDTYi+uhArD
	 wlj9QedwRWdn5NUcFtEoHckqR86AkREIiedJ3Qj85vJx5PAyTS/hwdG2PdLtETWm7k
	 x/rjdoWKRdSEW9jajBbgjynueV7E82uVjCD6wtIdRHSVLEy7Dn0vYxZHXJnPt5o/Y7
	 8PYjksUJi549fXaFRwcN+MhpfEfcAVIgFHNg7Zvb4RjCF4AuJeQyJFOsCvNxJXt6MK
	 7WNFLDaYz5HFwEQKARp/LoiHQZ2xWZQAIwe6n/O/3yIyAyaPVaByHKubYbp+vqWJps
	 tfA6o20mAx5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B8CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045879357.8304.10427764067170363633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db10d359752c86b467204dd5c849dff3deae5793312d9f1063204efa15deac1
Date: Tue, 14 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760458793
