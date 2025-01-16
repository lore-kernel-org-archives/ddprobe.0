Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F09D78F2B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038754; cv=none; b=ArVm82gMkgE56baduYOdl49+gPLku+BVNYNAEbDtupJkXmyxKWCHYLQEE5X75sw/fd17N8PGOpG0jqImZHAnNeLDv9DdswbQzwrKZHrnSO+hKNrF4aICHvUD1TkqBwXAnDJmfgad+eTpqaEjoz/qU1nY7lWlT8Y9oOv4iJ6whaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038754; c=relaxed/simple;
	bh=DI+SDB/mWcQA//S2+LiuIPTJ+LdQviLpVETNhd14CKk=;
	h=To:Subject:From:Message-Id:Date; b=HZ95L+Vv/WiOTYYiaIBL+sJpAx7RPxAdn0TScT+lolY3sAyAEhIeIJF+1FnrfaXJ5M85Y8qGhC4W0OYVwDjdhzmu4uXw8LRW5m0KCaxlw7agrUCvP1nARcIFZXOj+0b3YMmeSPM43oSyzlGRS3vWGvm1+14L4FUljGp4j0DY2pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuNNl4be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuNNl4be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A379FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737038753;
	bh=DI+SDB/mWcQA//S2+LiuIPTJ+LdQviLpVETNhd14CKk=;
	h=To:Subject:From:Date:From;
	b=IuNNl4beH9RoXX7g6gotKnifjhTHDDCP+7fJJu0+w2mm5CR1ETO9rLEkAH9OKIDbg
	 WQBa00TcsJYIH/n/OtDkWIGHvTldh47dfi2rQraghJ+DBbSbJG2cNsNLl6NLxHiqCQ
	 DiMI8J/mm2ePzhKXkUMf1/Uj12pNbABs0Acv0A0wUnp/S72zTwQ6XN4DdZkxH7g/Ut
	 VAxY8IXLBFTDIgQn5ibXfE5GQrXahn0quySdfi+MNwcstCWrxW7sWmVv1rBWvHzMTy
	 Qt9Sw9z862whDf4eCwSMom36zgF2/QAj2CMHjrLA7+ukAdcjVKpxtsDOY0eXiiqNp0
	 20BPK5Qy36vPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91969C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703875358.8797.3887820396447452029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74321040312b6c0f93f67c56fe2d7e9090c12fb40557a61a13de54545d0bf29
Date: Thu, 16 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737038753
