Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269B7274670
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758747594; cv=none; b=EPl7k+31Qev+YCJJ8byF37E/hcRj1ODBVmNSVvM9pdy76tGuk4j5/PI2xTPVXGa/2aqA2lD3ApG6H0IKfcFqjig5mhFMJgSEpv5BS2ozJkUvNyUmEIRmH+tGTuTbA3zYwopgiXCT3JsTRRmFK85GX1ZgWXClOfQBjul8gqQDcXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758747594; c=relaxed/simple;
	bh=EhZfeLmVSZG8CCd13OuoEmZzwQ+fbNQaUvopt96vyWI=;
	h=To:Subject:From:Message-Id:Date; b=rbqEMvhHyrYDlS/oTZqcQ5hH7bqoa//SxvUS0N8HHQWcJ57FLeHMXGeMWfPaZW0d82Xs0woa/k+97oz3RemQFOVi4e31Nl5dGVyVW9ZH25m7u+/PygetcQpNeaF9hjilB144Ttt8r3kgjpz/9hdOBOelCR5c7Mpl9dBsJ5SV3nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pkp7Ip7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pkp7Ip7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D21C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758747593;
	bh=EhZfeLmVSZG8CCd13OuoEmZzwQ+fbNQaUvopt96vyWI=;
	h=To:Subject:From:Date:From;
	b=Pkp7Ip7jSjNi839t9+p+0QoItfWPTtJRZJx//D0/4nUoMhwTHAoHJfzwEaFVkSGmR
	 Yqf5MErEC3rzk8AQWb1U+A6uQhVuy0vov8mSSaTMeF6QgrIpCjXr4VN+E5x53f4SBY
	 bTaaOYEnzhcNJznMEpPkn4W06J97Jv46PYC7OON7+CdGWj9K8i0umC6aJirhbfUlAe
	 K0xwXF09ZdYzy+s+9GfydzignAt7znR9otaC6KkdDJsd/sM4f5V5WVqLEzHV/VddGE
	 hNg21Z43MRz+o8u2no/13VEog2KuipZ0P79vp+N//GK5sCbtuIimfbbZGXUx+DSLKj
	 kZA46ZoeviNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7ECAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874759358.31341.10513104814798893700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd7ba1a80f56d804165c5e208e19933982409550aa253a55d8d0f32d0c2dc55
Date: Wed, 24 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758747593
