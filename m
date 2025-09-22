Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2652FCBF3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758528594; cv=none; b=l380Q7kDRLlhQW7043yyBbSKCOayMBzM5P1MU8S0gOo3Uxq97PtuWMhcJ1cXK9FSk7zNSp54ZuEvcd3LV4bPLLVfoDinsn68V52Tco/8AYGQrOq+mYRHM+UDMumoyQjkvpLlaxZDeKaPcz3v8nCFLCmLtchVYAJhuqyBnBVLW1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758528594; c=relaxed/simple;
	bh=Z2YrfM+yLgr6j8yrtZDtuBKLx3aWicMCK+R/A1IevZ8=;
	h=To:Subject:From:Message-Id:Date; b=F/yw+HKC/dRkt5WGaJ7t6fmU1vmZtlZ9JYTpgcWPviUk4fDeKU4WK/VD7ANf1I+Rp2SEeu0ytnkADhXrxQ1bHz+uyb2a17LuG+BhI4CpaHJ6PNs//XQyQkLbqquxWqaP43EIRBf/3fM2wpLWnBnrSkYwPJb9mGs8AqpVKbJ0BH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDp9aImC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDp9aImC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88E0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758528593;
	bh=Z2YrfM+yLgr6j8yrtZDtuBKLx3aWicMCK+R/A1IevZ8=;
	h=To:Subject:From:Date:From;
	b=ZDp9aImCF/bnphvrPPXhhezJR6+bCLZOetJ2f9IDp9vZ50uNa+el4OwPawDvL3d5D
	 8VGx2+d+O/HlaTYfRSkWEsmaueYRyp14gLa13jLiYYzJFzI06565zyb+yjDQuye/3H
	 BoOBQVb8ZvNzkPxiRvUbzXr0A06fP/NIO3YEFmpllO8upfk8FPo8V6QrQNJQNqsUu0
	 6SJG+/lNuunVoun85XX7G3d+e5d9RTsQA0wiBI+MIds9G35XIYGi85CBqMSnrwfTwl
	 cUm7QeVigPNixH3nUoQfyRbpsh+g2frDqt3RCFW6oLPygiE/oPsYu/9Z4ZxOr8fSp1
	 2hePSkPNZvDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1954CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852859365.22939.6312029174783767149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf0e32a8a7dc3ca29288962b9580038374742b8a20fcb0c0d76819d9a85c552
Date: Mon, 22 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758528593
