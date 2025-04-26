Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C803189B8B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745692795; cv=none; b=JTbFNXkRfGp28KOkE3p7L3EWej/5iQPsdayp4IYgAjNPubvgnG6/Dggmi0fpidunSJzbK/4F21eL36KVy5kVxk7ez358a1pIjKe+xWWJ+HzQnzXv+uWMA8pLX+rHttr/8Ko2beAkuR4aEb4HosNryUBw/uqfIlLZue9a3aianiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745692795; c=relaxed/simple;
	bh=+fc/apUFJf5uXDP3MN6tHUBBGBaM1D7hCGP5T5Eh9qk=;
	h=To:Subject:From:Message-Id:Date; b=fBTRmQUuwLlTFBJ+WyBrM/OH8vFjJ9SfOLRFSGgbzLQLyEi5fYPbhiXEiavz60J5q2psWBpGUssENVJYmw+3DXV2VOt8tj2hDMNXrUmP/RFmnEkxb5lQvPvwisj9eJXRqmzDI0z8k6y4jV0gcPumi1TMWnkA3Ong22Dc92cxNDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4+cj4ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4+cj4ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E63C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745692793;
	bh=+fc/apUFJf5uXDP3MN6tHUBBGBaM1D7hCGP5T5Eh9qk=;
	h=To:Subject:From:Date:From;
	b=g4+cj4uaSzQc6uKUqCgQgB2uD4iwSOyqNM7SJvZ72HD1FIFkSYGyy5HfN2u9knk3J
	 mn/IohUfkx8FDYVpNy1T9uX+7V0erk3dzrOH4jFwjfpD+a8FesoH5xX0IET673DP9v
	 sOM0xHjE770L+Td4a4rV3bHWrTLkpQWtVTIQcafffftDbcXvPVWwiARvXFsgM+2lDG
	 UPqWOXX4REJpQHiwfQgMAxkrhDA3Hb1lRgc7xuXx9PzEjA1sHCRZhUVP1gF6OYnGjH
	 /ft1Aq2Ys9GgxvH9t0Gq4/CVcYNcOe37xIWDQ48bzV539qcUS6ZlpP+YVDy3r6z4zI
	 zQFiaaqdqJVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569279357.952.486397336435106507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1bf6f8caa6e6399faf91b825ba6e0002e91ae83650953dcbefe20c586ebb47
Date: Sat, 26 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745692793
