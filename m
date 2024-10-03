Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A432564
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727936154; cv=none; b=HW0X7bbO3MngE9G4k5d7NnJHHfxMgMCD8sXgHTTBstAf9zo5aE+WlJE2oJlurhCKwDI7ign7BWgCa/NEn2nyplkZt5bel/0OW+QJeXNilJ4720pIBdqMq7/GMYtMWPpzsDPhI6J5ZR19yz37ZDhabEkB3tGh61XvdYgKq38yxHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727936154; c=relaxed/simple;
	bh=GFgcUgaKcHmohgBg3aQjXjLN5pJT1IYyCyCa7wgSa60=;
	h=To:Subject:From:Message-Id:Date; b=QnzjAJnufz5p6FHyc0m75NWIUGEw3x44tFtUhLQ2iqMpqXR/3BP9UFSvdAJHRCK1tpflg5nP8pM5wzU19OJ469b1pbouja7obuHFpad/ztW+9pieHzs20mcbep4Ks7kQOHUu19P8SVl7la0FLOqjZif9eQQHDn50kllMYfZnV7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwokbmFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwokbmFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4746C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727936153;
	bh=GFgcUgaKcHmohgBg3aQjXjLN5pJT1IYyCyCa7wgSa60=;
	h=To:Subject:From:Date:From;
	b=kwokbmFruiztGQE3NDVHFW7vokPQj9G5b3J1VaQj+cCre03d8scA3E2arWzliOGz6
	 BEFmJxeIazMVpEYFoE4XZ8x+z9XjlxJvzsImmAfEwjQU8qyYl9j09nQnkAAIevpvhz
	 cYgj6lQueuNMQ0jQNGvqj5PIC8/a9LGMC5MT/b/bwK3ZSWC3qjY22QfEwzc2YVpmrQ
	 AcuUzqJjKAAkdsyq5dEXuKyyFsfqEXT8fILRrRM49psPqStJJ63EJuIzU+waehsVEi
	 yovIs1rfohkHPsiBdxUXSJLH5WDSjOA9hxH4D7my5lxCZugcg/w71kkFUUXVCK6DRT
	 +jyLqCuUAzmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF551CF6D29
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793615369.21740.4690793589766660190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717d9b62b56d91c1c0a84c9c314b946cc60edb6feb51451ed754bdec361ebe2c
Date: Thu, 03 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727936153
