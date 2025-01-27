Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437771FCCF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737968154; cv=none; b=EniwpMDhhL/1fG7N28dIowC+mUwoE8CLPczW8R4iMhFHn+JaV5RnsxARgIyvdRUnprRJp8m2gvIOhbeMIGxOXaE4v/wZMH7V4zgdMryTilEBKxb8dGf0zfhsouE3MbtJuvoplEAQ/nHgliGTs1DIFNNEvRHXM2107G6Swx1LJxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737968154; c=relaxed/simple;
	bh=kWFsouxua6zInvueq+rHxb12WkOAUCQrS/eXeBSHozM=;
	h=To:Subject:From:Message-Id:Date; b=nz7w5oGjggty1RxE2vrdNGr3z7L7aCGAsjMnNHc2VhMmDQlI6bjEluCQGxcmLn9fGnvaC0+EcXfl1eP/8YpoeLKIFb/5s0Lzm4OI6iYYBh3KSRp26IDGPMDLa7CyP0oHetvMWpHgiBLsSUDw8+TCR5lTdN8PA/HXH84hVv5pQnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jd0xZtdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jd0xZtdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA0C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737968153;
	bh=kWFsouxua6zInvueq+rHxb12WkOAUCQrS/eXeBSHozM=;
	h=To:Subject:From:Date:From;
	b=jd0xZtdqEF0ZJ4VaANKrNCqpV/Di1mSzKR4BeByBK1zI6P8s1t7v3gQC1SZPFZYU8
	 CJjpTwkYt7vZ1z3DQrcqhCORfBNPJk/VtvYytj+QlugueBOKJhlxP9c3zQOFZ47Pe5
	 zUgorkmQRVTxOpZlTa/wED34a2Txr+ENmERa1zuigbVeZ7Mv4uONZQX5DYVa8urPm1
	 GGUcMrnc9/6M54kAdY7hvCygfK0ncLLz8TifK24vkq8/uxcW1VmWXmcJF8OTQbsOUU
	 Ts1AOrAcaA8ApeDgJUfoDhP/IeNORuQgObTvbxixk+nL4TLntfvJR2FrGPvalDD9EX
	 7Qz9by6rYVNQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7AC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796815358.25139.8867598473328782250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faab949e79eb076c0ee7ee78d0249ce4af31916a0a51aecca5bdd27335bfb68d
Date: Mon, 27 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737968153
