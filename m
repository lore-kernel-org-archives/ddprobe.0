Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD5F22092
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735371354; cv=none; b=L/sFLzL7Ubd9NAu3N9uYtYfIA4Br+TiUPwa+na/NPaMlhjCkFiOSUkc4kq8vCKQmrL4KOd0ktMZCR0YwKmnBCIkdH3AGLXKT/Uv30ZzhOKvNvT0EyADhjEzBfezsgcVuFOu1Z2DuubASjGNyOluBij0odn/ztE0nBu7hXxi87o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735371354; c=relaxed/simple;
	bh=e1k1UVCoSukThdrbDypleDcEBbapzX9nnJfL+wH4fTc=;
	h=To:Subject:From:Message-Id:Date; b=BTymN1vlNZlVUaiEwAXX6e5MyxipV78kLrOoQm+KGJStvzLWhGws9d1Zh+jxeEIvMgahcHUacty2qUX4byDiDTHrgpmCM7vTsAHuZrHzjvjsl1Tnv0HDbpfUGENvYwzyGjGU6vx5pTVkG89novp2MMbAMMoNRxQy44ilym+s1DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIvP38i1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIvP38i1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFD2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735371353;
	bh=e1k1UVCoSukThdrbDypleDcEBbapzX9nnJfL+wH4fTc=;
	h=To:Subject:From:Date:From;
	b=TIvP38i1A697XngpbTcYHBOSyef8EvdRxhMfYR2BQGO/em5dssMY6BQWpFYWWaE4z
	 nyq7NZ0hR06nvK+k/WSuAtrIxSvh2rM8EGSOQXrTEybV5IW5vfBoscD5begiQqrT1w
	 uQ8ajgklj3VeLCeTQdoP7GIKec8fRZahnAkpHjz3YuOsNdj2WCa1OHRqbJZ1k1JAwi
	 9LBI41c+2Q7lPv5ngcjklPP7iRgxKIn2Sip+iR2+cXzNC9IkdxJz2FdrJ222Kzvn8x
	 h8CUuCLHvauHvzvR+DMkjrfZvPMnChwUrDYxh5hQ/6X9KbJz4O7nAFjvx8mgwfjsgC
	 GdwPkS2+6JO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE3E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537135360.17508.5898455153289479032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9e673ac8fa4d33d0c2a8466a11a65f730970c0120c2a26c5c812c135b34d22
Date: Sat, 28 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735371353
