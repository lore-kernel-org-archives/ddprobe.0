Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889B2ECEAB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755074994; cv=none; b=F3qkOekICiIdrJ7ElOr1NnzBXyv3Z2GU9HnXB8e2Dm8dng067IVxtmmVv7rUI1txyP4TnMkPJenzr/VaTG33EGmmJTZ7bhzd+oI84zCYoHQoFlStlSVuvP9Gb62We964TENdY76v8bRMRE8lEYhd+ftSsp80XCWRIOoNxuZ5ZR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755074994; c=relaxed/simple;
	bh=vrubaArINy/nkkCNUd6wC0LmJl/2QxXfJacYlu5ajwE=;
	h=To:Subject:From:Message-Id:Date; b=XVwBTrWiN16Olsdta4JTRbAxJxcb0lawLVpy0uHxB0W0HCrSkQjZBsEZ/lBINz8FXc12/e9QbsMNWgBgjnV9XneQWh7Ee6ft3LsIPbY+HTdCtATbWVze5Dz1eI5jDjtC8K9GUNjbmCvyH8YCOJ8U6Wd6GWpg3jPAt+1ukxzQVoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoHbrMsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoHbrMsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755074993;
	bh=vrubaArINy/nkkCNUd6wC0LmJl/2QxXfJacYlu5ajwE=;
	h=To:Subject:From:Date:From;
	b=GoHbrMsiXhgFmQWsG5C0gv/ULdf2a6NSo8rCYUxllTygSFrwH+zq7GisG+NOi7JsJ
	 plr/3gISFiXd1177wp6TvN8ErkFLozYJ/T1bUuwTXr1wbuppG5lq+yTqLdFnyxn0h2
	 Po948kk8swP5a6hzziuaBlfonfw+HVXkUKX7/34SEV91mGg/VV9Cull44sFrbpqEYx
	 Azdc8wlAMXegkTJ/c17BVslr9HoijFihzU/fljctRKafAkPmDLTCKs1oZFxRK+kA92
	 TeKFf62dQs4IuInPVNuh9Cyt2wDf/+bI3Lpjwhtx+8m4kyYd8XHgDsBI1A3B4KUODt
	 4u6fjkV6WcyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82ECA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507499357.8242.4338388732948067966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4f52447b256b26d494c11f11154ba052f2356fe1e24bbba4f923e95ddf21e0
Date: Wed, 13 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755074993
