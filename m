Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F314179BC
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737315954; cv=none; b=rdvbCiJj1kle2hb749Ih5M+ufVh3+Kml+c/oSQQb8YP5IvrWxyCJ0LjXvjfKnPrtXLhdnDte87mrR8+ymyR1g/XP4QAeTtfJIocTuCJyweJFRW9Vkxied87QfDKdYUfDeL1kGQuF9DYA+94/mSxO83A2qe4i9jD9a+xm/8bDVZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737315954; c=relaxed/simple;
	bh=zsXRHoGuspCWJUGu1srQGVfOGUXo+ps0I0eQB5wHs9Q=;
	h=To:Subject:From:Message-Id:Date; b=q75jGY0kRVtas8cZbflX8pharQuxrsq9GlPB3g43iYzVaLaSvOGaoArEGyheg5eIZpsaaZE0AY2Qa/M6M+lBCUTKrhYkWk8QdV57eR/qpBvCu/m9u5G14uFeX2Bpzv8uxqOEI7PYKraWVvZ/QZDuoJZPmoG4D73G7hhIL5Xv+fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg+dnuo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg+dnuo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8740C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737315953;
	bh=zsXRHoGuspCWJUGu1srQGVfOGUXo+ps0I0eQB5wHs9Q=;
	h=To:Subject:From:Date:From;
	b=Sg+dnuo8KDg7lsVpxIL8ptXJbMBt5lr6F3KtXcejMihcA6e/nVLeIikqS++ZI8uUC
	 21CT67uoyaIzbm31q/q2scd44hCE+sENRn29qAGwWfePzyKvdyVBOuKnhuXMWJ1CvH
	 yo0fS3yZEwo9oCeOy48iS/8RbtgDH1bTlvC0//MBFrBPrg5QtbDbQOLfqg4G2dveyC
	 KJbD9y58JL4K3gljQaC5ERz2iM1xg+AMW9Y6Z98lJHQe1xGkqpao0AB35nBKNCEfZ/
	 VP5scyKLqPvYpA5uv29H0olx3iUq6yUUwy3Iy4j6f1JndAhZr9nu8ayn08qvDx2fgH
	 6gP4eOGw3laYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B22C02188
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731595359.27865.15038486809028185361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb43660e03c1bc1861e523be406c35b512cddad794a5e8e5263e13c639ce346
Date: Sun, 19 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737315953
