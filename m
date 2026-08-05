Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4310E2C9D
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785889834; cv=none; b=qP8EJF3LT+FmkJbc8cV+k2fG9MGeVbDc6pMBVtZpXgCmtAxCBEVL+8MOii5G59nfDQiNotiu9/X4Q9TtdqfradNtNBt5OhhpvaCAwCPz+PL3KftqzmTtiUSpkfmzATevcCdFBGcPBSAeZ8w3A9JP8dA/2tBkIuY7giDvdU/ESYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785889834; c=relaxed/simple;
	bh=ylWgcEf8y0caG/W2lOU5l8KVdfqFGHDO6h6AHI4GLXo=;
	h=To:Subject:From:Message-Id:Date; b=etR4Bu4JbISoc+o0Z8VgWpqQSh0pnlNaD5oVRuQyUJUNphLchen8lfuzU1qrXuNHcC+aTURhIcdBKcmStMJydceqq8195j9d7D83E0X2OGll2m7q5QOnxlA3p4FWqypZzrKGbZoWSSbGnd5VznPaKXwLLRfbs84A9cxGoIptkJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTDKG5lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTDKG5lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA4AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785889833;
	bh=ylWgcEf8y0caG/W2lOU5l8KVdfqFGHDO6h6AHI4GLXo=;
	h=To:Subject:From:Date:From;
	b=gTDKG5lzlvzQinF0x8nO80LFO6Pv4yC9IcFnR58AzqT5fZLDDD8ROEchrbv2jfuzn
	 ZlEtVb7JT7LuREFmBd/DKY3v0rtr2AVb3TFTlVXjjyCzP33wPzotd8xuinaE+BSfj+
	 kZqrT+jbbXTlKnXVF7P0DpJQjycGqR7SJpa+cDCfQzw7FOIaCUR2ui8Rj01XnQZFO3
	 jPlC1mfRkp8jWRKe1kDpwtQ56DW7R0+Qk//n3rRxzem94zYPwxLO3Gc9K7b/EI60Pg
	 VDuB1qVDRfbEzZbty/LaCH31e2R9AX/fi6L9BvPP8prqqv+o7dhMRxJdCgqoc5hEsx
	 9MqMuIyTTK82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C8C55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588983369.7963.8785701695150541067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6440bb5715f816a403a63df3bf8af9ce83c2ae308eef9bc8a61d904e24d17f1
Date: Wed, 05 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785889833
