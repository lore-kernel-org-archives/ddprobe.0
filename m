Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AC1219A6E
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738746354; cv=none; b=H9q52S4xMJOGfwYOnMwz6ZQwlO/L7TuZYyzUorlYY9LVLt+XgmkaSJCOJbwP8IPWL0UbIzK02TOyOY9VhRcaS355BZdQUpRBJvPaN9urCboVFwyQxhOAuFhrYWyLCfoHCjf2rmESNX69vlrbDLVEk/QXXha3D2lBXjwVyVZQCXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738746354; c=relaxed/simple;
	bh=lRwfp+1ejNIxkysu6GlWJPUDDTiIN7Y8ggmaZzMuUb4=;
	h=To:Subject:From:Message-Id:Date; b=nxGhtTqyqzV/pieY56ENQKpXw36WJ8d0Hc2j1RoNyH/kC+mrjzIkvdqOfximv5IU9jaVJjW217tKi6UbUT8ZYWS6x5kcRuqFKCIVxpXz3Ke7Q0aXS7LNMoh5+OFkbjhIZcQspCADWrqugBQ31KJw4sjcfHdfi1V6HBB4jDE+zaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZjLhVfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZjLhVfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC580C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738746353;
	bh=lRwfp+1ejNIxkysu6GlWJPUDDTiIN7Y8ggmaZzMuUb4=;
	h=To:Subject:From:Date:From;
	b=tZjLhVfLQ2h/Z9VLArhUd8j13w0OrFloAfzxY1x+IBAubNDa0ojIpRNTh3tHhy3xL
	 f+SJ6EfK0pzxB1w5DxNdccxnrW/XJYAmB+HdrxnPZbpTYnvRpG+xxzyEVb6XiVweGn
	 36sM71AbgFAhxKDckFaEBBYQvg2Onj66Pd5hSFzOldyaa89+5BBMhx0mQy/eb8CsqZ
	 OSs/5tlHlqgu9hO3FGrW1Apor6fdfh+3NUkcgrn2pc6mMHbmknqanX1k4ictAEaJ4j
	 lLPMZYywKTjCI3va2xmQHmXK9tfUG0GIO0lOMVDjVwrlc594Mg04ew931rhOzgz5QV
	 hNo03tTmcU8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACCC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874635358.13087.2573797190425694332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5847755480b93221bc26e8f95e5dfecd9a6e948a8a2be137157de5c1ab0fbfa
Date: Wed, 05 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738746353
