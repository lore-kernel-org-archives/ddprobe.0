Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F72629E0F4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756121394; cv=none; b=BjZbyVsJlSZQGrhm7ZdJxg1nFKHFdtNeXq0DPjNtvsza75thDHcWEEpQMpuaZEzDJpxTAvszqUd/JmDiXDJOBowlGerwSl22G2yel+z+F0e/i5uFX9rihRRTxSqmhUpyDotoR+wYKGnCNlTrZcLIPrUJDC1Q9i1azwewPxJLt2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756121394; c=relaxed/simple;
	bh=zBZyoNB+IF1RyMPPqhiEHfNeUBweWDttkMbJffQ87HQ=;
	h=To:Subject:From:Message-Id:Date; b=KowulwG6xk9ukGi/9sNiJGJ8Vh0TL6wWNHe2xyXFtDA36UNn8t9OUB78CezRxMf34k4gQDnZMbZ/SWSt/6iSWKdZF63moOncwln/1/oPdOyKuTxHlgSK3hNDbp/s8k31ERSqwstWiLo85ckphFhXQftYRvKWmiKtakwuwZu9p1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLUtP17D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLUtP17D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0230C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756121393;
	bh=zBZyoNB+IF1RyMPPqhiEHfNeUBweWDttkMbJffQ87HQ=;
	h=To:Subject:From:Date:From;
	b=FLUtP17DrZEosX2zbuqcYz5pbLlqh6IjOXTjcUIXbFJFLFtCCli8CSz48H+OR0PsZ
	 FaAmgKaPujey1+7WqekUG01S9fJAMaEseYhSRlKrvc+ko/KH2uLVdiOYKarLNVfI9o
	 /Dx+ceGsz29bOnmu7wwN4qoutUjhDB9rdbzRhxdtsmD7fde7ISMs42W7gA+nrMOAYy
	 0Ao8Cguz+89gNLz7d6JtjfEYAXRMyZjMsDrf9PMy2Nnbj8PCmjvx7bUpRFm4jZ84sF
	 sbZoRibzu+9TsWCSNB2GUQvzJVt7xWjZFbnjLcsotDpPk2mAvVnbsujGLXzNr8IJy6
	 9/OghhtS1U42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F458CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612139357.30251.16024687375675227441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c61e8c24c1e6c3e87c28cf5940605b4af577967bf80a61c10c67ea6bde801b
Date: Mon, 25 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756121393
