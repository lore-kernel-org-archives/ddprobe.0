Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F74F1A262A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757398194; cv=none; b=VK7/msEUFI+sdA2+y9IoUEspe7Bh3n6B1tBjOt3WiREw0Cr6n8y6bEvhvn4NG/VeHwV2XtJ386jkbyUGfydu8EsNOlQfmCgWk92XDg6ShXluCGr8lF/NMg1me9TSV8IXHY1AoN/DkQ29DauQxzoSShwYU4nPXObEjRDQtvAVamI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757398194; c=relaxed/simple;
	bh=JFfeyQPMeR0cHce9vlR1Xdc6morSqA8HaxNIcWjR/kA=;
	h=To:Subject:From:Message-Id:Date; b=LzEpreR+QCpn4/V2wAVPoSIuB80yZrWxtWdWXeGV2T4QNsgMF9zmGu3NyI495Z9LtQUcIR8wd/+wUspnyfx2btrc2Ok3HM82lylra8juXfw3yDbIEhVzUtxAJgqMLq7qManmU76LcLsCM7BEye2fKSjnNlDlisa/8jUvFR8iZfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1EAsm1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1EAsm1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A441AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757398193;
	bh=JFfeyQPMeR0cHce9vlR1Xdc6morSqA8HaxNIcWjR/kA=;
	h=To:Subject:From:Date:From;
	b=X1EAsm1UMskdJATYNDbrcDTp3iba1JDXtuTM8oMsIpvh/lvQDAFNQSyCmyDxFpWi8
	 4dJy9LPMmUdzn1WJblId7hkq+QWEONpVD15WrWNL1Fj6nAcGzaxAi7TLWjrN2v43/y
	 exRYF/Fhoxh4O+0ITrQK5dzUrXFe06vyYdlQVQ2AhJXvUqehnj8L8na29Yc1Qh0lVD
	 xNQv2Lfhle1XQDISxeaj9UtffIDoVUrjgodGBiL4vk5u29XKq+cSfRmL+mRsNH591r
	 mfW4REaNfWe3grfzjhMLfnPtAx1Kb75ZvbSfjJQUxreaSYiBb97cEBehK2YnA6UQvu
	 JquLSGIJcC/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABDCAC585
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739819357.16962.6380133724160563724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d23300b385c34702a3d3400f5fa4e1f59ea97ea11f4ca31666213af8b49ff8
Date: Tue, 09 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757398193
