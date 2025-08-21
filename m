Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA782EACEF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755764393; cv=none; b=Sg9qqUmj74hTpwjVH0OKZigmQ9mHWpA9Ubpc25Cax9UJGuRO11gOnu/y1htEEwRsN1OcjjghAuidqb1akwE6b4BZIfiyX0SqNbt1cjTsdclK46LsHoOmaEyN1fZb0N9GDkq5HwSJASJ/8WSYIwfNalxFjXk6AV/CnAQfglXTXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755764393; c=relaxed/simple;
	bh=QIYOqV29TboWqEArGUlOAu5x6BH5Xvv40+YKArEn74U=;
	h=To:Subject:From:Message-Id:Date; b=JMcIfxQNoNDfCreLCNHF+92ghqpJxtLpun8xJINbMP1TwuHRpepCYrb3yO1DYbI6hUjOvxSP1nGwBjmlp1r5BR8HRsdkXC0RksEUxPXntrTwa68YVJZ9ftrNs5HbPhC2psRmf4ZKSca/SGysTKuUkJjk2FcDUSMJznpuC4AHtGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8R4ac5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8R4ac5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF78C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755764393;
	bh=QIYOqV29TboWqEArGUlOAu5x6BH5Xvv40+YKArEn74U=;
	h=To:Subject:From:Date:From;
	b=g8R4ac5KMhSPApYL1bw8F9d3gGaP32Dsk+FdYNg38lWeCSzcLQJZDa+FbbN5tgNyF
	 eCv2RWibcwSP6cPDl7wZGnP7+Atmm2BfVLleWi5dFAZtWQdyahd56XlfOE5un2I+Wc
	 p+m8uSYWd++NaLac/vHHBR12XGx6X0lWlBatcCtODIgUAs3mkLvsWB5iQHtt2x1Pb4
	 hG3Anov29a0w5VUIlQayeMmEgVYnCz62sO8I6N0n8yiIovtIWJcyVXqaNXpXTjSS3X
	 QiruMFSnyGYOUlDY1bmJs54mSCznWiz1kyft4ob9Ehpm6JMg+wm8nfUX0nNKLoZP3N
	 v6tWUCNaswiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F166CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576439357.12675.2875544083685793496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3ddb3390ab03d39f9e44d233d4f6577db14005abd89e6905666fe484bf4e5a
Date: Thu, 21 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755764393
