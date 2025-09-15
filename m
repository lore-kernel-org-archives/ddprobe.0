Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347AE1AF0A4
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757909994; cv=none; b=T2rdpmfDovqwFfGYaSsgYTtYD1y9p0NH/YgAn5G83hUH3F6VBtrRjYF7Ytwtkchj/QLNvbm8jc1TIxecYvhQAo6ZiVYPS7HOMrYlSJJRJ126/QlQwEpc01KkgM8TKZZhN1PiwJ/4T2CKqt6iRsVIYuUbdnO6p4zbDu8yxGTfxfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757909994; c=relaxed/simple;
	bh=UVzUD7/C/7stvFH8446bP/S7RqvLYIopkiWSKut9UIQ=;
	h=To:Subject:From:Message-Id:Date; b=JEzuz9xoQcCVaRaikIIvgaDCDWbt/+aSaql3jdzaduawXqn0Tuaufu4MwMX3NoBhZD9H5O50UGxZoM+kn5joEgQluqAI+xvs0GZc8SYDGfYEHZwBaKgGT1DHlBzbFt2rHTCoxcNmTJoUuxrsNyBiC7ziWKRGalEdOVRo8kETDrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj0jvwZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj0jvwZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757909993;
	bh=UVzUD7/C/7stvFH8446bP/S7RqvLYIopkiWSKut9UIQ=;
	h=To:Subject:From:Date:From;
	b=jj0jvwZw7Yw+42V2LxNV5BdTYmjBRczRNmMNCk+nD+GiZEzjKelObXn+YlxxR6EQA
	 AMu53hXBeTzBNn4g47ucF0cUwIMG5wfm+i/o1ikjkaMB8tqqbv6ygVzPEiUAeddsTE
	 N60nEU8VOq2jDY2ZXSLyTw7CCCScv/tq37cBulySmnKQVVayT3f+aB/Myh/qfHSdgv
	 LCesd/TlQkHX/5VDpo2eVlQXhekkRfCsOaVMMlQMm43BYPm8tVk+AhgEXgADGIDkRm
	 P+SwuKILhouO5duiS9CXMjO/bCUHcQPpH8BKsdR0eG+q5+i6gUyGkSOl2uDGCzLB7k
	 vWk184e8bi09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954BCCA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790999358.14166.10749948051728390585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c665db764b5c5da1d6a8899e802aee7daa2a6f3d5df92b7f7d9eaf1291321bb
Date: Mon, 15 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757909993
