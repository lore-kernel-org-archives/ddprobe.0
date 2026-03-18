Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319DE3B3C12
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773826494; cv=none; b=cmPU0wezaHaL/2R7nSlFcVNcHBWXArHlf5hOyqDIZt7oTn2krPYJiHGIHg+SI3tDJQobI77eHUWclNtGiIkExr7Vc7rlzuSxsF6gJfhyCtE3dBNWhDwGyR5r/eP6H45sC2yhL3ZN2SkLYyZm11FHJOJB8hGyXQ3fOnHcxNsNOao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773826494; c=relaxed/simple;
	bh=HcJm3hieZmgcA/6KDWNrAUjqdohUxyRh9oz6SnM93HQ=;
	h=To:Subject:From:Message-Id:Date; b=VOYg915t0P/1UxI6iMayH5IU4ZWGDBrHiN0ccvaCCfe3MAkkyEl9mVvoT2ah1I78Ye3bd6P88r1fYdly9dlqqdluQvRZe58d/fCIB/gbAKNb43NXQSmlCwvbN9xhb5YbLiM26Ho/5JlIq5LWsHiZxJpV8GHe9uSfGxBWAqCzuTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhvFNkGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhvFNkGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4FC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773826493;
	bh=HcJm3hieZmgcA/6KDWNrAUjqdohUxyRh9oz6SnM93HQ=;
	h=To:Subject:From:Date:From;
	b=ZhvFNkGrInEo5tmJYP0kJb3vp449m0be7uNI/rFr+gTas0jIROq9BUSrKjhIpWVHc
	 7diXEHF1mHsKpqBhuATupQQm5f5sqfdX0NPfS5Hz0NpFpefSXbIRy6cE4sONzjwxMh
	 t/LpkZwLqOR6tFl3XCL7JZEkuQ9FrypjqDFiDE+gEuHGUrh1yFnSXYnd58Zqh0qG59
	 AKNcCdGaGQoC69P/JsYTIJUTLqDRbwlh/WJ2b5vuL/vt+cuPAgQ6Yqw46OS+jI1TVF
	 OHZZspQf4UjdvNHZ3Kq6T9UymSDAto5tQI1gVJknARtSmeaJlBKSQXQYpku2USP33d
	 xYQ7KCyyOTEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053410854DB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382649358.20359.10095906140717146416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4fd7b0bf12f29dfb0f3a94121a08bd28d4b3e597098bdd1b8652cf1a2c7279
Date: Wed, 18 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773826493
