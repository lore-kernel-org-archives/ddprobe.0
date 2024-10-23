Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2E21D0957
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729706754; cv=none; b=BcHbmWYSZODeE2OgiTkjFieRybIeZjVucO0LVH83S+8ocNb7FNiFmzBJBqVS/1Jyer7PQRkuYGjEcbHb69fpN3pJ6WEMdhWYETHMCxhp7KkBSUvKSl7F6o8lKWlaNvC/eRguWhGxMd+dGYOJa98L4mpMv9xxP1ZUDObEe7f8QW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729706754; c=relaxed/simple;
	bh=aCPRew4X/w7GXt8tOyY0JW4oTUmSU9TmtANi0h987Ic=;
	h=To:Subject:From:Message-Id:Date; b=tZ1VBKni5bwjumHz1ktKL+es+vZNsue6wgq+M0Jt+M9BGcZpNOPZC0Gpz5QdYA18YUzDkRK878hQEFlwb7kFk3Sk4nm56M1G9LnJNSFaKzS/l0XnAsrw7e+Mcqbf2/kkvWTd7oyEi+kUUghScGYNILCwy+3LSj1c7x+upp1WC1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gm/g4HOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gm/g4HOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B2C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729706753;
	bh=aCPRew4X/w7GXt8tOyY0JW4oTUmSU9TmtANi0h987Ic=;
	h=To:Subject:From:Date:From;
	b=Gm/g4HOaWB5m1u5BmdqqZl8c4ZgomAku4AMHYOHMocmC9RbPgrNH+hNJHz5sFChHW
	 SXYfKkmLsFLPVep5K2g1pSvH8zSdSiXTt68GcBU7dpU/TOCALvedOGd/nMn+Re4r5D
	 iZBoc+QATiIpIQNzUh7JISpbrYlEHa84/PncWqnMoFVQ/XXY3y9tmNIGnSMEpl0bb+
	 Hq54JjYd0G1E/BCbu/SIXh65W+n2dUY9mJ89IgF7l8q/IZGFA59nsxhEU7isk5tFLc
	 KVCjSMvmwtYnv5HS2KBXMma3PZBbIMF76FtUjUFMaugJ+EvpvVD85zSEBCebncZCKd
	 RBgmwdUWb3zLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40DACFA45C
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172970675363.22176.13436836757859259770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d1c53ea30c24474c3c21b8c706167c48415f48d7b537433e0b2277b60cff05
Date: Wed, 23 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729706753
