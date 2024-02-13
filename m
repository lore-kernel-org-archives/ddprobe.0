Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027E3604CE
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707847098; cv=none; b=LcWO/d6oTybFP6YPe6eWsGSQvQ5U1KhsHJfBlCxYyQWc54ipRXJoB3HM3iOBoUsSW2UG86cWGpXXwoH2M+4UTQXBl1lXN64BMLXTXdmox8RSPbje4/fE4glqTx0raNuKsKpcpbJSZHdhfCEftYs4NHqUzGKdAyGN8PUAWQsKzEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707847098; c=relaxed/simple;
	bh=sa2zDcqHBkozA4Lo9xLJKO0WConCmq9Hx8vRYwI5xHM=;
	h=To:Subject:From:Message-Id:Date; b=G9Cc9+K0QifrATJk2+S5yteTBr1MqqtOY8fCmi3BPk/eq72PLizRlW2BF8zfGYouUWnNjRhs59Tt/VHm3B5AahuxKLSNxPyyyhK42FYZFCH9usqVcFAf1wZ5RJEJuVHeKZRHfFp0rJqdRuhZuoBxqLPYZl8owgta1rMI0s0BkOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3bqvIRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3bqvIRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7745FC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707847096;
	bh=sa2zDcqHBkozA4Lo9xLJKO0WConCmq9Hx8vRYwI5xHM=;
	h=To:Subject:From:Date:From;
	b=h3bqvIRrsGG56Hy8hNDUAri8daUmBwSaMPEy58ujKEodgbUVCuPvGOOkJwVBS6wCw
	 W9VLBrrkw7q9XIN07DIvBO4AISsAjLisn4QwKWGfXHhZzXAVOXhtv5cTQUTjQXAxmP
	 G2w+cCNGwNHfjG6A0dftFYXstVpEeAW8RL5SGx6hJGtgJdsdUCwRh2DpxEcpTX5TAh
	 KgvHvns/HO/gqeZ2vLbsMGvM/I3Xt2qMU2q4VTN/pRORDRqikI1vkD0/UplRmLXOAt
	 jY1ofySasOb7awOgJQW6/T22baGrWKqLEwR+tYeUFyrYZh4pR/V0rh5+3sCniDmSXJ
	 sJrlNGQcndqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62143C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784709639.9332.11433676688458461465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1e0c8d17eec47a09938bfae57ab584ea3041a365e233876531c83738de8d88
Date: Tue, 13 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707847096
