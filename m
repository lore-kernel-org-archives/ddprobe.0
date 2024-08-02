Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C37511CAB
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722582354; cv=none; b=o6AH90UgP+2RMrZOkUCUBTnjP4mSEd9eTRsYALufj1MLjz1MdFVWVwyt6VW2Ixg4j2bIniwgmSGyvA5JrM6hHFvRTbSUCchkHpxdQLQ3S95O6cb0qUPGCMXqD8z8THVA8RFsrvDe4yfMV/3cLNxhKiNTyz85Cf4gRhTDo9i+M44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722582354; c=relaxed/simple;
	bh=y19O6kmN7eWCaaGpnOexBBc2/Lfho5B296MZlCAegbo=;
	h=To:Subject:From:Message-Id:Date; b=TCTBbbrL0KOMCaQlOy3tEtsjPyAXrO1MJBXAnspb+R4Q/grz6B1o2F6nQNNGzadmAd9RDaXNDxyq2zHKoBrY4ybhdZg2PEOgEccg7KtD7URdYRXeXGbkJ6dqVqzAV9G1YZp0fIPT/ND98F+4K7rhVs+7tk2PfrZ4FltsODXCa3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwiZI8ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwiZI8ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74EEC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722582353;
	bh=y19O6kmN7eWCaaGpnOexBBc2/Lfho5B296MZlCAegbo=;
	h=To:Subject:From:Date:From;
	b=dwiZI8nicMsE1kMne4XhFdrlnJ1ET/mkuV7IwEPF5I2F5sRdK05Jr4ee18VQu4Lfr
	 2CZNfuZKbK/7L/CdVSoHVr9xaOIc+THlz4JEP9v4RL3ovfkZc8Uw/DiJNAEFxw3UIw
	 F8F7egEpFm2ByzWCBkUu/vhyBL2xrQXBo4icIp286JAApadRJhhJl2116qeD5cnjO6
	 4eXi3S3UZQONIvywm5B7/ZbzOlIKLICjYRO4YclHOh9pE038emiuI/TpUWPCH1khGI
	 5LvMr3rha6QS0uEFRJYcTw8OuC5lPOLSY0QbB+d+SfhdMEinXVVDMdx6IKl4voPeVT
	 /VywyicKa/dTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C8EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258235361.32515.11337460071364737712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820393d2734d85b16200708dc118b833b38ed71002d6dc6706d3ef1d0dd7bfd1
Date: Fri, 02 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722582353
