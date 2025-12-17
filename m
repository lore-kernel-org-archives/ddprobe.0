Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB8A21D3CD
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766015634; cv=none; b=umFAmU2ycX1+rF0SwKroiPOjqIjXc2L8/BMkcZowSa/iObmzpJu8E7bkZDfV+mgHkDL4eiYYUa5NLsTd9Gic0+h0Bi0W0Vh2bOVruc8J+pulor5rURqhoLN1AFe3iewc99ydZrhszqrRXsSjfRNJbUPQfjk/gipt+UaI0G0I5zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766015634; c=relaxed/simple;
	bh=JHHkUEd2ASl5Gy6z9NZFRsB18YDG46OzP4BWxwrPEvU=;
	h=To:Subject:From:Message-Id:Date; b=nkh4UAzdDOJZaLKq/8wbrakXGCASSbsRblhpzsPMI0SM1JB7DBbHc8z9i7c2xldqbdvoeHuUkKTX4wdApbWL2rVGP3Qyd7dBhljOlvJRGXjZH9cNFTtMkHx1ZipJHBLGtFa9X7vMrBcgb4BO+0ocv4QsGJBS5WjHTfgwCo6Zi3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA+3EAr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA+3EAr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE15C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766015633;
	bh=JHHkUEd2ASl5Gy6z9NZFRsB18YDG46OzP4BWxwrPEvU=;
	h=To:Subject:From:Date:From;
	b=sA+3EAr5GFrz/RjFad9ntsXuXeKItj75x1DsVO8y8ZgmB8haS4jhqvSTPxvLW/lx2
	 zugUWmNKOI10NvAqnWIiyNlYriE1FVKI6eIxhTjkLSnzYjkGU3Q7B/CxDE8Z7H/ogj
	 6INbnKS2xJeuFCKAMcerQ9706rEDCvt5LqbIh4hZ9Yv1s5unCV9ckzlhJaAshFS5xn
	 ypkrSPgCIla6G0MKvhSYX33mvKvkvsGZUvLdT1hsP3vMH9oGInKzhov7I7Pcc53G+Q
	 tiYxGSaNpwQtwc9jdOVOEeXnfSBINOdwUJ7hAxxuFxH297aC44YV2ww+BkkVbDTl4g
	 MR5vPixlrB7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EFD65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601563358.26625.1434363402826115246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db39b5581d58375931dee40613291ef8c1b5b4d766197cf10f72361338e95869
Date: Wed, 17 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766015633
