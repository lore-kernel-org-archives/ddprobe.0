Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD002EDD4D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762548594; cv=none; b=agHvVPAFaShODHfvZvjxOT5jf38HcY5UyyOhYt6F55TNRX/7GYlF/aUzag02z9ryXGd9deOfQC3spS8lbCiqVw/ekwZTrUwd83Z8FJG2urIsQAl31ekls3SblGb9+nM6X7rco+pK5lRwuxQCmbJNWBHZm6DvTMipa5Z4peHmFEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762548594; c=relaxed/simple;
	bh=AWzBzcMIF7ZRm63Atf221QT+wqgVH6s4QmaWPOC9RFw=;
	h=To:Subject:From:Message-Id:Date; b=hyCt0IUQAGdo1zGQhOqExkfPNm1fwp1OvelBOKEwPa2LpoykD8WPh/BNfZvcf+oCRJnmCeiWiR0ZHTYw/GjzMQJw/RlC4xnG2g7V3l4iGtCkG9LNBK6CCPQVTR0CfNnNt4vznYrYw/u9Vum8KWmP5TBcZ0cjblKAvkYImlZQhl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqbvFznl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqbvFznl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA9FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762548593;
	bh=AWzBzcMIF7ZRm63Atf221QT+wqgVH6s4QmaWPOC9RFw=;
	h=To:Subject:From:Date:From;
	b=iqbvFznl8PiZlKfB1qzUiU+Kai9W1Czr9N3aO0lit2sEPUfZMedj5oi+YGsEBjCkc
	 vJOw+Zxef0oYL5fwVE1B7koZ5Q7l0T+bf1dI3IgTtCav0oOsRWHUAtdy7F6SKzfVGA
	 wqOySbqxBSqcD8VbuDDIs/f0UYWT3elgXhPxbEa1KVhMuQr7QlY0kwnK54c7O6Wqht
	 sAE3E6INxGoDTVZeIaa+bZwFqc0/By1huIsKOa77qqfiHFRNoWW0ORI4EYVUH29+JT
	 SidskgfoxafWOpILaTXajFe1Gfcj4wlU18pRZJyuoBWoUGkqhTTHgtKXyt+swKjQyE
	 mhecp6O58pHSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A2CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254859358.20470.12074077242112724921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51a1fc54a8b8c86b1ac1fb06a6a50a68d6b57a1c2db8141acc7a73d07e7d0bc
Date: Fri, 07 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762548593
