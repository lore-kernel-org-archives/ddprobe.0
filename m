Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7AC130A47
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718248703; cv=none; b=Ck/0mjZPS+jBQ0UFJ3CIfpDRqlT+qq5jNaB/qijVUHyBCPmLT2vSM9yObLqjaxtFf4Oc6NwLa3NWhAiEvvL6ugxBCdhv1FnzEpUFRlRxmu7qP/q9DVTEH3+e41D9JN38FFUhcNurLR3LBIYsWYFxKwS8JbA2ZxL3bJT627aw4DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718248703; c=relaxed/simple;
	bh=YTvG0jydZlX3u5tu2toRUKRWXr82/hBrb51bPfJP/J8=;
	h=To:Subject:From:Message-Id:Date; b=XQc3kYPm0qP2HHLE0Mf1dmpY2/8r7w6KwOWBtqnFEKa/XZtlgZOC0rm9RzPfxJva59M+0FQBIkVnywr1PCNykIvMBbRF06FmZOk91LrQeiA23pQ32IWZUwDAr0AtPYpfV42K2LByiytD947JDKMp2k0B831zy5jvHcmreDzMvz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOBTRGHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOBTRGHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4F7C32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718248702;
	bh=YTvG0jydZlX3u5tu2toRUKRWXr82/hBrb51bPfJP/J8=;
	h=To:Subject:From:Date:From;
	b=KOBTRGHhGKP6adKwFU53ed/KRxagB6vjfeB1zKxlzYS/5opl6PA7wdblr+x/uVOey
	 tMAMtpZc6qlu+uGkyHZZRzZgAk0xFEvapJvSRFyGCK/z+LvxG3Ln+AZVDvy/aKw/2m
	 t7MLhS/wg8d2Q7hCof0BMwtOVr12XrGRo+olcSTNJD/tV2BVCUXffBeMaqY2+at9eR
	 ET1RiDaaYG01T+qWPYSblKaTLceLqNJC5YqeI4H+E3VL+b6ggNtcIAfSBiA3jG4PWa
	 VKmo898ffxnxwZ9s/HeI412omcElYApzILojKTh/xARzjRdiB8uSmNBLBDz0KJn4h6
	 UvWxidipIj6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE94C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824870279.7224.14079941349653699009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc068903eb8994b8537a1ec14ae81fd163b621a122b6b6bf5f4249500fe1ff1
Date: Thu, 13 Jun 2024 03:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718248702
