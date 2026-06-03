Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307CE305687
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780462474; cv=none; b=Ez1wNZbSMwITKBFnDZqc1B3+rv4yfn3EKPoBvKV/5CYebBY13Jn4TwtykFIH7CJVLRHUgHnsF5mUvwjcguC4GddtY4t+aQbjjxAFg3JK9U4lknqkXRgEfo+sLmvW3DeAC7wynFXuPa5aP8X/KrebnppjO3+o2sFjUfGvVLIeTbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780462474; c=relaxed/simple;
	bh=YOk0dh6RiG0tOAG/Se0xKqdoTVEZb9EJp1g0cgGHm/g=;
	h=To:Subject:From:Message-Id:Date; b=dIX7rKHMku2+DvN3fmIdK0ygYHAePM/SA/L2praj4z6XCZcodm9w86a78iE/HTe3HNsUgKBndCANVnKDLUyGEkv8eeKj8G1avBKChEdiNZGYnxVzY95UQ9z/VSDOaO5pTbhQ5BW2IgZUwg2KQZZrInV8x4+Ae0RNgFZUNEyQYIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2z9xdvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2z9xdvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42E5C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780462473;
	bh=YOk0dh6RiG0tOAG/Se0xKqdoTVEZb9EJp1g0cgGHm/g=;
	h=To:Subject:From:Date:From;
	b=l2z9xdvJgG+16YdEVR0brM3kxOUu5nxb1W2lVThTxUPiEOm/rCcSO0IaUHSIMX0DV
	 +jKPsTHlYj1KaRlGeCXqfulqzrLrih4k9zbbZ2nJGowTpzH27rB+LUlBNWq8YJlp+z
	 Inlh1btD5jLK9k8MXjV4t2rfvSomHG+uWo3tdoLxNi/0yznthU2ZS3owyKx6myraUv
	 brn53vCbyDCdW7JHqkfZLIQL7F6UXCFbJ1Igf9YJ3C4aLeNcvm96W8LDhQLBOzWdG2
	 6DXK8xr+oXiRpckAlmmzWI8HuOhkTJMNz2jIwqpYo9s0TkIx4PQZCl+JUMXYvrZq/3
	 k/ntWAU7DIxGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7658CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046247367.1119.2832770188102456015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bdce2b559a0e2ad0389242794c195456f05e6b15d1032123e3230a41eb9216
Date: Wed, 03 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780462473
