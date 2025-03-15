Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E1D2E338B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742081394; cv=none; b=N57Mj2Ihw7AagFvSydqAeZXTvMJwsYOTglU+hOx0tp5fwAIuOqxa59Tkn4zPm70WZA3qw4YRhpC+FfbS3nynrdF6MjmBpTtnbk3JF9kqbqMoWi8RdoV76hMURSK71TCKf+Ofp0uremWHfiEK0eReQj681b/XrWDut+wUci+CdJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742081394; c=relaxed/simple;
	bh=OfnaRmy58XwrpcGusbu5M+AJ8hiyVtbQLDz7+AuStvY=;
	h=To:Subject:From:Message-Id:Date; b=T8RJROQlGlKr/QA629IJHSHnuigMZmeXKvMud05fnAQLrQeEvKsMvS5l4U4zHU1IVqob52fGE1IJF3GJ9YDON+NPUZi2/qsu74N/y9XsDyRGliqeN3pguZZDpz7/axNEYMMxQwHCApV2Gz20NwOu3qOUZpL5LLbGv3xeAqemci4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra3VwZJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra3VwZJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA200C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742081393;
	bh=OfnaRmy58XwrpcGusbu5M+AJ8hiyVtbQLDz7+AuStvY=;
	h=To:Subject:From:Date:From;
	b=ra3VwZJCxHfAseBOm3MoRT+vwJzNIXbuCDFUI007GwUCnFIOK6r1a3gW8pdOqzuMl
	 1VMq+38AYVOio8tKmPbp5poMz8CC+44niWfyYDjInsfL7OMYMud8AUV74u0FQJx0Ss
	 yFeUA9KNJhjixUY3I8SMj3aHawaZeC38877TI7syv7OlWarkZKg6kW5Dyzjh5FZ9dW
	 FajUN86QRJHz4UtWODJk9WrwddxIJyD2HkQ2eFyIvCHVAHAbB51SGT7y+8rLsKFHWR
	 7WGxxR1KM7VwwCySo3cxSGavLqDGCFNBUqIJjJohhm35Xb15DawRMzDeHzTQIOYrov
	 avzIeqCRcoZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF5C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208139358.10339.8061542045955091122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83225f64d40a4fac95dc376a49e70b3593b6d738db1777359a0c35712851a734
Date: Sat, 15 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742081393
