Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C8179BC
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726991754; cv=none; b=spZ/FqrsVrh+jov60fDgezqaM/XDI86EUp/Zh3v517MxQAv+sGM3SjPT6OL5VQfEQ0Vd6fmRZhqSa7Z+TqiPxiGXRhYjUVvoy9/oU1IEnsaPf18Xl/PFs7apRU5ZXTEexhri4kxk/VjbYHS7yoXlT/AEl5sV580ix5QlW5yOLw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726991754; c=relaxed/simple;
	bh=gNDwY+Q6RdXRsajEXH6xG/wBtWEjxU3Nl0+TL6TNjwI=;
	h=To:Subject:From:Message-Id:Date; b=qHyHGpBDz+ytAU0GdGqbiluUCHHZSnBXWRKZGUJEJ2joQriFuWGmrOhkbWzWZVfuw9n+7NYbyMP+Ey6WZkiOaVGXNQFPBRMPlAFOtDrDNJWCkiMg31oOj5j58hucN7ThCBff2TXv6HBHv3+6R8O/K/kV+rkqy9QpaSW9dv5erJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbMmIJ7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbMmIJ7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726991753;
	bh=gNDwY+Q6RdXRsajEXH6xG/wBtWEjxU3Nl0+TL6TNjwI=;
	h=To:Subject:From:Date:From;
	b=RbMmIJ7i2+bPrDOM1+sPJd6Bx5RNKLJ5eUdMxKZxAPMYDxbNt1Pn+qtwaAkikyen4
	 J+AwmvfooNZBsrSJY1xbOIwcqbmBdEfx8UYgiV53MaomzF5crYsKbncZgksPKxlRbm
	 Z8M1lTyYYGb58MMajZaKx2xgiNbZUzAAcB09olQioZ4aHFeHzJKDSYt403jkQh20ay
	 2gSyhzCvNseK7aE8oAR9r51oqPje/dS0m30qGfN4Fu3yN2W6A4WuUwYlclr7UsNaan
	 zTCAwkQPzdrAlT6fgy6egQrurhQNP04W5WGESWatadhAVT5QizgypMHp4TaYgsxiWb
	 3J8LyTNVL+Wmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91637CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699175357.32499.14507454805459918113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc431f439e1bb91a70b22b1dc434418821b0851fdedaa46fe35adb34f8027a4
Date: Sun, 22 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726991753
