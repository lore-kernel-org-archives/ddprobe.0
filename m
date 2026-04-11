Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2952E1F936
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775944654; cv=none; b=Enz22jV84PM9bZVyA1g7VZvd3rUFt0c0rusOzCIdkeyOyiwdXam7nVI4azQn8496sGX5d9XMf6t/uFF+Uh3SEQXJy/YPYlDg8uBx2zMYodt+Bn2NNf1u7fjjcRfHUJxqeRqvLHpSYcPyZczwaQ4pvYcjqq+7+dC2Ukfg+ksgr04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775944654; c=relaxed/simple;
	bh=tenLHzCFD6HwShuMfMPRu6RDoK/nu/X8RxyUgnx0i6E=;
	h=To:Subject:From:Message-Id:Date; b=sF0S1+b/H5IRL+unMZzEEWRMwF23xeko9TqGvwxkl+ZfhAu/ZXg0y+7urxAZNa4ISnkE45UFlZVzsOWuEAs4gXQOQH61M5Q66DgSaPD1Rmi9aiePFaB0lxHedzQjOexGmUgENsKBSsyDh8BvWc63P7QeQ6KvSsVTh3vNxmpuec8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umEU5qpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umEU5qpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C105FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775944653;
	bh=tenLHzCFD6HwShuMfMPRu6RDoK/nu/X8RxyUgnx0i6E=;
	h=To:Subject:From:Date:From;
	b=umEU5qpWabkMSdAvint+SQSBSVWodjPLqNtnGP3x4bCzrSji8HIlwe6ELksA0GeNE
	 B6xXuxYCEl9e0iuWN60aR4GJ8aPPI1t8xxSnioNK+6qv5vszygq3OzOYO85hUPh3+z
	 pyrBvIhV3BGE61Ew7VC8GypT+z8ZMibcDGzK04GNaKIdog/TJKZKOOXGVvNdX0M1CM
	 fQvG5HsE/zNc+gUeiDXcDdMAncV5L5JxD2oBhZwBVlIQyv7LO4LVk6jUuW5/x1Kk8N
	 wCJLEtEOuemL3Qb2vPXQtHCc6DHPF+CEXUgT6P05n9lf3wD42KVVdWO5wGneOXfzI5
	 46Ejpr8PixyTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD99F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594465368.19617.1277600896588995197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358f0e433461ca8cb87530283ed9ae7dbdca80d3b62fe09d38b9526109d45f88
Date: Sat, 11 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775944653
