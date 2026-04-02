Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8343368A9
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775172334; cv=none; b=QuG5d8XpouOp+BFDAle37ZVU9KQ0YmV/KJv9CXS+6JTnwC04BXHCRDGN9EhsAXcbh76lo3PiuWDdTrJVJ0bdCc+DmVAUMvAJqpA/vTdUUzuvRHZt819yjO3cy84WN2peB9UY1hQbpY1zG8xjYH9rPYO6n8eqfTEl6Pgi0DhfZVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775172334; c=relaxed/simple;
	bh=ZDJ1wGpghEGOjZukZSewT2yb8sC2ogTEz0KaT5d8neg=;
	h=To:Subject:From:Message-Id:Date; b=fgUBxWqiWmGcVY/2VB0yJVb9vMNIRddE3MxX/Ch+Y7Qvby1uXBf38k0ojEbLrdwG/ZNCqCVIR0UdVnY3/6vdYh4Ho4JxrRPovKVCAYbP0igkH4x8s1czZ4MMLMkB/wpX68t+BgDXpaRIxfjGMasdJDQ6kLfsGZjinvvlXTqq3Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oirxfGnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oirxfGnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAE7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775172333;
	bh=ZDJ1wGpghEGOjZukZSewT2yb8sC2ogTEz0KaT5d8neg=;
	h=To:Subject:From:Date:From;
	b=oirxfGndivRB3bPIg3ZtM7suvcvzu+ZYj2Kx4p96Lb0G2hamL2Di4DCK9vtndm3DZ
	 yzw2l027SKkPNaElhlJ+UerO470IYsvXuGvHQZHDT2KjpHjOLjM7sW1dFuxntIcs2E
	 bBYE/BVy+TUWMENMgIBN0RCCoTwIxs2n3n1kSEsuLgS1JuwMPBnYYFB4fGdwgbmkG0
	 uHN3aYxjKUs3EgzoZXFTUbJlhSjn+wDChIZkYhOUo3Sq6CIC6X7LKsP2lbuaV70K8U
	 +FI0TUBtm7j6PSsq+AItggLK+a3olsR09j0FovammsJ3gHcogCWFDw4+dipnmY6nyl
	 i5OblNdnSyVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB7BD6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517233368.19703.8669308804436289672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148501c00efc66319c9a901919dad4823fa93d100fd761427955746f41b122ae
Date: Thu, 02 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775172333
