Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC3C1C6F70
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739184354; cv=none; b=EEajs3Krg1t1y9nvVdNSkr2t2Ql+xzklqV92pTqNeWTunGLkKPa4Xpv4mDnRqFQdqvXtYMvpwzUFU/ThvYX2ih2aMKQgulfJkC8hoSBNAHFc3thO2qeUkGoU76bmGS60DPQNF6B7rUepKuqQlJ49PSys17wMBi1XsVV2LoXoRDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739184354; c=relaxed/simple;
	bh=KdFa4+lj1evjslPihqvq6C5FqAP92CBLZt24v1dWvsQ=;
	h=To:Subject:From:Message-Id:Date; b=PW/va5Fl3UBXT+3XXrcYjpMXhoWOIBDC/iK1dWa2tZHiZVXSePVHlmi6++c5B0r63/U2+1/gf7uN9f3gE07Tebf9jPRwUpnD00RVcmKmJ5ClmJ0e+sE7kDu9ipHqCnJgG/Et1vPTFAh8lV0laDy5fV0GsSnDeGGx40WAILH7fh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpEkKi4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpEkKi4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03A7CC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739184354;
	bh=KdFa4+lj1evjslPihqvq6C5FqAP92CBLZt24v1dWvsQ=;
	h=To:Subject:From:Date:From;
	b=OpEkKi4xVxXl473ljT+x/lJ/A8weDaGw2289+AmMQgxXsiNYcrXkd07AMYM5Gt/wd
	 5WiCN695Kpj0hJRktEiHZyxQIy5cx20A3kSkaAzOJjHd1PETNR/jdDpfMKr7CYUxp6
	 TsZIYYZlQmuusGKRld0yhlkofkBhP550syHrynp7hNDW08ANckqQ0QCrg0ejZ0bVLo
	 iO7nl3vOHra+Y4Nbxi6z+lWpyJFXBfj+w7lQnEqrYWMkm1BsTcV81uD86P2tv8xmpp
	 jC9GScVUielcJnaoVruvyECKgn5ZJ89On4q27JzSTJuv6kjFxKb7svstiOILz48QhV
	 CpM0JYIBwwlyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C156EC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918435378.30898.15033652143416451925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a904e25d24a1dbc71b6dfb0c5edde64ccc8f648aa668ca3274720de12d8637
Date: Mon, 10 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739184353
