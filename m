Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585511C232E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589463; cv=none; b=kWpXinI7eH6DsolHnZGt/SHkPbKm7Asr5NzdoVNbgDZdXIceKUsCk97McUvaDFbAamFl0BpX6SEmiuYsRmJUR5rlSaQviEBJNeyeCi5XQBm9zwpZkWeHGCNFmHAuCjH4zFjmiddu+SV99Hge9uZ8APsZ/bMZRpZQitMrvWcZIcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589463; c=relaxed/simple;
	bh=xJz/VXOAf2q/hl7KDmhnjIqriGtDSUj8KIAYNV2ycd4=;
	h=To:Subject:From:Message-Id:Date; b=C0kcLOQ2NS7wHEUsEolIpfdxHxFdMZyS98t2FJCSltr26D89fZGdxLKiO5CKWcNTJBnH+0LIenmf3wyD4WbSplZkEd+7YBF+ywOJicHSXybYJaBH4NMfHKrmlBkEfy3XXUcm9b1+IB3s/d1yFQM2fwkS3dGyCtybJvsiaX40UCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td+4TJ4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td+4TJ4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF51C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719589462;
	bh=xJz/VXOAf2q/hl7KDmhnjIqriGtDSUj8KIAYNV2ycd4=;
	h=To:Subject:From:Date:From;
	b=td+4TJ4h8V/fqbW3A1gE1Z6J8Kz6OnNxmqpUV4o74O7v8/QICEpn9jhK2CjB+0s9S
	 iRdYthh6mcnCQpFcuLsHN+QqPPufgyjPEK0NNA7qz4b2pjCSO2y8McdbjdzFP9Pmm3
	 d7Dxx34dZMAswFKBN2fBezdhw9eAG4WqE6UALAnsEFgo60jZXHzuweSC9NkS7KTKbC
	 A3epQDuFc9Gpzq7yziuyX5hZzhAL1b64GMy5Bi+nrFdlw7B08z6N2vNZLeyAw0Jvju
	 PF12SlDHFPQiRDYSWWPN7WQ6fznCUEaG8ZIIc3MLuziNukURU4Zwr1DqfsCJ5wGoPI
	 Y+393rlebCSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C609BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958946280.28340.10543213358518027901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8618e93a5cfe38565e5493ba9d43230702923775b104fac2e099deb7fcc447f3
Date: Fri, 28 Jun 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719589462
