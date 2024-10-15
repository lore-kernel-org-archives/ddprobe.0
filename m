Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DAE1C07F1
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728998154; cv=none; b=uHX2MLbLe9AtEfdYUww9jCrdLsD6URyK3ydCmnTXwbhJKOBCrXftxOpBMDjY8Ym97auvAUu9TVCk9z4bas+3N+nY1R6N+OxQGow/fjxQfdNEQJUVrL669xz5XVMqenDXpdpQ46mwav4TZOPQwV3kKgktUbgnTGrTpYzCCcQdI2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728998154; c=relaxed/simple;
	bh=rh8mrziismN+CAnJsIar8WKJwuQzQHFUtGls692p/gA=;
	h=To:Subject:From:Message-Id:Date; b=gCQQd9TOIDW941fLD+ltuZVyAUCZFpCiD5Qyi3M5qi+sIHYMJN1EFcYHumPbYy0QcQ9KKV/el7yIzASCvk0MPcHyVgHF6jW83DMmwGVA0/Jl5EEmGp7sDRE6bak8LwckbqXL6nZFb8GPEVChywzXjfkzauv9HvtfAaR4uC6Mo7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CexgCQxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CexgCQxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE132C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728998153;
	bh=rh8mrziismN+CAnJsIar8WKJwuQzQHFUtGls692p/gA=;
	h=To:Subject:From:Date:From;
	b=CexgCQxoicBrOoSbv6gauN9PFG8i5mKZc612CAJUZXd0lPEUjl6HjryypPS/z6EuT
	 Zf9aXaGqFVXukH6WBrE2Lr0NyC179Gttmr7/HesjtNewI96N+HXZdu5/NCgZlw4e6Y
	 6noYg3kLrL6s0uZemoikJmySae1pXq89eZE0jUbnlUQ1k758hvf7+jsRW/dvuqxp/+
	 m64pw7RXguPYfNUEOI8JA3b8sjzJRgl6KQDY9YABEehd+8DOmgfisTrVtehDCCrp4e
	 imez6f6x62gqvOqaIN36aa+fm39EVC3hEzl5ioM5Co7KkGK5MJAGloI+N5JdpUqYle
	 NARJXH0mMDb5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980EFD2169C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899815361.433.9905890531658002193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043bfdf7f1b64c173f706523689e6a55f9853fe4ccd3fbb076de6ab2583d653d
Date: Tue, 15 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728998153
