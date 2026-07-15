Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48930370AFC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784151514; cv=none; b=eqNwWQF6x6uICD6ANn5vf2s0L5aDDOQBLcl7Y26e4hVo17hlk7478E+cAxIQ1Y6NylBaa8G/2VIDsk8LzlNP7uowaIgxMMR719zhEfxcW4vVM4kIz3jAyPxDKde9y8gc5iAqItU9s402Bh4KOCSSw6R7VFa2BWrHi8PbCzi0+aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784151514; c=relaxed/simple;
	bh=OQvk3UWETSCLIwem6LuhwmjUei5AjKw59K8/S3Xl2eY=;
	h=To:Subject:From:Message-Id:Date; b=IAogw7iwZ/jO9Xz+wgN/V7z+w6uePYmw5cBTEBkbxKMQb5sipSzIB2IiRmOJFLXxy95hb0J5oV0k//ZvKNEpK9WycMdJUjxs56lLARPtu3A6Dx7Ogq41KVfFyhMYBxBlX1Av7TYa0wUCMaSUrer5lIOHcH+Z5aqkQmixggyKFYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqMjJBuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqMjJBuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D481BC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784151513;
	bh=OQvk3UWETSCLIwem6LuhwmjUei5AjKw59K8/S3Xl2eY=;
	h=To:Subject:From:Date:From;
	b=WqMjJBuEkl2Owvm3uDKhjOUl7acVpnFmSFYNaPxRfp3aEHbW2CIkchq67F+Ms+reI
	 5rM+EmkO/9TNJY7vsOSN0MsSKzLlKXBUQZ7r56T3Y2xQoUiYlMrfHeTrs5jHZ4WOej
	 Qa7taloCHjo6C9UdK4J941P7JWOPg2vhQGKsYX9x4rR9N62ioiYpKMmCzrfkqTWQt2
	 T++flYNEBEBRZspkh7+uhvBfRSpJAZZrUtEtUykevW6mwLjQxeOOOS6Rx3Q7DBhmYQ
	 ilxh39qjwYaCiOvCM76Cw7764x2k72JI5DyJaBYG8crWzTwtARCHBfThPLKkSy0kTP
	 UCoN0ERmTUOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F2C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415151368.19655.17551172847176011054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20542d1f76c1b71dfaa14f3c9ffa2ce4e96083eeaa00573e5d1494455e23e752
Date: Wed, 15 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784151513
