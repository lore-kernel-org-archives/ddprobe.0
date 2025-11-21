Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF413E41A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763745114; cv=none; b=kkz0+hNXls8IgAKXF3NHGgRewV2ImybeHoMDTEVmzGvdvb3K1Olr9Dvo+jljFXr28GRUo/3xYTUJtiJYZazBPEhAW2E+3LDy5B33Wa7acOvFk2ZGATWm1kZPK6RS5txRqB7IgNIHCf3oT9r3vvyFdV/LGZICT2FjGnTTNI8VH6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763745114; c=relaxed/simple;
	bh=QrQb1PpQlT3/GsuUn/mSxdBzKjF3ZjfzlIJv2Z7jsjs=;
	h=To:Subject:From:Message-Id:Date; b=XwH/FVCvmn0Ajsfb529p8JhCUkaxEzKP4i2JvyD7ng/k2kwALlvt/1pQPPChJ14t+gxrAQ6dd6ctFuQapcjIziJhKtqRPF3J9eB7O/CutUl+0U6SvB9tNYC/QR5iApVwJEPBA+IQOkVs0kCRhF8CwMrTM0B74tLLaFQi881FcZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt54BgDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt54BgDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7199C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763745113;
	bh=QrQb1PpQlT3/GsuUn/mSxdBzKjF3ZjfzlIJv2Z7jsjs=;
	h=To:Subject:From:Date:From;
	b=Qt54BgDjb/h7tRl1U1KB6csdYP1f44OLjC5i5nReKoak8+OtCRbBkyT4zMI/YARB4
	 YZDyc6emgH4J2wuSIM9GTSzyO34sJKDDgBfu2hXG7WvnTjliSABHQ5PifxNY9NXK5n
	 TeceLp6UJVajsSbaHmqHSbrrLfg6GD+Ymzm/ML1DrC6TQcH1c+dXxO7URDj1SYL85W
	 B4T9nplavsSl5EA+AZFPlf+3dp1Z+Yt9vvNRzW6wOnEtfMQG6NoBbCMJOW73/EfMnq
	 5XmiaU5PkwO4x18lpgLsF90xyKDGSy4/JhdeLLS+/LM9iRP4sxWKdE6u2GT/T9DVtZ
	 BB0MWih/fCYhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95887CFC28C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374511360.21565.15788637833408649670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2193615e811109c6b9ae17e12b6f9c84613879f5f27f129dcdf1a6c4f7df1b4
Date: Fri, 21 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763745113
