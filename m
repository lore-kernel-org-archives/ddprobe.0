Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388121EB36
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759956594; cv=none; b=IoRRDCz8kxVUZ5MTOY/S2RZpP94+Cpz2brAhVT/XL5GvlSuybdZHKEbfNwlKAsQ9mLJCyJJmcOW/qIa0DCO1hMZGSSN4p+FGyRfENGu+SSGek/M0qGbDIcHptlamvUEqREvJS/EibR8nutWXHWxkcmNwtCfUUR1w6qLb1fmRt3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759956594; c=relaxed/simple;
	bh=ef5QBydXttPCy50+UmxJeXeNr88nMtylJ7/XS5zEqfo=;
	h=To:Subject:From:Message-Id:Date; b=kziWLJBjzywAB1piHgCJ7zCGw6pi8TFmQ592L+AD+uFv4dt8lbs0sv6V0mFKgITcYCaUoAQsu6+aSW7LJnlsvYb/PkQ9cHgyHUUmf6ZCUvBfH4SMB6csVlaUim26i852bfiN2x7IRQYipnIgFvT9cSYUhzs/hp3t+AnZyxH7RHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyLse4Qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyLse4Qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC0FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759956593;
	bh=ef5QBydXttPCy50+UmxJeXeNr88nMtylJ7/XS5zEqfo=;
	h=To:Subject:From:Date:From;
	b=kyLse4QwKR7evrZl1ZkdxNUMAYHqp6MJTi/1gSdv1gmNbb7VYRM6a3Dsjt7kIRnJr
	 5tIof1QK1e+ZAy1N290eFTZYommlu3A0lYXpHp4CQ39dLbprNe+y2no8bCm7gC+ulN
	 rYoB3kTTOdvplswclBE1ya4rgqKKHcVf/WN+1MoSuM5DZJR1rdn3oi4yH52DeK0qbP
	 SM6+AOKKhfa9amADjjMeHP4Tu871s0asFC04HVzGLqqAsMthkcyxhQT2pLEcfJTChK
	 eoRzp1damQuQ1jbYwaRGqA5WlTRkc+Xw0G9sdeYoWbE7XaJRcSEeGP/njGm0C8RX9o
	 NPoYEjpxQDjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9936ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995659359.19270.3299586724451758980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0836d32f984474cce2d21cd8beffa661bde83510983420d7489233e460ed90
Date: Wed, 08 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759956593
