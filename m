Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF212C21FC
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766453634; cv=none; b=PkKHfkh5/z0HU3fNbjB77VSn6mg5Ha9IGe7H5EBCEmqG4dSaNqgfnQy+Br2GEHGyOFUmYsOnEeVL+L56H20flixk5MHyBuXm+ET6c8/2dp+GS+IUsLiYsHFZ8qvc1go5EnlX9CQN56ekUbA3y5fLasEWD+1FCmJoJvSrChjRXBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766453634; c=relaxed/simple;
	bh=nY1P7kZlWrlmtgM6kjqgIdys6gX8F7rL/KVGGJ+ha0E=;
	h=To:Subject:From:Message-Id:Date; b=E/PbP7audCq0NiL2AZ7XHphScn0Q1YtAM2K5M8LLiQb0pk4uUrp7y9NllwcUfb8woQ0qL24rM6iTZc6WG6/8Z44+sNWTUYVkrjHy0TOWPeGa8Q8huF9HDoO4QY0HDFVOSFGW31C+MGp/mkQgESii2WhJ1vprY2zRnKi38TABxY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJPnnHK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJPnnHK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766453633;
	bh=nY1P7kZlWrlmtgM6kjqgIdys6gX8F7rL/KVGGJ+ha0E=;
	h=To:Subject:From:Date:From;
	b=vJPnnHK/rUtRwdGOEi4PhdKhdOxbQ2Gfzz/LPPmMTK8Uebgt71op3cd1K00TBb9qE
	 UZELOAoxLKWC5H2y22SXNJsmRpgk8ys0lUPLeL45+MO4DNj4N6acDKY8Lcu0jDXv0j
	 ZAL9JC7+l1Rf9FTBgLEcWuMUU2mY3sovn284BF35D8wXWH6MjiivFJ6Ka52zgeSZyc
	 f8yjflNHLEoS9MHydH/zcBHm8sbTI7bY/HCpyesv/+CKKo1YrqyOx/j9BBWUvVQtm3
	 ce1Zwm8Jt63FcndBchWZkBSSjsEKWVOZOkFGyWI11QhjV/ZR6rpvY7Gv67fM9NuPJo
	 Siv6cC7bhHBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A5AE6B26B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645363361.5364.15873292335381027925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe094f04222de903116aa23fb4cfe73def0bdca92b4e00e9b73ecc620b70fe1
Date: Tue, 23 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766453633
