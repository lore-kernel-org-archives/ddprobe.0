Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACE52F90C4
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760563794; cv=none; b=KquuqcBLP3+n4YK9rEC3qpIjymTjzgLXPrTWnhFXKCi3pgM6KQclIl6cAWtmqD2IQDkbM74T8d3xrFmCr3lwTeV9zxBz3b6tiH0tPSDwcFDreN4YQkpja7StglZkiC0iixtJzaZJXjmP1HKKhPfWaaC9IecLUhPfmCJk6J/r5OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760563794; c=relaxed/simple;
	bh=kkQ44FgFVdiOtK1VB1LivP5KHHVhzWSUSEE5LOpv600=;
	h=To:Subject:From:Message-Id:Date; b=PRup80vEWVAqfgdYV19IaJOkt4X5LgFe4dZY2hWVDGTP90sle/2ih/52Uv5I8AQ8x7H11LSpx7VjLZGkXmG0OeCqtSTd2XD7EXxiPCqiO7hqfZAVG8jflJduoDDeWzqDNQv3QLp6pamUuCB9BQBgDF+45aNx/f6eIbUU2EVfs7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvvn1xYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvvn1xYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF8C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760563793;
	bh=kkQ44FgFVdiOtK1VB1LivP5KHHVhzWSUSEE5LOpv600=;
	h=To:Subject:From:Date:From;
	b=Mvvn1xYm2c3GpHnBTrh9TkJa7elGtwwtPfOtK1a0gnpxZ83/tMt4YkZLgwDzDiF21
	 g6bunCDow/DXOQH2NrxF100FLV8ITYIFvaRoRXBx7cnS++MuYTBJyM/xRWwjFjrTg7
	 IUsRF56Bk43WTvc06Cxbrnc55hKLgafxhzQR9gMlIAoVS7k0wtrwsrLPuOaHrm15HW
	 Tt7jEKWKToNse1nomgaVJkTKNOvq7tE9EJMwOGQqstDMlXLJQACIofPNJtPLF2jvKq
	 Dx9QqqYJ5tEwNmeP//e+ZLnyH0eZo5NxluUi77RiwozFKSbWNY3EB0BqBFFUogunWI
	 VSUFTyvVOUGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31DCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056379357.29104.14953123713274441955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e04fde856780d1a1da35b0da3015317c4d755e7d42630667c8b0cdad1ff4d5
Date: Wed, 15 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760563793
