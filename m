Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96DD21100
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709414897; cv=none; b=AEEhtxSp78q98tF0DK/Guc12xSdOgZBkaZi1YMwAAPaLOVY1JaJSIyX+2+jJrsGPN2r3nsZ7Eo29IKNLxG0mqZwGkOOryEdzT9+76KSh17pUiNvMehepVR2LNqsuwUdcTo4nbhBGuayUH2cBppWHLk0cF8yWhrXeTAw5LufMy3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709414897; c=relaxed/simple;
	bh=QcIPV3Fyl7fFUOF+qDNjIeCdX07Hs7AtYCsboSF1nbQ=;
	h=To:Subject:From:Message-Id:Date; b=LIjeGF5GrUefmubRedz/iphYbWjys7LWZ0uw1coSWVjZXhglWXhIVcaOohIJebTzG2XAKeTO3UygvNprkSvlmmsYY7ujfjZ7klyTIgzXkdb8hufBcGyO9cZmL/oK3cAhlaTPjmZz4o51OlceZbSroaEC8zpUY9kVq9rWvjAmlHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAUtMd5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAUtMd5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A080C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709414896;
	bh=QcIPV3Fyl7fFUOF+qDNjIeCdX07Hs7AtYCsboSF1nbQ=;
	h=To:Subject:From:Date:From;
	b=WAUtMd5/4Y6d2VwnCiEX+Yq8jC0+Nt8ln4alp39uTfzYPeR/T7ODUJ8bvhk9CsxU3
	 ny56YSMNWwZjyvSXF7D+cARleVsFA/sck3OCHsNi1ixm7Fcen7+cPuXEQJQFv/6vhs
	 XEdriUZslSPcm7E5B4z1W+uNq3jVk2bqW1cDWHpeg8RTIaLViYNbssJCH1lX+g+9tC
	 s36kghJgfWBhh+lSngM2PCexdO4j8YMISrtYIGnsH1ZTPk+HTzznqeAD01zauz39WG
	 uXKlao5QXMZwZdeQX/LhDNTjayZQjbetxSOoKiaRK1oEuzajjfTPUM2PJ5dzFJv1li
	 usEwzqxH42jhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDFEC54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170941489638.22439.4120350174918451074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88690c8c0481455b675add5749f89a008abf5bfb39edf86f046a4739966abb3d
Date: Sat, 02 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709414896
