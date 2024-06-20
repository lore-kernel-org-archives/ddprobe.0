Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D2B364DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718863163; cv=none; b=dOqDoil707eqN4exEsdq4ymoREF+7dPFHB2jMEkXukOd89AFOvlAhfaQwTt1xpetPKhpFoPEH7EG0eRMaGNpOIjaJqqYoVe0xylXxxSig8KBD4sykUaIxnJqZlDZahW9cRnYyf+Nj6jJ0xZ5TtIovpH1ST/E5svTWy8NiC7OT18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718863163; c=relaxed/simple;
	bh=2j3/Dmo9JffaVERokSB2HAxufBaDNGJqyiuT3slor6M=;
	h=To:Subject:From:Message-Id:Date; b=CQMSkX6R+DOhpRGkzND0gBYuxyi3N4D6bbUil1hQ7bIah2nq48u6R8unAdfgsvQ3YI/2sWTUJmdFGuKm3WENBpn7ZBbV+4NDliSOH9Shr2QjRGn8HNJhlcPX7VnSk8qMRDU//Je/viqmPEUBjMscBH01K9nOXcTBAigHZkCFVyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOKG8VAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOKG8VAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2982C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718863162;
	bh=2j3/Dmo9JffaVERokSB2HAxufBaDNGJqyiuT3slor6M=;
	h=To:Subject:From:Date:From;
	b=jOKG8VAhATt+3kGZQydHlGufZMOAX1HkM/QS6QNs5vcb28NcgpqsUaoQtzweuJZ0d
	 87IPlNDfLj/LMe0zqyN/MOlXJIsW8viwwqMLeisdQKyoDthpMFNmkrxtz0ijTlyT1n
	 GaS76Db0HCaMOBFEvmIH2qXmV6r/vmIsq/C9gOz/NBbh6nTTQgZgTDVU51yvwqwfH7
	 T9cw6zlSnAQIRk1Vd2BG3g0aRUwCgs619YDPh9+Y4yg1jR0yAcU0wp5sq/jspiirtJ
	 P2G5uOKBwSMo5WlgzSCtdeui6KcFEIfVbIYb0oEaDjTahTu9R6KKe67mcsDEmUQh57
	 IqTjxf0DYG/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB887C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886316275.25920.2404486927444493018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195e0ee2b09940655883f11a2aa8d34f3270ba678792d7ccd434cd950da59045
Date: Thu, 20 Jun 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718863162
