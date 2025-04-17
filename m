Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A9E245020
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744912194; cv=none; b=axK4C4iVi9bpk8PR4AycjBbyzzg5+slkc4/kG9+/9TeY5yuQ+WYwUO8Yr4Ctume9Q8hddIEatDdYp9UHChxUAWWE1ciFeY4ZVUhQZ06IMbuDh49j+jKmiiS8jfhRMHCECe3RAPp1NSUVYVZbWWhhxIO9Bcl2gYZ0h+CUcxObjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744912194; c=relaxed/simple;
	bh=2rkFmSuV0jt662+qf0/y0pIhhF8FTYWE822I71f/R6E=;
	h=To:Subject:From:Message-Id:Date; b=tdQqsBXuwOQfEnA4JgZs+p/QAMFlv6tlCtrtQvlBPrUiVTex5rwm2+MaLry9bxBtP5ERCmws/ku7zwJY38PWtPdfPhG3TJhikwlIjN2cKqiVLHe6Ni1ujchwo1JzhqjQ6mG9gNa7Us+5ls9oitd5KurCPkIzhIUBqBwNCZgAAPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM13PnXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM13PnXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB0CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744912193;
	bh=2rkFmSuV0jt662+qf0/y0pIhhF8FTYWE822I71f/R6E=;
	h=To:Subject:From:Date:From;
	b=EM13PnXvImFRXNFw1IcDYFqOmcAuOAclfLiL27Uqc7SYIo6P04Ix+GwOk4lNIWYo5
	 QzW9EjdKpNdVVlUf7wzCy4bue4yj8FyOneufGMH9m4CEntsE2SrAiTFMX1fwzfCpmt
	 JL/WjfAmQ50OnGC11E6gD/8Mf3DuB2B9z7zyKEqw5Ns5PgCQFNhrlaI3T8MPl/+Qzb
	 LsYbDh2EzmKldHbqM+lDCwtFioGtnLbrDUtXxVHdiuaz0XaIP6mDx2aHowzqs7PRc5
	 hfb6SYAlb11GUdbh+Rpb5cCrvImc4UNaOqhxR57YnJurjV5Wo1rO1WWulmkRFvR60w
	 hD3pRxo9SyUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3CC369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491219358.10286.10754765362391068227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77506cc14faeded91741d76d1c54829c4b9ca01048729dd748eba79b5ebb8ec7
Date: Thu, 17 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744912193
