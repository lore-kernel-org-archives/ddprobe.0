Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAF6134A8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747446594; cv=none; b=rMFtgVw277q+f4MUOiPYNeiIskzIc7sN0sKBJNHzSFh0tfKO2l9b16bPvZi9cqsPn+iJfhUf6Jc4VGv8vCyOalgle468NhzX8E3Gu4rPs0AqGkElztfVOcGG+p5jHoI320zgsOg1FiqJUaQYvUmAUk+qpiHiEJtftETuTeuMpII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747446594; c=relaxed/simple;
	bh=oZGckmFS6g+IL/OlhoIKX6WYD8qcxvIcKs9+gfiTx5A=;
	h=To:Subject:From:Message-Id:Date; b=uKbSvp8rnf+54pVNZPga4n9KlvjfQGf1oqA/1lQ8BgPp6hEfwOvIlvklO2OYHYnk/lhl7YdztutsgIebpDpRFaB8GiiGbNKI8UHPjNSdVxE56vglneIRD+pNEdPwZ5k66hXhDcJ1zfcHgEqnWiBi8cIgUC+DfjZMnI6J+pHVfCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm3ZN64Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm3ZN64Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4238C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747446593;
	bh=oZGckmFS6g+IL/OlhoIKX6WYD8qcxvIcKs9+gfiTx5A=;
	h=To:Subject:From:Date:From;
	b=tm3ZN64YEG5mAaq1eSF6z4HI6+jFbDnLrM5E5uoILLrMoCC3PAVHseGsQRfxQ5R4v
	 O3+QtWaaark3CJC2y1o3hnRcNWoelutogdQly8tPDuAQgvLmcuqYoZ69oFZMpk2nWO
	 Dvr8IpYELbI3jeqsm2y5pYMG2oXvZlGi6kuZRyGlL2bvvdWl82Dv7haaniCo5tOlh5
	 xGX14FrHN400B88la+tHYXhu4vZWSxGMKUbdXWOApAasblzmDNEZcWMgklsT0j4lNY
	 sttcHr6HwF1BUClw1RGdGkMLV7cF9ztRms6+UeLI+GosvhAQQTeSlMQQVjhBazd+uu
	 CdpHHMh5nZHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C9C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744659357.29297.8699571886637676241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cda394b800a94a3701a3e98dc6e1896da9e59a7a55bfbd0050c647982a5e502
Date: Sat, 17 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747446593
