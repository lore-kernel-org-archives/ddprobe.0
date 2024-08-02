Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF0C1AE02D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722622555; cv=none; b=msDZ+c3y7fbWU286KIJ85O7O6L7w3F4lsYjF308tWqVilkGINg4YGNT5x7eA1UU41TWk9smXHSPTNgzODvUpoRJqdvRkQyDzNpv7RBj+uylsISG7ZW8iWXJkTXKOjSPr/dDacnNO21SqHcVNVfmrBoVsBN0FxH/Psq524JWECNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722622555; c=relaxed/simple;
	bh=K6mKOE3WgaNgI4J+9qbeznEtsXck0froSeV2NS93MOM=;
	h=To:Subject:From:Message-Id:Date; b=q8VWKQs1jE5MrivLVIeKsFHJPFQvjqkdXODaMmtHtMy06dhvRP5NwMOMGYh4ze/fBi6lZOoHGxTqSSeM+MUPCaxrbz5Pu0YxkgRJTeQ1jR1SDO00cGPZRUKOccHwfLV7runC7MNiSMaGwA2Q8i6XcJ0ZWO5drnNRtzUC0RR6BPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNWoTtGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNWoTtGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC77C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722622554;
	bh=K6mKOE3WgaNgI4J+9qbeznEtsXck0froSeV2NS93MOM=;
	h=To:Subject:From:Date:From;
	b=RNWoTtGfZU4aPKF2yC1m07x+L/fCrQrekthmhfJcxPxhsM1BmdseVWNhWR0JE0uMv
	 YgNlhq+hlUvL10AQyZk3VJjj8LsqVXzmHre6KkZyPyDtNLn4foE6y0u9s8mOpdnMDu
	 0cCN/VmXGraU1PAnZGjkTCGliJWJ0i/t7eIU23diqXw+flXR5ohBr1JPfgIwzt/aIt
	 aKFukquUanqEi4cD9KRog4zR+CR5TleLQB4IvIPQclWzvLBpXG22SsdjS1CvBqUECc
	 nQh4weOEIfSe/uHNk7uybwZZX4LDGFDuZwEpMoEfd7ACRBglwI+2ISZO9y2kDwCYwy
	 h1Pv6zum+NwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6BDC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262255360.714.17238220667786552870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad819ceca67494923bd165a9b03d7050c3be8a74144823446249adab1535571
Date: Fri, 02 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722622553
