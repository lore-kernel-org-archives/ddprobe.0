Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFA11F5616
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741073334; cv=none; b=lrWY8fBJcQxoE9c+QImrMj9b7dSj/VTKz5cGQoXTuH0I7BKVrAi8zydhL7S7Wk3MiLcQ+3NA4cKgoG9k6B32pMvQEfieCFSI2lBG6BisrJF5caUViSYdkxBYumMuL0+dL6QBm1tzbzXFMjnmjWNLy/MdJcQAJxjeOkhkM+93T8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741073334; c=relaxed/simple;
	bh=eCRv9byLov9q/JspZvCb1K2UPQkufqSVfjWvnsY8fRE=;
	h=To:Subject:From:Message-Id:Date; b=Z/ZE0BoZav0s5A9KAtusI/AvG0gYKh9z2LvP1IZICFyNUU7FBAytfFDsAD2Nm3g7hoAv5y4dJIlp2J2fLgM57tgCRDfM++E/Zp4sypsKWAb5MYrahAgLoHs6jjARP01ODSbQWiMlMYKlOhVjZcpaerAZ5dLjcaOzkiccu6MqnWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGBPElxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGBPElxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC0C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741073333;
	bh=eCRv9byLov9q/JspZvCb1K2UPQkufqSVfjWvnsY8fRE=;
	h=To:Subject:From:Date:From;
	b=qGBPElxF5YsfYiIk2y1C37MTHLGKj+/CaNM69qCjAD8qu1TtJS+8jKMAybsBo/ODk
	 kr+ZPAQ4X8KxnfRMMll6/G/Wu0k8TDUkAhilvCuJszh7T46zg2BaJoq7+bxmspCcLX
	 Sz8zfM0gCopSXGib6zH7Co2btSMLPDy7eyjE+FPvMBQw3p+EytIoUQPofVRJ/fI8Nt
	 pWC6CEUNEOnrxh+kXY6EjNVFefIt43BSctgjvjLrjWsnzXKtJr7K4x6IaP3YGbGd8K
	 WwRAKWah0NJBaStqRs07rRr624pGSyuLL8xZ3LOLjNlwbd9JKPEfgHaEyyu6mDziq0
	 qijY+kzG95dhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AAFC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107333359.29486.123716417233270841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e6b5d57e7fca225361efe6a5fee930b49a447e769fa167408285e31258d37e
Date: Tue, 04 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741073333
