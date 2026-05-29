Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549373DBD64
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780057954; cv=none; b=rxJmyVK/mU84Pe6cdux1VzdXQxhqqCPNx/1JDCQBjIRhXtNfnKCxoCXaWX4YGmuswp0kCuI2Ri8jhu8xM+yn4gcrP/HaruwnrLGAuv1QP6+SBgDovNmLHHhfbbl8qrTJK1lZp0G/p7QWJQbbAWh0DdXTKdHnqrEmRYoBvYy90HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780057954; c=relaxed/simple;
	bh=LoSZQ4+bKsrGs7jfJvNejSoEN/FIl4WhBnNidbw/lek=;
	h=To:Subject:From:Message-Id:Date; b=pAIuAplI4GkoiJ9uMtqKk4K3OFY3C+sXYDOF7BMe2J6bwp2nZp9zefwhV2lhEESY5X+NCvn0/2hmt3dzN9OBL+WJLm8pExHv4eqH38O2Id5QBYo5nfvsnLwdJGUzqDgYDeE7RlRPEvmPohgy+dLWVw2+trMz2EPN6QXssbVCkQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCrknzBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCrknzBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC79C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780057953;
	bh=LoSZQ4+bKsrGs7jfJvNejSoEN/FIl4WhBnNidbw/lek=;
	h=To:Subject:From:Date:From;
	b=BCrknzBFO3Z3HtNbexfDwPCwo3PlnbrPPQI6OMYK444jtmNej/BvVDjtDy3Ts0m/i
	 8LRkLFutU58hMY9PzSer8fSks8dgbC8I4HT+bWiptXO7kMjolGD/DFzV8GkRlkriUT
	 i7jz7ELGdkZd5KBFYuN6r699ekNjXPbmSmnyWNVDUjFbWnSgyJjC7AQC+OtwMc5rrO
	 c+a5P//utgkDE5oEf02THERm/sLp4TQTN6yUNn5XhhLZOCmR/9/2hjHf/VKYpPj2pT
	 kZXIgHySmvkP2VOJdK45REU+kiHefrKdsOkeScUS0XBkXb/OtSfBtRGF8iN8QpcUFM
	 mk5bwXlhHVhfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEDCCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005795369.13321.14707022518379849200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a1c372921ccca06d826bc136165e0840cdc5e19e648bb21bb738b83271ce89
Date: Fri, 29 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780057953
