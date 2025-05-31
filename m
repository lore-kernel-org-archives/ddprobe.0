Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCD97262C
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748673594; cv=none; b=VTfMj5FICycBLJd7zXi7o6UBihgCzXVEAtbNeqAE9XkW+midN94EvK3ddgYEd2dYk57D0oWbxyrilhR4usg+6BDwo1PYG2LUK32RCUDSPo5r2VlzVT9AQUFFtMUZSW8le8jVHICcyjdElE8pEkLOkiCCt2v4x2+/8YBCoG06YpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748673594; c=relaxed/simple;
	bh=AOgmKU8dCBaHgrymngLnjKQ8wyfwvtkTOxuTd3uQeI0=;
	h=To:Subject:From:Message-Id:Date; b=eIU1/SwpUXb24+1FI/SkOSAd5xyhtMr8KFJYQtVBDzJDKNW1VfP2Nmm331IPEoSHGlSKzqSxsMGkIQHwNKausj3AHedBe3vQwmKakwF5uBqHGoEqD2sOqQWX86HVIoGuzSN0Tp7oWuThGRIy98HFK0PnZDUD5KQqOjhLM00cFgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD89AutD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD89AutD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CA3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748673593;
	bh=AOgmKU8dCBaHgrymngLnjKQ8wyfwvtkTOxuTd3uQeI0=;
	h=To:Subject:From:Date:From;
	b=RD89AutDjRFVocqRL0nvC4/Y9rWhIXaedqIj+pqthhnUYWxqIA4uzpFnOv6h2pAkW
	 6ZhonhQperFLKSR6H1wVv99hRBkjeZiMSJtCSiMrBHkDo6jjzIYjHW+ZwQuXlEEYa9
	 O37XRG/TJaGJSq0jidk0JSIcXUwuG1V8t7ZLKjHxRX9V8nIH7RNmm56REmMVOzEXZD
	 5QvpKlUPYBGjM2x6rSZbUMKWrPSAUvpZ8c/rJeFLcKllqfim08zX8Xx7Gpg2SlGZTl
	 NPstKNhXVF0gsg7jJEolYDVmQCvqMKjeFWK7SJeovj/CsUQ14yrnVH28u5kH5d3MnY
	 DedwgkbIe78FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C0C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867359358.17645.4318199064654171606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45889c418b899466ddd3beb35ad2f7fe4b4e150cede1e348c67a0d81a3a1137d
Date: Sat, 31 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748673593
