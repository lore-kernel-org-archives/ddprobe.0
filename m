Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2230C2C327E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756177794; cv=none; b=JN0yiGQc3FT1tbeNsMaJf9xV4Y6EsblTIbmX2k9L6fnteoQXQ0yiVXvuBzc/KkLX1DllXRZDid6/RpnbcTXMgnDRLrODWbdkLvU7sSwfmX6F1/uQ6YSlKvyPUXDBiKug86bqjfZDS2W+I9hRKGBpkFJo6KLdAk4hnMSLT/g9Xmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756177794; c=relaxed/simple;
	bh=tMyHUsab1sVBRbbr7bDTtPt8UHcHVp9z7jdvv4aLeqU=;
	h=To:Subject:From:Message-Id:Date; b=dpJJzeBmx1PWW9A5jj1jjuTHZJTnqGOyAsL3dbVlLvTweH0LyNGjzMa2JCdz3UM4Ke+DsXIgOH/0iQTMdxRQTw76phGhfKdTe3JHrcrNqDP+hn1XHJhKt3DfX7liL6M15UKwuY71RhsmDqVPp+RBNpUxcJb6Txw20zcW8HyOEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNWgLER3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNWgLER3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3282C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756177793;
	bh=tMyHUsab1sVBRbbr7bDTtPt8UHcHVp9z7jdvv4aLeqU=;
	h=To:Subject:From:Date:From;
	b=KNWgLER3ypU/O5AB3u+dr7L657Hi5NAw3BRnDRYbjHCboySlESUSJggtrT1/lTzQ3
	 lE2/dkAORTOizg5oXs2uy52sXov0hijCI6nhIVgurhJSoLchh1YW1V4JNrmttuXO1Z
	 wYrVUe23ze7r79NNb8SE7LcUXGezrRg1DARezNL7w+DolCw/bXNjIFdR/Ekosnn0Tz
	 Gv6IrMIItnurpFtczuU4ToUuRK//i3iYOdWQ7dci876LZZGVRf7fy5yWnoFA75px7t
	 otyO1T4md1t5jaZCTf9LD7ngb/OJQDuAWwrG7rQjJQUbpD0IEifIIVU5JmyPpRkA/U
	 xEqfn0KLZa1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB46CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617779357.12551.14274303775708674507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e5ab4c479402a1fc321641a0e2942ca7e7b2f2ba98eaca72af37710c8ca385
Date: Tue, 26 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756177793
