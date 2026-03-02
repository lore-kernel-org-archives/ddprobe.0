Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246DF387597
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464494; cv=none; b=JzWF82ujq2q8tIrdxjR8xOMMhJ1AVlAkTIQDfkhs8qA14AhyBPzpfepdLYxvnex1WkfNvsTCLguU0/I6DD1cmLG74IcZOuKCxTYiLSeIIiBfm43P/6MoZ0TvG9VvxfSp7bbD6CaePz7ACID4w1GAEcSJFImeEuerVCQeLenZdnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464494; c=relaxed/simple;
	bh=OIfOsoaf3lhrezArRDBV2NMbStWwPsiP/NN5SPfosJo=;
	h=To:Subject:From:Message-Id:Date; b=oW+ClvcM1jubtLoujUeKriconBIJaRDeQTvRYmqnDSznkJasXDKM6pEKOS49dR/LQ3XOj8F3RjOOwr24wLhhu4U8wquKpzCvnH2/CnibRJH/Ny+vteK9Lr0arARLsZhW0NJ2E0Tlq3OlDGWl2CxWPkIvr6eIrcHRGmaP4g7kg7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv+J9ZeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv+J9ZeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF321C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772464493;
	bh=OIfOsoaf3lhrezArRDBV2NMbStWwPsiP/NN5SPfosJo=;
	h=To:Subject:From:Date:From;
	b=sv+J9ZeS+iRFUgfRL46HB+GKGKMWtNNjDgRRTcQFDQPmWoTUCO5ddV7T+dyzGRTjI
	 8SfP50EwBQmc/UcMn4dIsOQojwVZ0xGTNx4YtuAMr94KYFKMqsOLrXkbN/Pqa/6Eb5
	 3se087mOFffhWgTNl17LDLJDW1kQmYx+dD6/H+HGDT9HqSTF4X2UCRofOWKwkhfZ7l
	 O4JoTWM2w/Jyljm82xSWJqBWwz8UOpaDCz+AoOzKw2MNWpp4eLhLRH6qYk7IA7CLKZ
	 iLTB8vrA/cmXY5W07FIE7xpy0LHmUv6kygcvR4FB8EU6adgAqzlaFpGEYlFM12Epwi
	 arCJDCOzQ3TOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0A6EA4E1F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246449362.16673.5533256362777506603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50bd7aa5b5be2b020e9a6af93f334240421e514f32fd865a8f61dfb52db2cfe
Date: Mon, 02 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772464493
