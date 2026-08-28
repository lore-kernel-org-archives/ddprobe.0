Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F4A44470E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787918435; cv=none; b=VKSyo9Le5Pf5ir155BXuYD1N8iizU+5JdLoBnN2Tdp3zb50qjj5uIUf8pZTlQcNBebVHDvOlt7+xC2KAnqb3FMERAEsbu39KsviH6jxQzHxPBcj+x6jWQ3MKhzDTr+IBFZUafipjj2P5ZPUlsqEgYnk+PoaMmHxht8/4hSifdDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787918435; c=relaxed/simple;
	bh=oY/KUW3/kIlqQ3cj94Xvr06pmnMtnumZneANn/ycNqU=;
	h=To:Subject:From:Message-Id:Date; b=dCwgN+aSLAIIxkL3HMb86f05C7X4smkA2wOlV9QgoJDWDs5qj6Bifd/wpeNe8+qpTZ8Fa5ZcMVUJ7ycdUORD29JOuFB42kkSnmTr+YFm2zfoA3qSlla0DrqP1t9AX2e/dimOEyPG04TaDfZg4lliy9ZFoyttbCxRzhc27x6vfmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD623Y3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD623Y3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E40C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787918433;
	bh=oY/KUW3/kIlqQ3cj94Xvr06pmnMtnumZneANn/ycNqU=;
	h=To:Subject:From:Date:From;
	b=TD623Y3jxwfm40e9XbPZ/x/PbD2o2kqbywiuw5xa7jkUkINeQHRyY0hylZfpJOM+G
	 PFgHsf5U4QdcDSJAlRVKF/kA3qawJToYVqr2lx2sn9M2UFeZoaw1es40BAMyLcdm0T
	 gLfhbozNYlKau2Up173OL5SrRsF1cAGCb3TIM3hx5fDjkWx8xRdLTL31DxbYbLdUkm
	 BYKuKRT3GsMXICTwS1wnAzF5te8aEPpiayfR6LyfaPzVhRsfK1EQEgODWaXkd2NfL5
	 w1s+CNUsXJYcElzpoTj+EbguVZMt/LS6/PPS4P9xKGxBANqHUvKasSwknRDzXBqKJk
	 RPQTcdQkB00/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F5DC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791843370.19045.4677188814602297961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d3aadc65230278571692e08f6849a78cdf26e56775eb7f8018e8a8e8869bde
Date: Fri, 28 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787918433
