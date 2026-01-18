Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2CD1E531
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768743234; cv=none; b=Y6aVafrc0gQkmiSRf4m6GjbwQl/ym5XpW8VB/4B5AepWzyEbwGR+N+9Ijl6dLSf2gnnBN2hwcwE5JFMXcZZRK2FCt4q10DiEQDudMZBDsutnffKIrnvtGJE1WOLV4YlMGjbreY0khCcKLSS6Lx5VO+VohzQSsAAd26u3AJ2cYdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768743234; c=relaxed/simple;
	bh=qEBZfEU7B0qwEe1mVS+SmjSJUZnMn3nibEOUNXJ13xs=;
	h=To:Subject:From:Message-Id:Date; b=DYqzuB9MAP/o+cB/12rYnW3RLl9Y1uC7Xi9QWWIilkuw9C9kTyVz6r3v+b++8x7ZFJYkLeiwj5PKR1FFqkoyZRoaOJpr7OZ07HteC56MTPlQ6HNAWHGwzO8ruvAQNWI9CD1siwPfyzFkgPIVIsrKMrzIN3c8hNrBHcSjIelsKak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YstVeRUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YstVeRUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9664C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768743233;
	bh=qEBZfEU7B0qwEe1mVS+SmjSJUZnMn3nibEOUNXJ13xs=;
	h=To:Subject:From:Date:From;
	b=YstVeRUWCRIzIi3mYkdD+rFBu+PFy3hxDQnx2vLo4a99YPQXdjW1veH6Q7/PRqWFs
	 R4XMRwqfPu6HyamSAphDP0seDZKTzpW9TzmNpk3kI4109LnaJXDVTqxBAw77nApb2d
	 4V2syHbzCSllq4Ez2fk69BZ6VKClDmrMOhZ+WmLRFg+1YQV5CDC1bXiecpUAQVnXAX
	 rj5EGR57YhviUIHNlPZY1uqyVUY9NxfFi/LgNPf1LUwZ6Gs5OifLxYmlw5fJm55LZZ
	 TxRC7Cb9EkPQOoEXsc4NL7Ww+43LSNTWBOQhaYimW3PokQxglHLb9oif3rgiVIS3w0
	 WWeCJ1JSFGKPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973FFD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874323358.3536.654498557106983112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f7e16418bfd403f650abd4df939641481275e7e5dd354521f9edb113e25869
Date: Sun, 18 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768743233
