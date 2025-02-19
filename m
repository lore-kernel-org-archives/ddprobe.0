Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639B61C5F1F
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739958534; cv=none; b=FE+Z1IDnETFzHwjwV61Cvc493YzRZdELWYXp55t9kbO4up5g1DbcZNRJ0rlSUmyfk4bcO7UotckiAaOvEpKKMV0p2YtUTP4FPd86dNMfphMS1i7n8QvyOSIevc0YkN9LoZxn4DMeFJznEgvt17IJ8XIsHXfaVZWRsxdHzz2C2MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739958534; c=relaxed/simple;
	bh=DfW10v5RrQ03+XyfO/nX18aIIz+NoowAAKgzcI5gZ/I=;
	h=To:Subject:From:Message-Id:Date; b=XhuRkjxJ5pr9fJeDmysdh8/gDD7cJ42KVxpqaFLOMnQfsmZAiaRUhWZQsx3CZDD5p3AYSLm1pR4tJlDeneR+LXhWZ593tgvbU7Z8n8VfQ/nkBqZXZQUPg+rvFBbaFQhNaoQH1swYJY5IzwTz/yHBwFxLw2sA1c074j5ESx2kOds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjN/v7sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjN/v7sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC964C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739958533;
	bh=DfW10v5RrQ03+XyfO/nX18aIIz+NoowAAKgzcI5gZ/I=;
	h=To:Subject:From:Date:From;
	b=kjN/v7sqHyHyRIbuMBaDX8+S+tPjTVYdueu+gJHRs1Uq6PuihcSsU0APl40tySUw2
	 3RWaYUF9+jIEmfM9O94ysBimX8mT4d9uPTFXmTNn8T7tto89WSVXKQMaeAcmuxVDnF
	 OeJtregztoR6ij+652lznxq8WzQzVaOW0ei0UDQ0qQcspKEgoHcsOKGQm+pkUqD+mD
	 hDnIDxFcFu2GvRXmCZgnUr1h0oFmVvNb/zV21x/Upr1aZM0dA9zxokxmu8flbPLtwM
	 h1Nu5EvlxI57myscmP8gIU7KpeURVUegTxDsi1Ww0hpmVxV0ZMf0TgBreaTWmCRNqg
	 nFFIrG76Gg8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE62C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995853368.5142.1486813185973427940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c09a8187d0135b5f56b8776847d586ebef7afc7599ac7f4bb725458fdfbe28
Date: Wed, 19 Feb 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739958533
