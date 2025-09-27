Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109691D88A4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759007994; cv=none; b=CQqYL3PFh9BBMdMf+O9u07O5Z/FoHw1wwrb3rqRVegblxVbTvmu0+aufXVSvAtLAtGsoP2tfETRj4hNGOoLsnibSSJZLTStF08XFBxk0DqxiTRZ8n1HjZ6/sraVbEwUt1ESeMBSFdeMQPLexeZT/Bi8GINt1U1vtK+f75DKYjd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759007994; c=relaxed/simple;
	bh=BkrlAAnz4/FWAXYdmYByB42xEMR1ryiKVgpVuUWz0ZY=;
	h=To:Subject:From:Message-Id:Date; b=VCZyJHHqYnyo0G+DEecI/XXmzr+yvtgSujuY8MHD8feJZSdLnU8MBWQlkYY0UZgLZEQAL1hnVf6g4dRvoWNcSC4SwBOTTGSYJE7ufLft3hcegmdJNFNCgNtr7TdlSWRFkGET5yRC2enAuc0NQmIOHd1+oRTDDZKqgj6xbhNLV88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+VjZxLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+VjZxLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759007993;
	bh=BkrlAAnz4/FWAXYdmYByB42xEMR1ryiKVgpVuUWz0ZY=;
	h=To:Subject:From:Date:From;
	b=V+VjZxLWl/amhsHFO4RsPXSZK1yLD7EDBNCxA/ho2ifAiMSNzVG132eFKuruzYfpb
	 IuecB4q80riOZGcHhRa0HjuWNaJlFygKqiAvswJggbTi5yOqbkV8wZLMzgnBTAXS/y
	 9zQ/PqcVqTHCvEMmryhvmWzJBbicbh0Gr+neQMYUcVzuHuJzRmeHMR9gcIaquXIsnG
	 KlwnOhjj3H44NdQKcdLE8yV8eYjlbh5UIkb2pne+/BphGAncMOvxmeuvlz0xfbH98w
	 HHUduFZ+OpQ7NHZcJmmyD6jH0VqAwRHFBDGVBG6fvo77L0TEfip32ne98ihKUbyexf
	 WQltOCF3VJbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C3CAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900799357.4614.3682285192363900429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce2553fa3d158c75b56dbda0c064184eaf880812ffb8f5dc14d5b70a7675cac
Date: Sat, 27 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759007993
