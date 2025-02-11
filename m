Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0F71E9B23
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739302254; cv=none; b=i7Zj2Go/u1RfqMZnFC0H+rWGoDblc5kAM+2mDPH/USGTrdEBD8/JOdorqg/1ubAvLFABrY7WT73c95+1Lu6QFZ6YL1cWqr8wJILgMA52OYdmogDyYYbE1AAGpYHOLMI63XJQpJQxASO1rezIPndb7jpUVpJA8r6vREsoRLDHuow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739302254; c=relaxed/simple;
	bh=r3fbclkACojbfrc7WjvuUDm25SumK9HaUchTNpdUhNY=;
	h=To:Subject:From:Message-Id:Date; b=pVK1rcYMi6PqdCNV2jlUxU+I6Q9P2A/8QLzk7AyAon6U+LwfaQJPiRdz9UKySL9KK6GpsxLdH8d6CKrMBaAAjgUndkRQudy0Tkv0wq3AWhX5aAsvrgannu5hJlwaQXpAjl63GChRUS5Xj75hZ75P6yef7zlEf5D1AZhv0QPGhMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbCgAbC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbCgAbC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A961EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739302253;
	bh=r3fbclkACojbfrc7WjvuUDm25SumK9HaUchTNpdUhNY=;
	h=To:Subject:From:Date:From;
	b=tbCgAbC20Imcc3oI3Fi3XN3V9FySnA9QZm/tckKd5fEVUp/68vvupGNlq5+wO8l94
	 HU/oKjIsr7tJ+38q4OJiKLMx4kDYvLm4vu0eh9NgKbtZJ/7RRu5Vf3ssS/BOIlYAAJ
	 iH0Y3AyOcD5/Gx6Ioud31huyKZjtZFlGB61u+Bs7w5e4tTj/EKeLaK30qPGDvKShrI
	 d1ZMrJyd3P0GgXELMsXF2BtElBsmjBQmzRkLU6NIm3OmfHd0vwKKlUJtEUgL85rKzz
	 scKIKFLPD50RGpchRzml3m9sVj79jKKVEeqscNQza0vl40vTwO6J+an9plIzC8H2em
	 AX7F9fVQEiuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94090C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930225359.12273.14510849538094511427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368e3cfba6b4c95ae2c62ff6fd1c0c16edd785bf5bf1507ac7c2a4414924a04a
Date: Tue, 11 Feb 2025 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739302253
