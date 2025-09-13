Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277281DF247
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757785795; cv=none; b=IiABzLujhcZLtGMkPgjWgjML+Wab11gsjfTIYde5eqeur7r5zm5+Gh8ELbZaeb7kApk0/gCA0Ajdie5PNfjLqGvRnYWIIaBzpPmTQ7rbLZU8sGC5P5xzX9kuTaEofS/AX+lwTwAK0Feoj4aMNcVqvRuQ4vCSi+Q7KXm8C0vOCgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757785795; c=relaxed/simple;
	bh=8tOZ46/j/yhqJkQJ4elbs0N9AVS4qftghgcmTxjh45Y=;
	h=To:Subject:From:Message-Id:Date; b=H1ubgknTgymSFHW4afsdYQBo6nFgwoM35khI3WYkDwl7qeExkkQslddAz00broOStMGYqG7FSESddUcx6W59Fc36NrX5ejOGaXBGs1no6oHKJaZwWvHBKH1rHIdDJsJLayCf3UfFRrhUbsWcTPM64gyw96XK0ZXNqv8a66rDlKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyHhG+jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyHhG+jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79CCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757785793;
	bh=8tOZ46/j/yhqJkQJ4elbs0N9AVS4qftghgcmTxjh45Y=;
	h=To:Subject:From:Date:From;
	b=EyHhG+jdMbubFgw/cnNYWZZMCx45rOknL5z9bHIoaAfH8KqRmGEuGw+zG5EVADRIh
	 HxgCFf7NwjGeimFVMBKGzKDPJRSlX6MC3TwQmRxHAhz1xgwLkbsR7p4zPjKxDtFBZg
	 DP3R8NG1zx6FAeAZsXcimOR2SWH+zmi4NcKxjtW97MSi7FaFlX2tl3cutxmVqMVk8+
	 eZLPzm2KBHja5mYAbIDIUP3PTOd9qFIALjbzMYgURbPIIxHOPxkcTYeVF/Va0XziV7
	 4a4oxjMPPermXYcv/uGZrIuBdB4EMo4ElOrcuMaj8z7BNlralSu+BCWV5paXBdGz7p
	 y6Jly/mWMP9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95329CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778579357.4644.845334696927712492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b919d718a91064a5c8b13db5278190c9f5ca446c19c492e5910ec6acef1285
Date: Sat, 13 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757785793
