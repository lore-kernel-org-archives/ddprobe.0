Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6866417C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737677154; cv=none; b=EpfeNDzbuEHKsPy+Zbvg0sJxWg/fEyf5LT53+dRqmxhkaeC44ZrG0nRC8c5a5XPxzEHfG5UIo3h8jl6/SNmcbZov7/7YzTSt11KJRkzEIXpB3a+d25g4ZoVBnWSWl3pHrBFwtYX+6o589WQMQqB4Wq8iMISYKLCyf6wfB0Bdelk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737677154; c=relaxed/simple;
	bh=PFAqVuMrX7NfRWcrTyiNO37n9sJ2PrjOK4vdXQs/VSw=;
	h=To:Subject:From:Message-Id:Date; b=XbZfQJ08+i6gD9kDJgNyIspKCiuBY2eLhZGmBWmq1v4wJuIT/BBIcNmxzKtWTpXjj1STI9LHvnB6wTusRbaHPrnjEAsWJzb4DifcE/WLDtR75nmp9qEZU5uio0g88LoJCykEzirS0FiL5iHPicjhFIlRGiVc/qDb8mx6mJNSCxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIL8yNQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIL8yNQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE59FC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737677153;
	bh=PFAqVuMrX7NfRWcrTyiNO37n9sJ2PrjOK4vdXQs/VSw=;
	h=To:Subject:From:Date:From;
	b=eIL8yNQTilFj1UaitBmDcrqoIn4VJYJjtAazh6qbPGoO1QhJMN+HU/IuRQ8nzfIOq
	 DpBvbdVQeJIN/bPc2bLDoTAj8x3EbogBUkguN4ICjpdpIAqYmkI9Nxu3Dr1uLNEs+D
	 xskUnEnnTbcGJdSXiS6QupGH4PFKc0pLGEy7xYmRDrvw+JMOB+oWPSQf7WbKx106QV
	 vAnz90MAQzxBixEiTRxvrZBEYvv/uIsXiKkKHYU8884nHdRSB6vmzKSefDtSr48ffv
	 gXSSi7p6InAlJ5YlzY+NSKUKFRSMSgF7eoTtEr+9hYexcar4SuCM9W8r0eODeu/YZL
	 BlhX00xqRq1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EC3C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767715366.27842.1981772643420538457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af2aa7ba0adc5f185f86afca828ba8fe29546b17cf471ea9d34cfee1bc5cac5
Date: Fri, 24 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737677153
