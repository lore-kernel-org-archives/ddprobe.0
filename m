Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4B58F58
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724742354; cv=none; b=AV9lk93ATHPpfG0lp/03i9EoGbuXLmQ1Pp44cj8m0avwGZnpXmbVxaYZ4ZGEFdHROW0ZA6et11b2APT3mu3W/8AdJirmByJWoO8vhmBGrz1eiksrY2GJhEJC0t/Prxb6YLBN6dwciDzAnqGa320gMjQrjjgI1tFRlU7AJy9Uzzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724742354; c=relaxed/simple;
	bh=63bjz4xskJeTaQ5ANL9OfbEexw8zGi2kY4iFyCWvKKs=;
	h=To:Subject:From:Message-Id:Date; b=Ln7BhvpQOEZEUiDXHXu8wc2pusihXigR5SnnlCklK6naxGEY1Xx2TYwLgKtgDxvYtAd2g5MPIsU6ZSiE/LWXNZblPQqqv+rkrFCdKLnbP890Hg8jU7PJIiAXlt5EoZo6dtuAgrv6wo5gDYT3aAZPyjpqQXLVMBmjmyfBADGbxmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/Fg0wYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/Fg0wYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF70CC8B7D1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724742353;
	bh=63bjz4xskJeTaQ5ANL9OfbEexw8zGi2kY4iFyCWvKKs=;
	h=To:Subject:From:Date:From;
	b=C/Fg0wYinaNXEbJl/neO1JD/RZw4YP542FfdC8b5x7IZV4Y5TXa9ah1l+/CZiBtT/
	 ekMp06DiBHUcwQhiG/1/iZ12yUxEbTyOSXjmOfGWSMuP+pXa9jjg86VGy1Sh5YrIOd
	 4fDbvHsGmC/0E8C8kwbtgj9DEWrlIzeXRq/6WzYDoD9WGP5UeGOSjAPK1KTqQp6qYc
	 bx0Wqt0LiGRb+uMq8xWOONTi5YfN18CQDEVQHCDLvRiJX5T2OWFAnVqnXaZk8uIYHM
	 9qCT4cWFzpEVqVRKGrf9GyJ7AuwSD8A/a4GRAy7fNvVLBN9iN97vKhZfLQhoQUdiP/
	 aAoeOckdCTTZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A71C5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474235367.868.11688832223931975483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac32cc71d4fc5bc6bbcacaf8461884a199c93f55e25bc84c0a0a8f8350b92005
Date: Tue, 27 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724742353
