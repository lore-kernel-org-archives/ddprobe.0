Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBB2155744
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719573263; cv=none; b=HRChn5BUVMJ+bBnz0mw2dNhxly/xhrk98pcFpvWHwo7sHNGlZnGHN+6xR+ELLbgFDKEB3nb72qItyw7BjYUblyjms2OotCSHPTDJUkzphiP98S6QLOWTIDKHkjQZZ8QrxtTxQQ7XoAlr3XJeT1vGtvo3CL0BRaq3UDXn60tYvRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719573263; c=relaxed/simple;
	bh=6UvzVWEl0MkVRHdF6dc/3XF1GQJ3MzZaGzheuj0Htj8=;
	h=To:Subject:From:Message-Id:Date; b=d7AaXOJpkOJHpRzVLICnyB6Ykq7EWQXpW3vfy4TDOp5IvSoH/3X8hJYQ1rmJAAr4OVWkJ9WWMFYrKemPviR0/2gDjulpB5vy0cq9fGysg4UUouNcExq/NNA0Py//MTbaJKt48IoNGRoqfA79sg/G6LXJ5szidfrXrR5GFyqE21k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFZiTTsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFZiTTsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9676C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719573262;
	bh=6UvzVWEl0MkVRHdF6dc/3XF1GQJ3MzZaGzheuj0Htj8=;
	h=To:Subject:From:Date:From;
	b=YFZiTTsFtE89o1zpUajerPMN7jrGb0ZzuX05rWfraWxSgE3q1nRJmHul5eU56c67/
	 TqPH+I8y/LHG+hqR2vR8CXkiJeXrhhDlwaz3bHhb5jGV/rkoOMKrzgKmFtW4Cf98uU
	 I4SqsrFwu508wQjQ4ufjX//VpyeDo5JVngKhyBhzoz6yGUyRx24mFFFEMEgW7JZUYL
	 Gbf7uslEN2CQQcHGATKSdJnae+mIpdpDDactCXBq6LBS8XcmT2dVpUEq+WWiR3cWlt
	 45q2LBH16f+xx7UHiKVb1lXr857HeIT/8XQ7V6YzuREW3slEr6PoIrKD5K3BQw42uh
	 8N9pLicaB0KyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC48DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957326282.10692.18024270644196132475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f14c69cd2daecdaaf744957ce74b19414c61cb2f68fc1e115a133191f7c8e2
Date: Fri, 28 Jun 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719573262
