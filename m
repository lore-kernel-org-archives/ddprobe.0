Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BAF2E175D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752585594; cv=none; b=Y2YWPjdEPlktmjvY2r1POyedKHEMfy7NJ5v6v8QthX5nB9Yz15ioXGYWc40hQIjXGI3KskEV2eke3DIB9pqD1RYEl2zGsRCsTtU7StExke4Nj8tH38OqmutMrYfaEKDq6G+zy7LBCINw98eXdP+JO6wZUevnW7ZlM3kmx3hno2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752585594; c=relaxed/simple;
	bh=WwxbI+wriiaF6I08sjpw3EQDkCPvNvFmU71D2sZHspM=;
	h=To:Subject:From:Message-Id:Date; b=mER7L4ysKjDpbrrmlbmAPgv4MjFyURGutvsyfHwAZp6qdZ0Uc2ZjvT09pkS/W31XQVu77SB2lOG5y3/vZjbaVAesuMoLEoTQwZ/hEYK3u1K7Sw9Rx4pD/EgvyUDe1uGQWNZvY2GfwXx0LrdQlmyGfY2O8Rxq40MSRkENSo6gKoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0g+0BCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0g+0BCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C5C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752585593;
	bh=WwxbI+wriiaF6I08sjpw3EQDkCPvNvFmU71D2sZHspM=;
	h=To:Subject:From:Date:From;
	b=i0g+0BCQsUV9InxfUPDGtB9eTnUBMDtQS2bnDrj8YRNwnLi/EXoXr17tUsLk0skPc
	 oxzGsl00xutd71DQIuotO7ES/tbu8lP+gVdWPyyokI4egdGejcJT/IAO7a/HiyuHgq
	 MdgGb8F0KKKs+S2O7fvJ5LIjZGzpE6HLyWtQSM0RyotffJNJSHR7RwOh/3sGcldRrC
	 sghJwevn8wTUsq2B9yhKysT0rDHXerHZL0RgqoucvnZm0PaT18fsfaqMvt5bWndcwi
	 1KPwVfD77JXyYacy/5ajx+ipPv9PHCq46ShBByhknmfam2oaIPUzZKGliP9HuoWkLF
	 uSkbZ91Qo7ByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF0C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258559358.20361.7127458551592455286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c32c2097e9f1f374d10ad93cbc5c5a50da3dbc5aa55e82396390459ebac46d
Date: Tue, 15 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752585593
