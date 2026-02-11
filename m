Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390291373
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770789894; cv=none; b=P7W0v/d4OZ7UfPGQgEqB6/lnnkw/LMpzFIMD4p1928QwgjiIPUiEWsSQefoCNzWM+R5aKNNM9W99B1Y+ADZB4Bjb6QgDsvfktwlKHl0N+TDni1r6eIhdeWzcKkc0aJS2K7vDR2keLit4HxEX/aan4OiAqUOXbgCF6TG/O/0pzpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770789894; c=relaxed/simple;
	bh=NaL+zsqtz+DcTKZLgIsQSteqA496Wy5m4fC0FVd9E1c=;
	h=To:Subject:From:Message-Id:Date; b=bqWg0FtANzXQm08FhrO5JhyExI6Yxadbx/bCzgjBqa3y25XB8wvFFD8sZ+YR01c79DXK7ldzyz2+mDUTeH4mw76Ecb49nAOHE8lVvXcwvdSwiDa3+oTRUyur1ZtQKp/BhSiCdVy8yLcypYI9UwKgLz3OghEmPNvgaMWISGgJlgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0Oo84n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0Oo84n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BBBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770789893;
	bh=NaL+zsqtz+DcTKZLgIsQSteqA496Wy5m4fC0FVd9E1c=;
	h=To:Subject:From:Date:From;
	b=N0Oo84n8Ddkw7GSeun2KJkqaFpKNeVR1aWERMFy4iP2EQcE/P0D8KTAlpL/TUbSls
	 UzxJv+Ya00gMUJBtAlj2yVsq2q/2CCg1+gdQkkulhX0W3M4k5g8Vu1lfRdOlZ+/10r
	 1sN1O6IGgEbHDTyWyjxn3yG8ibxnlSgoVKViDu7wHKjmp2DHJkiwP65YjAPrEx+sG0
	 Ik8b/Gj1m5vxu5B/J2ZYi2NCfqX5Oz+onz8UCM3YOX3lKNTl/iuyiDXIPUCx7rF5lI
	 IdLSrQKswXc/CUBW96IgAqOPKCmQ1WTwZ/LgEFF55eFT8SQ/QPf1KcyLVyvaRNPv0Q
	 mYavCimdJCNgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C1EB5969
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078989369.6166.13542698734773648935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb82be5a3c8164ecb9f42e129301af91479429e11a1d98f8bb39b16bc56c29c
Date: Wed, 11 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770789893
