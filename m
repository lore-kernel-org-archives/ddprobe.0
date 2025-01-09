Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1515313D24D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736444154; cv=none; b=U4ljW4ccYV2WdenucDVem0ERwDG0BddTokDJeCO33UHoaUyj9JJAY6d5LwB9ZQO+wvzbuCKz4OQdlY70sMUFBUT5/ukLr4x97oSrequ7iCeH8XRO/1K3gSIDxUtdWPlEkZrSNx6oktafoYjI3INK3e4k+poBDVeLkrtNCq6mOm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736444154; c=relaxed/simple;
	bh=GIW16KfqorTQlXSePhHH8IKMhAAfAi9tMks74DUQGcg=;
	h=To:Subject:From:Message-Id:Date; b=tgVOmA9/VL/FaCIt5VKtJW+7f59DN4E0LgUYsGdD1t0ixKNKikWtQMm+VOtYrK0h/Dxm6EddZ99PdjewX/fmY4Kj+ftKgimI+bp3qqpZi1PVvB3Lx0E1KKj7QTr7pFgRoOss3OJ+BYqLk+ulehVPy0X7H8QLYPB/AanI26VVlEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wym85W4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wym85W4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735BC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736444153;
	bh=GIW16KfqorTQlXSePhHH8IKMhAAfAi9tMks74DUQGcg=;
	h=To:Subject:From:Date:From;
	b=Wym85W4f8XTosmzqmUkuqnZ4vvzQxljOkkuYmxr7gjP/R1v5VtwnKVCr0LeD+4oCS
	 pMB7GQkNtavZxIONlOhQBX9Clgb6I9PWv4DHFql8sT0+eQnawuj+K/BRIyUnawnOO3
	 v9VhP9rlbxojT6/vEZQBQMK4kCrp4WPRyrQu9h272MroRB7E+g8TzaQf97uSLg0umf
	 8pQTIZsCv8OHXUo4sRgZ3jEbxC6PPLri+izvG3ASGkI5pUn4rocCkg/l15cgI3OzKt
	 QgYlU1HtP3C34XklwTYvT7e+NV9BPt5WZ/uyvHMOGj4YbOBvPx20RlaY4I+hPGzmbv
	 K9UlwKSx7vuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644415360.13006.10048301773419187087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9122db8b7e340e6bd04d14a9fd57145f566dc4785d6fa7e69688d1e793a8bbb3
Date: Thu, 09 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736444153
