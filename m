Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61700D2EE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717787843; cv=none; b=msz/nrM7FnQF1NTwHVqlF62sbbHmugFPEht4r7fP0r2jyrgT/iBFoCvm1V5ikshxsxp+pUOPS1d4bAafCANJlRAL7n0eu6nKIvtWO6K3CiwUV4mHRkz7OT7orrFS1hUbKl7ZqzdEopY7ejzDmDfauwDsGRVHZ88WKkMyHNqMbJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717787843; c=relaxed/simple;
	bh=2bJwZeazNxZ4iXTSrZGkWQDWX2tp6ozJPw09CjRddvM=;
	h=To:Subject:From:Message-Id:Date; b=WpIWyGX3ANXwH+R63wpzui7sAvFUTP59BQkPBnWUQqWwV377Zc6ciE664BuQpF4h9wegONVpXVVadUdCNiQT55qIGbizK0f4iRlQQzdUzKqiFo3EH/6DtMcd6KMrbVNY+Zx2KBj80bfzvKO5uFgEVXQXNir1SHHBTPyJmwYvh6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/zlvYwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/zlvYwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD79C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717787842;
	bh=2bJwZeazNxZ4iXTSrZGkWQDWX2tp6ozJPw09CjRddvM=;
	h=To:Subject:From:Date:From;
	b=Z/zlvYwaMcZPnb0Sq8krrdqXL3Fbp8yPG/p0mo9t9BCya5Wi6Hojo5L6HFZ0Ca3kD
	 uk22B/HmbzcBmhP5As+VReeyKR2ve2VPfFpEYqirf0AbA1PAHvgV0nZ1FkHJO1Q5pO
	 kK/VUApfxUyAcUH8Y9ZuPAoGMbadYGn1aAdfj1mhhNkFhsJnUpuDC/xsXhmfNurmsp
	 l0MXQVIGEwlUbNOCYjsagXmj73ohurm5Vmdz43Bk0pfp8qFHMc5cy9FG3/9DGeIVy5
	 aABaCY3ZgQLYV8v84D0TDe8Ks2bYJBmyIyzEXChEkeF1GkKqakg1bPzH3yHCMpH4CC
	 1TH3yVl/rN8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ECBC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778784278.19718.6969437063659262037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd8725c9b58e42229e9ce5c9c9b3e622c1a49c6f1ce89c0c5115a6ce3db2585
Date: Fri, 07 Jun 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717787842
