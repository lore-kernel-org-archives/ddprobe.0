Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DE62652B7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758858594; cv=none; b=JuVSGcF47e1SHYzzU1QE/8mtkXUuaMCNXaM4CW+U16U/ze73CB9WnLiQXhKAK+qS3XDuDFdPprJ9Sep+NzsoyJooY/ZI/dv2dUOMB4PF5yg355TI37uk/qDliB+HE2fP2WRerV8lh6alXNVeaiCT6DUJRTXoQZMazF8U2OB9/Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758858594; c=relaxed/simple;
	bh=ebidJiYaDCOf+DesfGWxw9cg7GuQG7gMeMojBzDH6nE=;
	h=To:Subject:From:Message-Id:Date; b=QDZuq9Xl17ToZ2dG1juP3vMGEE+Nuv6CpPLu6zHmX1Vw7yzdVegVduOd/iMKYy2h7TlSRO1yj3IeCV11DuBp3tfPzXbLGNRCf2j6ELzXkaC8wrA1Q3vmDMfxFwtHt7Z3Xn/0BrZ+8QfzUSFESLpJxNK/J0+yA6oRaIu3vc2qzRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n86VzeRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n86VzeRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D50C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758858593;
	bh=ebidJiYaDCOf+DesfGWxw9cg7GuQG7gMeMojBzDH6nE=;
	h=To:Subject:From:Date:From;
	b=n86VzeRlZDR+HjqFed8cX0qGCTXk1hdxalb6ySXTXHZhVbWXR9HirFOmLkZpPETLB
	 nJAOXqbQMnLY/TAccLFYmHyVBMXLHJqHFo8Ie1sc5P2sw1t2JimvRSwKEFnChqz2lD
	 EYNmreX4CjM0ydKMuzqVZrb5CxSw7XrnlixWZpiDuF37VP7dZ+9tAE/J0lKpwX9P+E
	 JrnpiC5Jkuv5e5pIJyRHG2qWWg6GKRjC2mQbaPcSIkhx0JP1/MgXjh3pIvMZfCH52S
	 J9RuiuTcecsJ2vS83SKkFbB2Mbz2cu1n0I/R3QqDioUmles45F62DW0KDj3CRAkZ56
	 /eLo5tjDnOg8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C5CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885859359.18540.349103743692712088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1891a4237da1bc0076f60aff6cb0fe535384e3bb000ad1c87d6b94550ebcec4
Date: Fri, 26 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758858593
