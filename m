Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2380E18E02
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081897; cv=none; b=kIgqkrRn1zR3g+m0Qi06i05LDWowjBZW7XvwTKQ44OBuTsPQxz7AfnS1a6QjaNrMqoyDpOwmIEL4L2xH6mEhkrx7egw5mmD7i2JPUfSUKUHeFBxjbSqneaqe3XdJnXNB0KOlN91qZwQrLUxx7zeBVBHXfrnXUZNzVRUh2ElWQhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081897; c=relaxed/simple;
	bh=DDz36iPxU4B3zQsmlKiChzM19VKzoVH6jRAkfDZkUjg=;
	h=To:Subject:From:Message-Id:Date; b=XOIjCqkO8jZLgYLRwxAfh6SZSk9xes8JFT7JSKqxuF6/J43sJzogHCndPueFEF5Y2MJ+R2EXvtRuAfeq3QGET7O98xixKdBSATw8q/jUjcTWp45CE9UkJ/CgJx1RIBocLEXniXS5EqK7dSD55yNaM1gUpPH4QpDduf7zobQndD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyxUfeME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyxUfeME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E492C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706081896;
	bh=DDz36iPxU4B3zQsmlKiChzM19VKzoVH6jRAkfDZkUjg=;
	h=To:Subject:From:Date:From;
	b=tyxUfeMEQSvtDw1f1eTN4RTQIDU5fS47N/Vg/Xx7ltJrouloZEpq/4Ut+lyermSip
	 DsRxdj9OPnJ8Um3vhLGTSWGyXo99b3bNiBKBc5523d7+tl4X3H/8XdDsU58JLRIdfe
	 7Bo/zku76JJiLRi+1ZwyyCIDVfsYf4xEGZC0CzrHRDT2g695KrXDDkyprkrxHuTCxR
	 aIDDzJkfpdUhVErbyva8Ny5DeBsySQaXcLfWD9cKpzSS6XMJYJVjv+nhG/ISPcHbfX
	 2L/11fIb7OrJ9tDwqbHb+ppRdBO2KgkoLB/aVj6rYDjN2FfrmvtKdYdm0EbIjSr19W
	 7/H9KAlx2og6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64569C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608189640.29982.2207135351571736060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cbb34ed011805e7b6978dce8f46af546c6069c36808dac0b99b19cabcdb771
Date: Wed, 24 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706081896
