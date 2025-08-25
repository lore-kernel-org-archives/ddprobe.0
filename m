Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466CA283683
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756150194; cv=none; b=myDeCTLLZa8MsTKN9TAACoWfFdzALbSci4bd5k2Bb6tEiH1RxYAMVbp+Ihcdf4SWFQCUyd8NYlHwCJkveqXoC8/thD0ve0obA5qjPLK2AVd8/bUc4XFMhwsrbhyXfPqPwAF7mHqH5CpStqVxULbNEQzGUJq81eqYcF9QKXmNhmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756150194; c=relaxed/simple;
	bh=BrB1x8HGVxXQRg4x+woUiVpPlcbN7xGPdosK7h28GUQ=;
	h=To:Subject:From:Message-Id:Date; b=BbJlu6xu0hahonacL6DopK7lnS2W0O/X+MWd/hFGAF62RY2mMmjLlhWNn0TJKxUgLu3IO4eDcoQH7+qX1UOEE+zG89JNVvDssqsbQJLvn8BBEI0ybdc0fGYXnJWneoe+14UIBcNPC+L8CUgt99OYVzhWanOhryM2gGmqYo3ugdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeuA+aBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeuA+aBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6373C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756150193;
	bh=BrB1x8HGVxXQRg4x+woUiVpPlcbN7xGPdosK7h28GUQ=;
	h=To:Subject:From:Date:From;
	b=UeuA+aBO1M179VxpiGnr332Nyuvs9nRKDufOA7/4J4boaZVIlyo0coj1ZgD2Aa8KF
	 Zf9boOrwJHAgQ21LfRQ7rDytO3oyhAlSmvAKEOsk4JBp53S6opNna0DsL9MSkwim6G
	 /d23LC+i0qWN5lUABxLBXP8efM1HLEfX/RLMTPAX4CbUjLI2QQIG0yWAMDgsCy4Gr9
	 G4JI2dW2LmQwfEwKJu/gfqTFF+qI3N4akKgoBEER5XGOjqD3WNqQGniUT6ms/c8iRG
	 h28WU6CeqI8/7JJBO8gYj/zeKFG4PHYBetOJyPVXs0Vt17a+idU1yIKarHoI6OFUj2
	 Jzsfiare7y+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94844C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615019357.21383.6574030071308042673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d71d254f80556a4cd9d086c29526b38a562c5b4efae35a84755bd69238c5310
Date: Mon, 25 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756150193
