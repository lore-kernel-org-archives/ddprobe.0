Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE093C01
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755467394; cv=none; b=RQvwrayeMt6RfXg8IQH7tM6WLyTP9rkjlYywOFcLKEGm/dtycKiAQQOV2DzNGNuy5EkBhiVg9CHxB5o1EBsx1B+cnNNhDj4nmKtf0ZwoICTnM8fRpOIg0vjreMLT9Oi4NX9pouGDllY/Mp4MAiQ+ol6I504RvbQVzmL0iLRoqZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755467394; c=relaxed/simple;
	bh=tps2sgCssXDJZqaMGvQbCEX/8eDsAyVe1x8dBk8Ejyg=;
	h=To:Subject:From:Message-Id:Date; b=gktZB34ZagON0pFxjT4OqPJH9hJQpU60mqEVvvhFV6XVAdGRFhSPiVxa4TuVe+/g1g8GaoyMIBEztv9BQB1uOUyzwlnYkpWkevaJS/y58zSLyx0wFY4+3quaqyrrt1SJqK93J3+mQSAHRl6fw2DHLP42/A4QdPZpyx4g4aB1cWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7dYXuYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7dYXuYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3943C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755467393;
	bh=tps2sgCssXDJZqaMGvQbCEX/8eDsAyVe1x8dBk8Ejyg=;
	h=To:Subject:From:Date:From;
	b=s7dYXuYzUsDTky9cmry0/uUAKcHjz4RatLOcOHgpl1N6JKQin6pkrxOJZpigq4PfE
	 S3eTNhLB6O9+H9eAs8IUwU+m2Du+I26x7usOZs6bmqinDCw6ta3KAXTwLxvTt3OOEY
	 btiui3U1A8WlP74iRgd7SoOr6BiFPAWs+T6Gjfx5xjPH//tNxO+YuWVWGYGZ1nF6kv
	 lYr9cZjGSUwTiobzldRSeSeICWIetAlxjmidz3q2lkiavQh8h0kCu+IUkciE4rJ962
	 jwhvcT1Mu27IcRA9e4nmY+w5cfRV8DCqYbeROgf+aOelW5ILrjNNW4tZtwYJ7Jkx6g
	 GHqAuYd/hZp6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211CCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546739357.14617.17865867078203192041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1bb49343612448bbdf2041b29acdea599301e9d922a606272f05fef62bac48
Date: Sun, 17 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755467393
