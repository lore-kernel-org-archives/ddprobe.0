Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76D33A70A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772640294; cv=none; b=k+mnnCU0mWzEB0wXGGuhjmBDmNI8aXKO4zTLbdZvFKF8JRanmyuCoyojDvANgVasAVAZhELruuZa9g/d+dOfwymD6zpVym6RAve9IcX3LToThqGhP+fh9l0icW8qBwty43zKqcWBtwdCavySXV8osS7WVXAZofEJiH9/uZZUGsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772640294; c=relaxed/simple;
	bh=bH677gW8LI447YGe9Mp0kXHTEc00fmsp34pe8RFM/7Y=;
	h=To:Subject:From:Message-Id:Date; b=fJmi8dkd33D2wUwD62mHsPEZLm2Y8o8P47y/gXFjXyrwNn9zxPkzsQ7TrfPH9WQBHp92slw6RbU6cHpVvpesXJxPh4ij33PhFATwX4czd3hN7XREgMVGkpXG0Aks3TcdemV4m5tewgAFI6K4E9DGY14Kj5EhbvsnC8LUZ2oKPqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnqSd8Qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnqSd8Qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB68AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772640294;
	bh=bH677gW8LI447YGe9Mp0kXHTEc00fmsp34pe8RFM/7Y=;
	h=To:Subject:From:Date:From;
	b=DnqSd8QejESXvuhIcG7T2gcjsc716XVlx5KCVE5JbESG7VTbM0ItKu23NBaNE419B
	 Z6/VlrowGm69B5hcVSqYqnCO5864NvQT9yw034iE6TQUxglrgVXTj3iochxJHayHik
	 jvJlERfZNnbW0ndf0godjA8axlaFK/ExHdaiiWueX0tncsDRROwAhpFoaSaYV6yRgw
	 eUvni2so3W1abZnOUrIfSDSmnfRzF2+7IcBAAMa/AItGc4KcGmmHa3huAh21iWSMsj
	 DLq0gKTiUV2akQnapXYskv5V0GU7mcqruH5/XCNRDm7v1eMJ0SLc8DS7aRFJ0JNT4+
	 js1XALt2KWt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D149BEF9001
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264029382.2496.14772141095737626530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f479a2b2092c4440622f32c02d5662f8b0b24275bdf6ba2d74c22ab6af672d
Date: Wed, 04 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772640293
