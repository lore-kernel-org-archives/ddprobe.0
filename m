Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C618E56A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779634354; cv=none; b=IpJJUj0uyvZpj1oHT27115AAUZgT0M00cFw2JC71Mk5HezANETE1q+So9mkYXU3g6aFn8L7k18oKW9ycNa+TVDTzpNzr1XRpJ+G/sQvmGn7Cx4pIRrBxhUSJCjwVMXjzI4TA1oTnkCTxTD6OmIG/y065qopYMonqYmMEAXV076A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779634354; c=relaxed/simple;
	bh=ATJkMME7G0+3vnjnPkhfhfkTfOm0upRku1MbuejOjEg=;
	h=To:Subject:From:Message-Id:Date; b=am+5Q8ZOtPkvZpbR57SAVatqB79PwdOwSpKeeUYop79r9289N0j0OaXNgTZUuXdQsMcM9jGmo2kfA6MOn0+CxFP+RYI5Ff+yBagHiiWn2xENV6K7RFSMV/tjQdkxFZyCnDPq+3q76nIGtybI0L1upweAlKjFi0yzXDq8cpCvYfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXTxr9f6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXTxr9f6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4950C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779634353;
	bh=ATJkMME7G0+3vnjnPkhfhfkTfOm0upRku1MbuejOjEg=;
	h=To:Subject:From:Date:From;
	b=rXTxr9f6OVA0k9Ez8wI0Z1qXJhnjgB/uOB3kMrhQCii7tsVSXrdP2Sz8tsEDlZbt/
	 jKO6GTaJzUWGZkujQviTprrjlkSe/1CXcheO/XqpQ7biXe+MimB8VO9n58T2cf6UNo
	 QKtijwLfHiN4aAdRwsnUuRsIGiTgKepoHdAAxuywzTK9SwmmEj56lRUfVVf2n2Q67T
	 o8RQPc/4yP1Oi2WylPZWJIo7GGbFgickmWyhtCcbAbj8UV51pBlRitJK9FFzVSHMbO
	 fTKCNoAZmiCkbD/WSwtO7prDo0LT+fyqOj5fx8Eku8LCSxSNblDZPF98BIuvukH/yF
	 JK5mS3BLY+wIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE758CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963435368.30245.1353414173280997483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a22c9b6f0e8996fab7518fb0f05e5dfd5267176c7561d09363bb7d447ea4e87
Date: Sun, 24 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779634353
