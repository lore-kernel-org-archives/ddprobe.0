Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813E18A921
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761375594; cv=none; b=F5TVJNSKBFaneT74bK23+3MGTA+U4IhaS+7h2Numd1bX+rI/CwUzMQVhNx+JgD+9tjHSm8UXfYZHkYWtga8mnEN7RDl/aro+6Lhk3mHeF4eH0m/g0pudgYt+Va7XIMk7zV5ZGEeBlKzeVvFxPvg8XSgboSX6kjbFkmq6S8+14s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761375594; c=relaxed/simple;
	bh=e0tb2giHjero87TLA5nnLbAzkhUe4KSzrgJloeUJ4SM=;
	h=To:Subject:From:Message-Id:Date; b=OJFppPRfh6viPra1a21qrxtMipxwpZ/jMTlOUT/Xx/8XigEEJd5FCb9LSMc+GGw/YSmxd+q/zn2UCGYDkuppcZ+g98YVPHESwDpv75ZLBQY0KjO0avL0G2L7yW4lFU8QxLvw5dYMM97CJCrXyBdhKwj/YDqrrrZBAKyRnjoQt98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb2MMGF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb2MMGF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761375593;
	bh=e0tb2giHjero87TLA5nnLbAzkhUe4KSzrgJloeUJ4SM=;
	h=To:Subject:From:Date:From;
	b=cb2MMGF57X3/w1SQgh4KlSMW02p90yTTrP2so23ux6gM8GCtFfdYGrBUFMuQ/st6c
	 8e7By2mLnzwyIf1cyLJDl0qAioKxJFfyA33R4qBBl9K7wnHOErxEAJ6O62tjPmuSZz
	 gJYiAIdCgV5B/wlSozwGp7Q7/9AyrldZt8a/iNdbYrkUtYANyTiLSy2mlDyG0csSF4
	 S2U+IXnv4nXyZ73j2amoImTyOQsihqJ8gcJW5FswPuSgpGdLuD0Xn20vBsQRbjQWiB
	 X3p8KpIZDSkhPtaL2odATnsL+O8hACLgByjm1cVokJT5eZ8fP0nj2KT0+Icls1KVJe
	 /qYgGa5KyW8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB15CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137559357.21495.1611688316178332127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713caa300da7f142aea8d4613dca6b390874175b38793c9d2cd53ff144d5cfc5
Date: Sat, 25 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761375593
