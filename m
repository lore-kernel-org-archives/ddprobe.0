Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D35854774
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778044054; cv=none; b=F6FHYX3+fRprxSaPLPuoHs/EZhGuUk/m+NSi57Kh7MPMhdpId3/YICZBqQwBn2V0NAABNhNrSsWmJdbvv4rPt4J+6eyT2+GG5VMe8JfIE8PNHp8Lw9XDXWeVGnWEfhBxwHNihKyTSXzrnoQIqLJML+nw6NRTjIvQmXyHQoNvJjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778044054; c=relaxed/simple;
	bh=I6HGvZ7DI3jR3JYulicSfTk1nYvF6PIWckCq/ZeEL+c=;
	h=To:Subject:From:Message-Id:Date; b=h3FolUGXcCK+Ars8RW+Pp1eTSV7UTCaCVyIEpFalaScfpuTwjuZ9P7iurAaXJdyMIO5siYIXtQt87NKw6uCmAr9jk87semzeRGnT0zMnraGUaZ0/UP/jCW3ujNNCSruCBzXisRJOeP8ze78l2k7JyHzuUuTWWkd+7OLQFS+7eyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9pPCY3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9pPCY3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3361C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778044053;
	bh=I6HGvZ7DI3jR3JYulicSfTk1nYvF6PIWckCq/ZeEL+c=;
	h=To:Subject:From:Date:From;
	b=p9pPCY3O2PPNa0CcFpLdzCxqZUR5mTZYodFsllFFTo8Q0RPZp9G3lJxTs6DUac6l5
	 9GE3aRknc3YStY42RScTnMnXY8QR+wD86YJAAH4ZiRLJ8GXHJcrtHtSlk6w/BQuVP7
	 MnqocUrZRbGBK3wXOANuLukyu2AIhnSzeGEm5FD2EHEp1UQ1ZHrpo5wxzrP1WwALBW
	 AluSmNFQlZWQ6ymjRDU2BwCYSPTSEBiXAzGygJWA5roWtkAmt4EhGrraz8w6mNwV7b
	 sAZeVw8HAqHks5S15HvPQMP8XS+KZGqO27qe04bXaOSVXOapO9jXBuktugiUEXpKNd
	 bUsjc+Mqak64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C4CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804405368.21488.3471661731404564265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5011c6008cf0c7566ffa8f29f0bada37f59554c17ec1feb78cfb809d489ceaf
Date: Wed, 06 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778044053
