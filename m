Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13CD6A8AD
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712642296; cv=none; b=UYW07/qUa921oev4GtpZc8VFYe7s+GIKaXZ08hXYVbMor+BnrwJt6Yq+yBwG4aut0ljYhxE3SDUPNtzKsg0V1UIZ9+hKEK2x9GUtfpwkCcwU9Tv/i8ojkLi6XgHzSHBLWHgExgIFZaM8o5zNBCXZQT5rQuwpo8aMWfjZcJGZTGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712642296; c=relaxed/simple;
	bh=0hE7w6JwLgmOB1kzQYqbhU9zmOvlyNAEaYJ8OCIy/FY=;
	h=To:Subject:From:Message-Id:Date; b=abTjTzFTcBWNCAxbQd0Vnsys6RXjIE/SmBNmQy9hPeLleWUdY/AfS1cBNTVEgiqJpkwhrpNjfy4jFd3HBV2u+WHYbkPfukJoW/r9dGn3WDQ48HliRHfi7qA9hVlX2BjKdLQvPYdjXlyGy/Z15o/vZya260yJN3UJ1k3am/wZIqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVRCSYzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVRCSYzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F032C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712642296;
	bh=0hE7w6JwLgmOB1kzQYqbhU9zmOvlyNAEaYJ8OCIy/FY=;
	h=To:Subject:From:Date:From;
	b=uVRCSYzGj5v4G8Aw6kmOfU4Rze1BU8bmmlI+rRiDMxRrAPG71Cq4sbpqfwQ7vz7/W
	 2NL75bMGgMPkbh77h3XVHxa+DnYrS2E4LqCsNWCv7KT2xY0Ic8VJcAflhyS8+VPASI
	 sT9kUUoFZ4fy2AtDJgbiXcWBqgKeuYbhPSC8mfpr+jPgGpruRXs/sxOovfEDzDmbbj
	 v/KMcJ6cWVB4nZEjxqkX+Q5HPDuotuUVDVs4WDDNHRR6tpHuQ9icup9PeUr7Rc/D9u
	 Wsgb/fAdhQ2N4mO7zcOBM08EHdxaJxR59UYoR7dp4zMlkX0EF17YNKIwJlPV5mMHcj
	 QkD2YpbFFZQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C487C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264229643.6035.3175787010854267149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819dfc26efd028f9e88027f71b2f5e42e510748d532166af84ed70c980d35566
Date: Tue, 09 Apr 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712642296
