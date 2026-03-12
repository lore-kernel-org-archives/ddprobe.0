Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DAE3EAC80
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773359094; cv=none; b=Zp2mxchJB00G1m5KMKU6x4xNYGP2M+l2rzOPNxZBnv7p7BfdI62R6WGfFuMxdZcWYBgJJ33slVq/HB5pEzCIlRSeOTCRwMtMrE4c2MZb0G1tHJm1iPLEzHmmJ8efiRQrJ4PIGnrGIWwIlQFxjORC/VSeypNndld7CMHRCJnU9m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773359094; c=relaxed/simple;
	bh=Td1fqG2yYkb2sGpcB08L5A3s27lZ0t87fD2OTJab6Yg=;
	h=To:Subject:From:Message-Id:Date; b=a8rqgk0sy4fqNpQJip/myTtkSRhOUnCjkSDSSyxsXePlmyAjoxVtJfmeprelnamMSgoHKG3ouJ/GFQhbYL1G9bbkKcMy34HBIuJZt/sumEk4zEmMZBs6avp2AtEXWlvcbC9ImxZ7J375x7Om9N+AW6oR7SPtrfAJXBiYHU6Ckfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FORvFJ0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FORvFJ0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773359093;
	bh=Td1fqG2yYkb2sGpcB08L5A3s27lZ0t87fD2OTJab6Yg=;
	h=To:Subject:From:Date:From;
	b=FORvFJ0AbLoGSQOhbfc/FyVzF/JrtQcxH1OImlzdat0KvxT663llg+VC4WOFGFQ3E
	 l5l97BD5ElfGY2eLCfeAFfTYf8F/2Dh52wTvf40UvA4dI61fqiY8bH5MJ5bXVynAwH
	 /MBuJ6e14d0JVU9ySrnsJO1KcJIucb0AAHL1uBbF5Vdbypuz0Lijw26NRscKXCOcLe
	 uJ4LwPbaiT3JrZBSi9tmEe2FjlynVf0fCKiLGckTszxtkGsZO2gQuzdKxSF3BECn4e
	 slRUeA8r13Yqv3V7jf+59yDdRjxvEGhCD5ydoGZR/taoXBp+/lYohO26nwdHCODcRA
	 mLqSU4zjhT3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D0106ACD1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335909358.2385.12043738604859370694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeed285ea3c5876c6138cb4f1e1caab93a4723999969920c0981c3807525f7dc
Date: Thu, 12 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773359093
