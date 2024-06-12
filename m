Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B21D54B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718197703; cv=none; b=VkbQZYLsYwrsK32JbxM1tLLoi7CsA24AUwUQeqQke17VANtv460FB/78MIloHo8gRzQfnE9YpiBXOLFdoTSRvwDdwDg6Noqz0AGk1bFV5otkJBmRNZ1wQnhSc5iHmN7aBIbUXqgYN8QMdAAzJr+n76AbfwUz/hE4bZQG7odGsyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718197703; c=relaxed/simple;
	bh=8SPBVI5YKd09jS4PXRMHlvaBsL+tM0fnZpfe+G7MpRQ=;
	h=To:Subject:From:Message-Id:Date; b=OzHlkRThdh2qARmgPbkfozBXjfVlFvR2kQRiAEtBysI0aUJf9vkslSSk10XFqaOamfTFd3wyvULtaj48owlTbotHZTWhfRYzNB3drSP4ZGrew2NJ/8q1Oe3fEFKBtbB3AxjS4dPaNDX/xEX0J/95GNhKTHkcBbKOMjzot074/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8t7YKbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8t7YKbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD40FC4AF1C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718197702;
	bh=8SPBVI5YKd09jS4PXRMHlvaBsL+tM0fnZpfe+G7MpRQ=;
	h=To:Subject:From:Date:From;
	b=Y8t7YKbqLzs1BBNfrgj4D7/1jTUHyqMXh4tdxUoVx7nh9xuBdVaqcrn6WvIJweO55
	 4blCS96JqeUUacVlcqiZjArGMpkmUh7lCrcZ0UK6EQIwEIQpl27/rcEPBLtwg7TLT3
	 ocjC5q7q09bhmw3tMSNRjsvDYLneV731rgcYzGfNV3/Ho9uNNKIBeJKp+fSCpNAStp
	 WmLJ6BQyIotgWfcO6KytEWo3qRZ2vMS/ekIqcI6EllI7MrAfOPLmaWCDfdZUhvzy+y
	 4u8n1Ak0DJzBusH3DBkQTG5qHHuQ+UxeX1CqlpOR7eYy5RVnFzokxxrFppY2kIcWbu
	 g8pQnNoVdim9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE872C27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819770276.6203.3867445376751768764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b98ba23b29312109b66b816f2cdf41f33d4197858322901e2963eb0d1a51008
Date: Wed, 12 Jun 2024 13:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718197702
