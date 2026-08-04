Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433F23E315C
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785849634; cv=none; b=TrnWEIi/2SGX9oKa4SmzhwTea4g9KlS6Se0wKpGFoQkheFikignOzpBAzXcI2hhInTqbJpKGokBZyUE6NnFiGHOh+wsSTD3oZ+PBzSjD+RkOTB43G2EmoEtgrhg0CaS1hZ7tYTsLVUJ2bzlR4AFK9yjgoq5MdsIPnvCyNe2CVG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785849634; c=relaxed/simple;
	bh=5OvqhiwWvDoSXeyCs7L115X/bkszaxWhcCkTzBHZCrI=;
	h=To:Subject:From:Message-Id:Date; b=iPJrCOUVaa0AbWwYyZx9U43lLUVpmyR5EzGcj1G97fQ0wGVYmRG6r2yJavccLbh85iHbnkQKZaoww8f6oXpF4I+bHkKzOe6binsIhlkZ1L7Ek2WkAHMC3qUH1d/yewZ+5/M/dhYHVmLb1s7hq+JmIQVqDwiOjmB/Kukrcnh5gz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqLl2ML3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqLl2ML3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAD3C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785849633;
	bh=5OvqhiwWvDoSXeyCs7L115X/bkszaxWhcCkTzBHZCrI=;
	h=To:Subject:From:Date:From;
	b=kqLl2ML3M7SQXMmhhifrds4o5/Gk2hmLxYzeJGtQFdQ+PhzzFXl9ECnGgnw5mEQYK
	 y9pcuXEmmvXpaDEnOexF3e57piq+cVrhz/vkFTcFIht3rkE2DS8A7S9Te9zyByoVXr
	 hcwZw8HDO8Wzjq3lkjysfd36rBZE9qTeNIpank/Sm/cdERSQepcgSb7uRjGww0nPhT
	 ENfmMqsKOgEXlydvKAs8wH9Ve14yJcZfMx59FVtcMG0lMDCrfyHG6aYCqjYAZkQ6Ex
	 tNtzMkjvKSp3jhrQLHqXnoCJzJx1DjQaGEVy4O7pz65KmJD3uFZL88Tk62w8d+FEVx
	 gzUrtuvLUb1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F4C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584963368.6293.9932338283377296518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4fac75c5d9ec3a592bacf11e724380adf6e8590114f3be1efe616f6fac891a
Date: Tue, 04 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785849633
