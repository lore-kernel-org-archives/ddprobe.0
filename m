Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB7A25B663
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754641794; cv=none; b=lRk0n4NeS76cESmpaMAnWaOKDwPj4MaH3X9+HlYDabwe1mGzZ70AMC0V6Xl3uRRFpwfy9rMvk5pJSQqLRgcuyJHRgPQI2kcbYnbFkfz/M/C5xDTf7haQFnoschqBn4N3kcbMDGOua0aVGTo70futZZnqSrJC0S4wI91EnpxxogU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754641794; c=relaxed/simple;
	bh=hqVZpl0cdgv86E5hcE/+foxdRKiFvu5SpyAPQXKgz6w=;
	h=To:Subject:From:Message-Id:Date; b=UYDo3CkHkVMdnCKOf1Z6h6UPPWvjdZ6MOI9WVduIHu7KXPCUg755AHh2ii3jGeCygtYZkiLH/lh21guxqcG/z1bG+FZgNh92rkd550iQNdzhQpX57Vh7tRRpvIMNralR+49hsvpFbmNHGdPJfT62aFxz6kB7/FlNNhvrFG53+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWuOtxne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWuOtxne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CCC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754641793;
	bh=hqVZpl0cdgv86E5hcE/+foxdRKiFvu5SpyAPQXKgz6w=;
	h=To:Subject:From:Date:From;
	b=eWuOtxneBujq0B6RJ7mBhh1CsgU2O5YifuAoZIiy/3pEpblNsCqwurj94AIoUVKUK
	 Gli0iBKIh44c944VUbbpw9vKav6mSo27OSjzGHOKR02MoPqTo+kvLRPWNmvyIYmB+r
	 N/b4m9Hr5NNfK0C/sqDD0I9xOU/VQzj5/F6Jo93iBWorH0zVvv7KwIjW+PZm4wtXlK
	 29n+1ndpqyNhVooMo9iUueYeWMtz4P37EFR+LlUFVZfwhwirNJAvvGP6rDZrABDzm6
	 YXEOO6P5UYojYZvgv+W/E4Wxp01yJ9yrgKh1wKPb16hKkD3CrhWNjVeIb8Px6XSDVW
	 Kx6ZJR88VuumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD8C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464179358.30418.6213404386459464284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ed0a6f13b6c75941af78efb5660867a868eccc43355054bd3f101e23cb35a3
Date: Fri, 08 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754641793
