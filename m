Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4926615B0EF
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746740394; cv=none; b=V/NBeY8cellmnCbfXumfoszMZMS4yMfzKZepmne1P8GyRiqbtFqWFN5lsfGJlWLB6JdW6/VTG0h6kN0wNq6nlkBGY2+BcXgYggYdhNo6OOFs7dM1qqV7iSVFrzFOngO/WyRY1aV0D9B6Y/DJGUUmg9WZc4sR7kwlQeqFDRVJrEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746740394; c=relaxed/simple;
	bh=3RNeGDnbEKuLYpkOjTLqYBLAGHNa3cGYwa+WY+XSz7g=;
	h=To:Subject:From:Message-Id:Date; b=sN1mu/RNVAktR7GQwd0u2lf3sS2Ty9ZMXLJ/33jvMs5HxV9wBPQ3/NhxyDrdGoMkv/MMl6LN8Oz401LgEDcF5sMT/EP/hQOWCe89KRqccBWN18CsKfzUEjvj2u0es86rVJyYciwjo1emoTqfh4OR3neWIDbqt2ooY4pFOwfypj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJux6QRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJux6QRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F7AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746740393;
	bh=3RNeGDnbEKuLYpkOjTLqYBLAGHNa3cGYwa+WY+XSz7g=;
	h=To:Subject:From:Date:From;
	b=KJux6QRcwgXwD1DsBTt5bfLexkFIi+O0UTYTLM/z2/nAviu6yHPM7dc1zKbP6zOcG
	 dco+93FNT/Q0RMYDUwuAwBaSDysAvyTQi//gprfPtprzelULjk80Pz/vKrG1oZA8ud
	 AZw6MESeXn2A6DzZawjq9peLiTnwobhE9NfUmLccyNPpAC80ghsEY+xWcjDTJ+uRg7
	 pdN51ynzd/59xLjz3uhmmx/BQropwrzBe+YJMxjzXL4p7OfHZCJF+89IfEJyoyc7AG
	 v0zq4ive88gosYXmxQgJVpWPjpQbaKtagepQ1QgBMLjqzeys4M/eLZ7BpIluqGCCKG
	 s+8SI6GhSSikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FBC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674039357.22861.14219832920140223077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6199cd1b9749dadb74b4a76e53e4e8274573b4879daa1d1a5bcfc0f1f9b6ee1a
Date: Thu, 08 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746740393
