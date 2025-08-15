Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250811D9A5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755282594; cv=none; b=axOIOInoyWX8+nbTa7/vpwHqFme0gi8erqQlSzZEOhqiNvdz5RcIv0gHeq+JLBkYMWpfTBzY7KBS0hSpjdTDyfF1hHSYx5LKDTYZzR+9XjkqY9jf0KLYkSLeRQfTh1UqsBCsp84owolOPWBrxRmNpFWDKfYdaVUMfqAPeKobyzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755282594; c=relaxed/simple;
	bh=x+Z1t90UNJWyIPn0E5wRE5xkhsSepIXTS957fEw6PhQ=;
	h=To:Subject:From:Message-Id:Date; b=nOPKm2pTahIMw8tz10lShqk+bK/5MBx1ymNcD2Ml4NxBjl8ColbvrJMU+AMmjW+8iB0kisUmt+/v/2Ma6imWFCHlL8aQgEar9X2cP4MieHip4EEKZIwHrE8SEDfmKyrpB8xrO5O2OA8KkKXWOsQkn8fxCuC9zekEFc2fklQqKD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxSDKNgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxSDKNgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755282593;
	bh=x+Z1t90UNJWyIPn0E5wRE5xkhsSepIXTS957fEw6PhQ=;
	h=To:Subject:From:Date:From;
	b=PxSDKNgJJ7rr79OOa5hxcL3sZBCCb/4bfJoqzinlviAe6gp9KwNro8Fuzl5yk46B5
	 gr2RNZfD1HsinQ1POjHnxvH7tYgbe/fHJIAuYIiYFYvtHNulcrEqs/xN9KVXKZfWpE
	 JIJ6GRP1IT71GRUzdiDPson2v1EG4i9Rnq12nWU0PIwrWMKiVlH8fomJOJUMN9B62/
	 YifPf2X6yUAHpNpMzRJ0hEIDJSKne20zllEN0zsvDImJI0/iZ28v0FNkfiweYRzh5g
	 clWCtI7euwZBgTRZwoXzrkNNSL9W2bU7LvE0TVJOuhgkM1kty1sYVwptsQdftKhZoo
	 mU/WlYyvAEO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ADCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528259357.664.2731634336721692133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803e5377ef95b0cf6836c5251fd960ead0145cf82dd74a520bf37a982b0da26c
Date: Fri, 15 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755282593
