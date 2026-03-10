Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41FE3A3821
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158094; cv=none; b=YXrrtEkvhmXDSLsdfipJxs6tJWJBg/tGLevEc2d18hs/YhmX0Iecc2OOYHo0G+OKLjIcQajhiqFflWAhnVbOaubJY1Cp1TylzwbsxBNBia5+Ysz8pmbf1l4mgFxTbGl91E/PN2flguP14ebT2uBX6FNI6yCLLMMuDkaho9KfWeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158094; c=relaxed/simple;
	bh=tq7fSewDkZ5TjPaR3A1t9DoGe6Dkzrsr302ikxK8h4w=;
	h=To:Subject:From:Message-Id:Date; b=Ah0JLrRzOArPkTt/0vWU587mrCibqqTIWgf7Fw1Bo1tzWhdHMl0lOA/JZQ5WaYlAGnW70kldXdYdtm8E8AiwoqchomyVHG2mdICExMqQWJf+WexZT0zh74RDOaJ3up7Gr0qJIzBwzoaxeRt6tpTmmSeBWE8i9bX7r5CPf/VB4pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y86/SvJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y86/SvJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063EC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773158093;
	bh=tq7fSewDkZ5TjPaR3A1t9DoGe6Dkzrsr302ikxK8h4w=;
	h=To:Subject:From:Date:From;
	b=Y86/SvJZrzz3eWi/odUIa2OY08YcPt95JWF/2FLS04TnSGyzyOtWnbmOalZwvFWqg
	 EhOJd74Qcty2sXVZzVb0abPcVnMZZG2gSQmq+KnmzVEXnpBktiilnSBaiJ8RLQSdL+
	 9IBByOy8azCVBoCs8N8/huIh5qbDZyIhS+lKgh6alElAWo6TzTS9ThjF22a4Eai6pT
	 yGmoUBrhb5l9lCWfGR0f5PDcIrrd6M0TMOtKSUiIDYkI2zw/xevJqlKpG1AW50ppSp
	 yHQTD+0yjxIvMQLl5dlJO9C3WSGupZFzj0SvQdGVRG9NHr+YB+XTvA1NP0tDNiiQVN
	 pDyHS5uEO3iNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EBEB1076
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315809358.21358.15174083973470643676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc2c9247928e62ee379c6905d0f4cc95ef54c8f502ffeecd588c9dfd359b6de
Date: Tue, 10 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773158093
