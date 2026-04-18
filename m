Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94981B78F3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776493653; cv=none; b=NxMEkro+t6I6B99Z75JbVgupF6G7euijbQ34Oav+4KNlUSsn3ODbQKWSvgqrMgPWKR/Brq1X1RvieCYQv/m1y3EzLH8sOoSa85TWcEWa2t4qVWO/bzoQKeGEpxp5DhkeiPTMzCBpFI0GV50kO/Wm8bBLIS66iMI/G646ofmBCNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776493653; c=relaxed/simple;
	bh=WwEpT0jxoLCw66hdLICov9Kcgggeo0OvPpUvza3qkjs=;
	h=To:Subject:From:Message-Id:Date; b=L90JAYOhtRtkFfTDHYQJcqmrEUycrB9omuxEIKtfDvtPn0z0UPVnmUAmFZYwMC1AlCSNEFsWGhJWk3WwN3EbatefM0a1Y79QhDaHHziYTSw28FhqMk4Wmgg8NssbRgF+NA6Hd3n840sNWLeZG9YwvKnYxnmL5AiDtuAJQ5b2ph8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ1Wj2A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ1Wj2A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBE2C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776493653;
	bh=WwEpT0jxoLCw66hdLICov9Kcgggeo0OvPpUvza3qkjs=;
	h=To:Subject:From:Date:From;
	b=VJ1Wj2A98/W2n5VsojkJ94ZUP6AbbCEIXtrR/QzbAbkcRu8ao1YUm7w/mmC6R6BCf
	 62eHCj5qLwDMqKt1oLyWmpwbVtYgI8neugLB2GKeZhxH/xu8RmhKfMN5tEW5ku9EI7
	 BocKEJVm3LGRgVyfNhnlaA6KrssgnYCu7/XdLI/FVKLLG5e0lh4HUKeGb1FOquChLX
	 Qi+/nr1hhzVDss6jDzNHW495Sn0l0mY+ctnm9Ojn9UZgBVKTxoS6bUnOugBQtmMW+y
	 FK69JfkVPx5+WjPoql8ngotRrvi6H+iMSzsycSDlPf1Ke7OA1wu012ARM5u4vmGWIn
	 4Va8bc8Eq/qeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCB8F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649365368.4245.5860522993694804452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69ff0df7ddedd2c83308d8407c9ef6db335cb3a2442b0404ce379573c87cd5e
Date: Sat, 18 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776493653
