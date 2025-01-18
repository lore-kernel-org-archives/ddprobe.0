Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D71278F5F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737216954; cv=none; b=sXUJEDly+uIC1le0TUu56qa9FHI35Md7jV7MeL3DJuhqCR2jWSTEOMcFtdrQ8jvCBzIDBQUB6p/QLmFAVzUeLB2T2DmGf3QvxIKsUoOfnmwLkqATeGAAHDxCd9Q5u09DqBSmHfffkXwE0ovOPaasbUqzDkJz74tl3UwN/m+aVa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737216954; c=relaxed/simple;
	bh=10i4gtS1XGzRfkWhBiM781qT+dxX/BoXQJKA7PyHXII=;
	h=To:Subject:From:Message-Id:Date; b=ZlC2Edw/rfEr1Z0CSE+5jYjgQPhQATsJ+O0VsuggjvDMURE+fZ6dWhNov215apQBbHWQ37MXm1UtgtxlCeuIQG6hMp/yadwaAU/OPI/VyYcIemueWReR4UcKHFW3wCBSvp8MyMIKIEnQw/z8AyIbi+odv8GGShVmW9FAf7RCqZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGp2hnfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGp2hnfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EFCC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737216953;
	bh=10i4gtS1XGzRfkWhBiM781qT+dxX/BoXQJKA7PyHXII=;
	h=To:Subject:From:Date:From;
	b=QGp2hnfklYT5J4FnIHx5y1xizDpSM45Gx+FFu3p0vo+KE1gvqg6rSG2Za8omcwi88
	 OeHDUMke6eNmJmO9UQ1aXFDu9CdFlFbD7S4gfziI4kYcqRSui9eluOxotpGtYfjryO
	 ZjeiTlzQ8hj7VDY+JJRTa83lrgkfa0ny+alcLLYvKioX7cBaY/a+w+GXeGJClEJAJt
	 Jxn9rTxzo8fLspP1vW0S2nLte+2aySZ/s9Ja83ckZy4EyABUCKoIeFQOJeJM0jH/J9
	 7ciCViFxVqRgHffn1UNfyEJaPdqL8pLVZZVyFy0PT0tkfLC2ZuIE1NQMFSsGLy23sn
	 XkOzWEXICUygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93676C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721695358.25415.2774940321034128936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19154040b377612b506f141e49c6e494470100146c691edb76dd7bb2058f963
Date: Sat, 18 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737216953
