Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F420CCDF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748268594; cv=none; b=UBpbqqe5BlpmG5a46eaiy36PjgPg9D0te830EbR4TrA+qX1gTGNiKGrER0QnkPnTVc2ZH/71DP0EERH//v1f+zGQjD5AgBn0PWYg0kGz7nBgIKmwzNFX84HnbNSViXMivUye+wxJaWlFblxMrjREjMo88JsLGOjT6LBkQVLkSO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748268594; c=relaxed/simple;
	bh=76vmSR7041tmKkEyNOo4buIH6BtHERkguvN9TVC/7w0=;
	h=To:Subject:From:Message-Id:Date; b=hCDFxgTVBjrhMYqu8wo6TViVMRD7eCeAsBotRFRflZIsNHVndRgPJQ76NVHhfd+0mzcv+720RyfZSohZ0lsg/YMeZzO/7pqjpWAd3TPj4S86EB2EoEo6ZwSrTY6abWQvce86XCp5eZKpEMLUnKjGkTDO+SfLgYvNwKJ179bpSqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcBc+p54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcBc+p54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00E1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748268593;
	bh=76vmSR7041tmKkEyNOo4buIH6BtHERkguvN9TVC/7w0=;
	h=To:Subject:From:Date:From;
	b=lcBc+p54k6XEuca+ZXPM1PmL9/z/uYhcvvhiKRRlyM++/BhFtaksMgPxQ2VkNPWLQ
	 DPzTFIfLzSAUERc6LnJRO6Y62IO2TqEhAT4ADDJrdAxKczEEgBfH0ghKgOqzresnYN
	 ugIl1gi8A0gd41DKUkJTqJdfFedZmzGGYYA+mhSJI4CdM5ByQyArFgexWRp5mhxd4h
	 UUbjWel7obXYhypqy3nk+ESEwOBu1f6NGk+2lIrzSSVzsqZspeVUpCt7YAw44eihSn
	 nNML/NUXujn/wZnwqnZBYvBKOzGM0DFa60AaZk2FwBjugJRSrRf9E00jrxfLOLL5Tu
	 /U1RyNRJDBU3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0F3C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826859362.21836.15945954771933665218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b1dc0ba22a79e615a8c64fe1d669ff145181658a27ef175849006a882778b3
Date: Mon, 26 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748268593
