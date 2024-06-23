Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0C512D1E8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719163943; cv=none; b=oN4FLzqmrY4SyQznj5N2E3AyI2uDsTHdvr5RtcgJC94AoERHICN9co3gY14PyotMlt4xbllKJIum15c62D2dXRE76350Y+hWavOiW+CTUhom3Nwbg7V8S083FHkVGtqS7JN+Bto6d5d8vBdLGol2F9YrUaNqu8amBfBlPTsXaSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719163943; c=relaxed/simple;
	bh=YnpIniE6WoyPtK3XekPM/W4NOUddpM7B5PIjksKzN/0=;
	h=To:Subject:From:Message-Id:Date; b=cCXtmPmiCbtNm8lqi5Zy63MRvir17nsqP04Q4NW06DIGJ3u2RbcO2uZjj+Y/1hbzvnTyibqIsGMJ44UJR525mhk5hFAiP7aZGMXEtFJwuoUlRLV77P1NUw6QhNOiFUHe+Z+lu3oo7XGjd334R8HJKWidPN7L7CBp1QzvyATJj6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+BQFGUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+BQFGUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DFEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719163942;
	bh=YnpIniE6WoyPtK3XekPM/W4NOUddpM7B5PIjksKzN/0=;
	h=To:Subject:From:Date:From;
	b=i+BQFGUTgoTDGLss8Jq6kNyvKwtQP+z+Z80YNxihFBN+BMdBCzV2sw/vGn/awAzEm
	 81aHBykMBT627dtD/VafvaGX72sCz201+hF2GxL1EceR7N8VTBt9kAr4GFLoazQ7ql
	 14D5Bm1yVL1TBawXnSNirxNtyctQr6aCesiejITpit/JxeyMaSVFkheiKoXoRTwbm4
	 0OXTU7jSTXJVSmRh3P3F2XszrmGvlj7Iaii4IGFk0cAq7M3O0s0sv5GE7aP4ZGUi2K
	 1boHBDeiiYq5VTiT9xOQI4/uciZzm9Uc+/ZoWa9Y8MYWHp0+iWkFYmdYq0KigU+zSh
	 p/xSDmvMMds/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34A2C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916394284.16530.16255596897748397564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdb7278d6d0e809fc1dbf46883ce37a9a531e5e6ebea3a168a5d51b61d066b0
Date: Sun, 23 Jun 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719163942
