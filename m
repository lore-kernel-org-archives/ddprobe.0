Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D122748D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749169794; cv=none; b=XMtSxgwBuCsCqHYhgRdaPX7hCgLrLdRua++du6UpReqFiZs2u9QMHfmQShdwiLgA7B0zXEfe03T0Zl8MudDjaHZbiYeuzeL1WaMNIc81cvIVYut8JIlxJn/BrqKnBktIDerH2FLLB1H9t8fNCu3PEE9ygxaJe+E0tHsDo+S0m78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749169794; c=relaxed/simple;
	bh=ApYeBKNAndzGqZl/9AEr38n9fxIyoWC1oUtyupGBmdM=;
	h=To:Subject:From:Message-Id:Date; b=cY6szik6bihMY3BVaAprhyueCrhScY+IhP9nQ3rSai+fOo8QHckXopoc9hz4bIysYz5XbcGsX0iw7JSDYt8y2m/BP0UW9XE/Bgf5e5DZi84IcTiIDV11817ahMbDAI+R2Xa7cd13jVBB2dDxlxmZ4NWRlSxx4Cue4LIerFJNMKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPViGRty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPViGRty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749169793;
	bh=ApYeBKNAndzGqZl/9AEr38n9fxIyoWC1oUtyupGBmdM=;
	h=To:Subject:From:Date:From;
	b=bPViGRtyuGb4l13MnSszBRpJHzmFDqFDhsgNSL6Aufsl6/NW1/W2xBcv9Gjapdx48
	 LoH1gLLxlfBhbLAH1mLnpQgehw9uYks6nhwuECY3UNgH0Y9mhUpIKUHoCLrGWUTHoI
	 gkBYAQeaZ9oDMOhEfyCPBOAh7GYxNDITyfYH7Fgd6/SL0EgYoREvwzBL0FunoHbDdw
	 x3D2qJJ7FQttBigcAK7GM+vJMZHxWQ+27MfFnEXnXQK3mjTpvueIqL2CdCyqsdR1/X
	 ju4QLDXs67h8GyWGJwx3eqtFuaouLtvXKupLELuJ1LEjJvioZGSwTfBzA8AkQzNbGI
	 ljUfn4eg5piiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F919C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916979357.5253.3553002713155746884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c905f2984c4acf1e44776c061000ce5ce6817d09988ccacacd1ddf8c8ebfd9
Date: Fri, 06 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749169793
