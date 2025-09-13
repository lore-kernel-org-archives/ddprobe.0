Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC68460
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757791794; cv=none; b=Y++6gLgj7R8a1PfHpnpMuVHAl04wt5B9P6FQBU44D4yKsM8aFKF+Tomvm62UKMj170Imsn2i7bvWj9ESAD+wMDl9QIaCgXFEaAEjvTqFUjXLEA3nQA1jhRkD+aqp+TND4GchRLX9unlhDRAQNs5+/6GnsZmGRtQVsC6TA824vko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757791794; c=relaxed/simple;
	bh=L3IHneHY8+mtoV8uIGqjEXh12TMCXx+yDAwzJYJLo6I=;
	h=To:Subject:From:Message-Id:Date; b=X/pl+Z6N29CNmMY1rmnMuFirs6z4UkKjcic1bP9E9eOa3ZBW3ZbbdUUgBEq4puyNAhuQ+viv3W0bE+M1RKQn11blRMhFrnpEzuhiFdCeewoUwvf0iiwiQEH43xkBDfNY4zexGq9tP1KxUbLw8VU3yKthsy+DIlHTB//8EbrFuKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZivD6p69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZivD6p69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757791793;
	bh=L3IHneHY8+mtoV8uIGqjEXh12TMCXx+yDAwzJYJLo6I=;
	h=To:Subject:From:Date:From;
	b=ZivD6p69whKFoFO8t6m/D274rLZz7juZyEcRSHBSo/13OMJ/23aII5oyw8tF6c4vU
	 qBNOw31VhT5E7TpzAtfPlAQfzMxMdLnaRCRDRgrZZbUf20s1QKU4xGXHP891l+jj3g
	 qelucLSkd7mIiq6ZFom/wTevcDUUZd5vftI4rTDjPMoDJOdyOW90uTa9c5csb9SbOd
	 yfjM+naLAMj04gmPiXUqDxMCsIaP4FzBI7PwjlymXMm/MURlh3UjJi2TJki9lmyZya
	 VLJbXPRN+3q2HNISzYoNAs3TmDeVXVbC6GMi82Hd2kMmnDGX5rY5UJZaLi8UyGEroc
	 zl/HpuDD6ztlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94827CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779179358.15928.15434053936818105849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7492a410c51bce8b1c7aeb4ce5779ef47974d2454485c1659480141257bb20f
Date: Sat, 13 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757791793
