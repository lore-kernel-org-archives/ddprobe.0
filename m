Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDFD1804A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719822263; cv=none; b=NdodEFJvaY+qNWbkJj5JBKvJz5LfeRROJ5msbVVqC9FszU3pwfrH0jhoubqJ0cHJycPoCwFJAltXLqSkL60bE+rv1awt23GzGnS7UQpyKS99vDAQtyUQKTwVxJp2fPGS08tqyd0ewzAo8g4LjpvFEbktlS/13Fxyg1DRD95NpJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719822263; c=relaxed/simple;
	bh=HVK9qBOR3l6JnRTDy68u97qMywMDWIKr+5CUh8I66as=;
	h=To:Subject:From:Message-Id:Date; b=mC8LBECymCTNdJbjEJLrnlUOwF6OYNecnl7KZ5HAsPYww2ebGfPn7M6u9o0AA78jLRDJcaFldKOxKAFqj5yIOIMdU49eaomiUgDiH77zgYE71+UOSvP3HtvsD48pOcI90dKp7SWJIcHVwqDxRC2l63GUFUk3SF5mVGC4rHA8edQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msqqz2Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msqqz2Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0A0C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719822263;
	bh=HVK9qBOR3l6JnRTDy68u97qMywMDWIKr+5CUh8I66as=;
	h=To:Subject:From:Date:From;
	b=Msqqz2LuiWf5CB5ioU5nExC8b9JB1JQgSEhf4VgXD4reUwxQYli4u1xK4eqDZQVcr
	 mp1l8Nv5m0Sotg7IUZa55HvYmgpt8upfuZMnvY+m+Ce8rJSLpkKUGPRLliezT0n9T4
	 AR1SzVN5G26FMRhOu9fIdBot1wSHJLcJK78gpoHIRlL8fRVkZb6rfo15AFcy8js8Xq
	 kcgP/Kpor+k43AZcj3NnjglcROL3Frl3MVP1p1abdqiIDeSjrg9k9G24OBiy4E7ZPi
	 HdNl7xfZRpAVGlgxS7qdsPv0pWDkcWIbWBh7X1HYgow+A6vB0kUTfq1o3UNJtsZ6k8
	 ysur2faYjNAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D42C0C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982226285.9443.28995335425681830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5ee80a137ab96550dd51cba6b1d1d05ca5ec8f4df13e194216872660096935
Date: Mon, 01 Jul 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719822262
