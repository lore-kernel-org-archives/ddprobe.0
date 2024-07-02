Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F422716C69A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719934523; cv=none; b=iHiMEiL41hWdKHLMhQ3JwS7LQ1jgJu3NA0tLIgrLVEJUztQfqR/rmrnDrHEabRVtBOfm5gI7C0YAMdTrN17Z/682vLE9ovpDHlqnKTqgh+XyJ340UYcEuUuNSKa6q2kGKK/Yp5TtePEr5SHDFHb3qBoFh49G98nzqM9QVVn+2Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719934523; c=relaxed/simple;
	bh=kkIHsQfQM4IXjrqgqn3hxIPm5ZBLxR/JqZvQUBnEGGc=;
	h=To:Subject:From:Message-Id:Date; b=r5do6OvpfmfmUm8HB2D16LtLnmNMkOLbLb84V3VaZBs6PiP+kScBZy1kgE6i36o4PcSm6Z1RzYSOkTdmssn1xSu8CZ1tG98qkQLTibhRs4ZMNWXSej8jXxt4WmNBiZCPClVCw7t2ALU38l5TmxAMe9A7PGHy58fsYdEKyEXTH+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Whbopti/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Whbopti/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D459EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719934522;
	bh=kkIHsQfQM4IXjrqgqn3hxIPm5ZBLxR/JqZvQUBnEGGc=;
	h=To:Subject:From:Date:From;
	b=Whbopti/+KadqN7lCH/mS3bq63eBuwjsNYgFW5V1t6+1PW7Lv9T0bqELdou7lOPoj
	 fpZD0wfUNh5i83CDrNQkYx+ZYhMEOn+JyVg3pXFtFk0GKBqkE/Fty24byyy3KJu17d
	 hka9LQ2w0RrpwapJ5OLK4er1E+Ygl/lTjTx0+N6h/eu6feqEr7oLEn4CP2cApEDUfi
	 rbvsrG6aK44uiH6kJIXeBOEXxV8I3skAN+n18Ngc+KINIhyWLAXD9ArcWcJxdOdRfs
	 OkQgbIm+iiEmoCJrp83R1+XQAw/bEF2vFwaCuHXBH401jCj6JvicX56J4SaMC+GMxI
	 EkhtRtOF/U7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13C3C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993452278.6751.15301315550354304818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b22a224d4a47df33227c5e67d016f49f8e05af282968fa7de1b25a320ae76c
Date: Tue, 02 Jul 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719934522
