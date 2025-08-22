Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6892FABE5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864595; cv=none; b=X/M9cPmUDPR1rXwoy5016DUzkJOBxWgaVXMzQ19sp+SyIN/Rn+WpwUUixnb+nJ1vUX0km+Nd7biMEoRM8376i0MIMWId5MKZqqmPo6SlOweT6KTLCt1KaBkThMqbB/EK2+zYFsj0OhtFYCKaVRrXUPxMnhN693LUHeDr3suqngo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864595; c=relaxed/simple;
	bh=20efbTNxdQ5j9EKJvBAWTf6IjbsCPfKF6ToRltF2myo=;
	h=To:Subject:From:Message-Id:Date; b=s0Vfh12ypeFsLzT4ELEvpFQKoDJ6PAErS5NGleo8pmkcNFw6j1XO3NlLugw2nMA9jbwBHdXspGLmrgUT4gyEnh/Mm05wTBRqQ0u+IqKaUVcP0BZSTROJvyEuvBIMG2hHt6u0mQx4d3M2roUQWtvjvV2qA/i7HDa0TfGJAfdxG0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po2r7F9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po2r7F9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4AEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755864593;
	bh=20efbTNxdQ5j9EKJvBAWTf6IjbsCPfKF6ToRltF2myo=;
	h=To:Subject:From:Date:From;
	b=po2r7F9SLSNTyxlj6ul6+uJv6uba0qfBuCBn6DBjM6FRrlALWrFtxNPYsEAhGO6Dj
	 xN14n4qOknI6rMoiAAA8O2bA46MmdBPkpG9dWala466fPLccN77ss3v6+ktOaw5M/i
	 xLXK5McpBU+QT47qE1J1KBAFgd06BoB+mPj6lQieJtM4TtoFDDfpmu9YlUTwm3RTVs
	 mugmZ+lDAWGuKwcbr/t3vR7kMFdJ7ij3DIjONFePIwGJAot2Tv0tlXvgt6N02dzxbg
	 DAp+xc8JyEvX3KdfFMNuumvg+3XK39B1DzB9uDt89uAS96RajlQwMtXSvQKoCSXZ9W
	 GOlSYigqKT8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F8CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586459357.14265.47354525447689549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641c2cb54e0398425c2b5574fc7462c05e36c8573049fe4caf546387e576da0d
Date: Fri, 22 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755864593
