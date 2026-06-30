Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D5A283142
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782842314; cv=none; b=L0q5UnRKLVuYZSdFfxR0/HTf7PtTtjpJ384erGG8LepjIfMcQk07BPWLpooPCtND8K7FCP28t9O/GJTcKDaiWaxBzRF5v+5u3xxq807aB78pXsfksseaYqQqUj2smIrvloifoSB264lReGisvBfdg3zWYE6HjiL4Od7hKw0jL+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782842314; c=relaxed/simple;
	bh=wDhmgw7x2MLu8HoXaJtQJDUiVeGtU0l8inMjtkhlNhU=;
	h=To:Subject:From:Message-Id:Date; b=uWACMGyhd/VvutrupLDN8e9qXQAnEdJOlj2mDeao9AySa5B66Wb9cP9gQFKkEke0n7zezYPFhOu2eW/6lrhlYhanZEHqg+JlCUr+f5SG19HpbYr2JgwKOeebzc7bP0yF0rztDl+ICofm7APeBthLqDporX1o2ff7sZ7jLt20oxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8tZiuVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8tZiuVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D0DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782842313;
	bh=wDhmgw7x2MLu8HoXaJtQJDUiVeGtU0l8inMjtkhlNhU=;
	h=To:Subject:From:Date:From;
	b=P8tZiuVIW8ulGvPO047ATf4owzv5jUhx2b36NFobLg93dSBtqLL1dvCpkGJK53b1t
	 uQMAIZscHfQ/btJyRJdQLnRrXeQAKjXHrmp5C1FZBGbZD68nqwpdWYB+jsT00VFMgm
	 A+A1gIJVwBtu8MX84JIS9l2rhc8dvIv7H6Wr2wH2bKEy+RyjXMkrirXFvCrIg1ixL+
	 TJYqPaQvMYV15dMY7jp+9MT8gn9kpVHicM0wkD8Wxw3nY2klBkAtEp8Zy2/wSJ76Og
	 6xKhLBh0bLh0YblV6HkpypPyr99cHJvqDekGkadOuKkMF7KYWtpzTQhpjZVgUbwpyV
	 ehmpf4sRGXoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9FC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284231368.15907.14039520920267167275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860497a8a6f01d28091599bf3788f2e59e2401922c7b9b697c0d7cd4970574c5
Date: Tue, 30 Jun 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782842313
