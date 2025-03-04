Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3CC200132
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741089535; cv=none; b=pF7qVEHDHhVl8AqhLkjpv9Eu74KZQDyYY/fZry2D3Ro5wxN0sOKM4V1YC9lOVg0t3XC0phTg0l7Cre5eIOSJZKV/yJ4R9hDkV7gvCcnmQy2c5dt6E/JJ0heWDqlUNpbrs9HM1U+MngAmXRdAzcDCbfbMi9Z2IH0WagvV+1rWQAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741089535; c=relaxed/simple;
	bh=RoIa+1VSWoHTctoHk4g9SzAs7Bu0cEh5OoFQHNFEmkE=;
	h=To:Subject:From:Message-Id:Date; b=e6xqNTjn3Oh9CzDX56jAmLPbLXykk6zEdWZvRD3+vuZf230qOwmkohNtQ1Ka9b5lgrsGXooX2e7QhX0i8aEwwLibb1TH5zqRqI+QYo9JqbcAYQjpOxCwAgKHe2gLZgG/OtNzhlEd5HSN/p6gC2/Ci9Ak4v1qxpVefh4iW5c8FoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sImTu7bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sImTu7bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4347C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741089533;
	bh=RoIa+1VSWoHTctoHk4g9SzAs7Bu0cEh5OoFQHNFEmkE=;
	h=To:Subject:From:Date:From;
	b=sImTu7bMBRY1Npt+Ie1AAz4HYL4uXj4R5jBcUG0rQlXaMPQ/tZG2IIoF2aoRVvSE+
	 aq8Gyj1bboaL8c6tCaHRS/Cy4TUKGmxoUwEpowuhIuCnmGS34NZKmjX2+ngBXddsNq
	 XS2e/Pmlax7pCusGQfL6C0ncjZhxHqkeDKTxVzHFN5j5lFUd+wKhXchBEK9bM5y+YU
	 e3pL91pLf1LFmK9/AtPNu3CZy1XkOaGVv50fuaXZW9kOsqYalnP9pmd2mFp6/fAiaz
	 WbHGKH04+OQsbsA1ygkSZPSpX+DgrJJ0HLn8TUZEQl/43yf+fFnZ93I4VDzJnCYyfd
	 SeHJV0EsMm9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11B2C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108953364.19755.17186908171728086177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2116f5a4c94f51d3f4fb296f0f1e88789baa7f04d8e9d602ae8a2c52416aa4
Date: Tue, 04 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741089533
