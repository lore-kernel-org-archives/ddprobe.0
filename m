Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D24279DA3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752529194; cv=none; b=GuMVnm6EURzOQJqjTVZclqt/iawBBw6RNkARwwg1abdAuVgxyy7kXqAnys3Z6fJso4nMZRSFbzge13e1ZGLmbRKNypfHlSqfDzt+qXgLtxlJu7USwqVa1nPkagVJbQYXe7ZrmAT4020JNsMjJEKeD2dgN7o6+NZb4RTh0hnm3vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752529194; c=relaxed/simple;
	bh=Ra8xwMJ+MPscIMoj6DbRfpGmI34LNePd4NqV3aFXo4o=;
	h=To:Subject:From:Message-Id:Date; b=uHhe7704NVXjmLClFpU8vyRMn9TYegg7fOkjsNTMbXIP6yd6NiXk06HcKOkJV4if5Y2rTxkMWggD71UVJTtXlFVaIvUzetVHAJirx9LtPe5BW+sWaT/eNK7OOwGbnafG06ER3mPM5PAhQUt8CaRk17iut+aZm4VFxen2NItSdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdbJ/xwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdbJ/xwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B93C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752529193;
	bh=Ra8xwMJ+MPscIMoj6DbRfpGmI34LNePd4NqV3aFXo4o=;
	h=To:Subject:From:Date:From;
	b=cdbJ/xwWG6anqoUePnaN97BavkdotQE+dN6qUMbPw/SV95jP2xI7COM0KnjmqseyU
	 j5HXTZA+ra2L2mfQD3gDTY2lyxhTaxhyaA/M3wq9dlQz1xH0bXt8FNGTS6Sa8gQFnd
	 q5B7/x3NdiVWLUvrVv8yalq0gN3ASO48Oyz41iRoOgrFz7L/JZmImBWRTZkpf4KEmU
	 rdUdEmv2PPgBHqAg6JL4JWUVqlv9D/VosvFVDz2B7ZYffJaU7VsxZXqvy9JYyPlq9O
	 n6o7oXq4Kul4JoRI8yMpJJfso426rGpbKJ9J2EdaPB+RpYC0FKsM38/WZjTSugKDk+
	 IFy8Gvdheu/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E28C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252919359.21759.8311938409143696259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c5a0f9ccae6a5726b374a90d4573fed5abf021964f92143fbb130579dc31a9
Date: Mon, 14 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752529193
