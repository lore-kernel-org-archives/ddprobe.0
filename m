Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795443D6CDF
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386034; cv=none; b=mzkbnLcsp/1mlfIF2qdG4HGzaQphnGXp0aPOfEnwKrjerFAbWYnoxB/8R95sld6gbCd/kVAvMaXLFiZZKeq760WJqNTmOvLkY+4frYriqQp2QsNALEXVo67FhaHCaKmRCPuLxYXnbAuh9ndpjr6o5vtQwoXmj3c+HL/FCyFfcXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386034; c=relaxed/simple;
	bh=CNKYdMqajEMz1iFPP9blsUo6/wjuCqp/W/dm4wrwgxs=;
	h=To:Subject:From:Message-Id:Date; b=Cf2OP/Dx3ArFKrQsdijQxU7K5C8FVVNnU15FngcQKCJYtqdk+e4/Bpqe0+B1hlninFR5pTO7GHzvwVtK3MdS2SFRE5G9GtEFDPl+5MMA/6/pQ6iHB0B8ho/xIvutR9zf7YXR/FdDWDZlPl/KuVTlO7+4UWNckvVZ/QBbKfQg6uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8LQZjhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8LQZjhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D485CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789386033;
	bh=CNKYdMqajEMz1iFPP9blsUo6/wjuCqp/W/dm4wrwgxs=;
	h=To:Subject:From:Date:From;
	b=r8LQZjhiEdL4nhfHwQTjjCFDPJkSof1ggqgCuGbzdnupG2jWRnpMzSc21qRenDKjI
	 fvfuK6rEz83YmOtnLruuHl5czHPOs5SYaYY4B77F138HCZ864yafBjmBRzb3b5KZ4w
	 /TrxhlVLwERNqZAyCV+lrtZoJnTN4j2sDs98Yh4qHE3xbf9Tf/kSeIvfPMEJpl3HpC
	 w4vDuZ5IEcQRH+SzIBaqYc0q+blpWCJVpVLpOa/LtfFUGvPpWv3zIQYbxpBddiP0kO
	 UJGz7QRqa/J4opUwPeLQjo7TfNFKHRolZ8pdw8L9RjwZ0c0Qj7HG/tseBT5frsSQ1O
	 13N+NU6VReueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA249C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938603368.27644.4101217822964226743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7956118d743d95341d6e996f450eb7dbb4b105b9864a456114ec51535e4591
Date: Mon, 14 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789386033
