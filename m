Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2539E1428E3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728717954; cv=none; b=j6ILrHYL+tVLEy2z3P8dP2ujL2ZvBSz06AI0e8VnatVwUXjtjQ3lziPRCayVp+Mg5ImMbEgt/gE4MprQNqWMzatUQl1jmplk841woVg/3rleZSeWhXneZiuyIfUyU+Uoeubvm5+fzXTElLBprOhsTCnaqEl9rEAwKnj4qXsaYmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728717954; c=relaxed/simple;
	bh=Aaz3ClMkH9jqcMeHm/ivN2/hCtij67tQivX2EUY1kRE=;
	h=To:Subject:From:Message-Id:Date; b=Ufa5md7LRCgCuuhaCX5WHr+7/YGRfWPgmarZejovV5k1V8YBA+hY19KIcJdt00kcBu75kCa6oop6ap62k7aZgdaPFYnYgiPqu0+lMSrqRWdsmrXYjpAYlKbGmHurzzlnW2i7bIrIErwNwGyOdrTrRhAx3ALoJH7UK9m1iLVChuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzzLRKuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzzLRKuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B4FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728717953;
	bh=Aaz3ClMkH9jqcMeHm/ivN2/hCtij67tQivX2EUY1kRE=;
	h=To:Subject:From:Date:From;
	b=qzzLRKuQDjko0sSFO6/1mUqArzIc+/2vjDmpXgLCZGsWIsWtVPVjZLo30z5z2SUvk
	 AP54s5+/9hJ+B1WTX1wfnYZORoHC0pKIHVm+xbAuXyNQcx07hosBNYz5SVYuYppLhz
	 A2dcWsfVhh2HRRv/+Q9arVYqLWHJ3xD9mnzcZoncTQzFSeoMi3+81rgWRk9PNHv/H0
	 5GoQfwefLtnx5HdzKIl8jnFoH55q7YrRUuh9qX17Ca2P2vMOxgn/nFY+naObmnljPU
	 qBB3hMUC2r4hoq9nOS/H+xTXtNZRUMMmvRvg9ecIv+XaU7w4PmmsTV69q4X5kbwpJ5
	 0agAzeX6qkSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94477D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871795359.17781.1279575795966305953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7aba978886fa07f672df2ab9ee99b5f7075903e6615457d970315825a5f60a
Date: Sat, 12 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728717953
