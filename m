Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22036228C92
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750418994; cv=none; b=nEiSgdvWKN38sfLZ4CFSQqv34U2gR/mHBsx+KkPOn0Pj+c/iMyNy9D4m1/rzQhTlWDa85DyUIPUeAiheV14xqE7SQrCNRuWqzgWvDRS2+jPgsjTlIRQiQGw3wb3tFlTeG+K+jbQbFFDuFU4cJ/8MlQj36jvIH5iQGtw7/wTJndo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750418994; c=relaxed/simple;
	bh=rlAwXxLZG2i6jMemK1een6T3npGM9GRJe0j0CF1OVxs=;
	h=To:Subject:From:Message-Id:Date; b=cgF70vQb8lfdEborDtL8sA4mcV5aDS/TLI52QQ6M0uHJtzyO+v3+HY2oj3FbpiVY+zS3MxHBnAfK1LT6XEmNUBZGlcEg2FEy7mK1D3bAbh/R/KNnLWuno6c2YU6jcAM0IawjSLY2cGUoJglKiGEIPveBQ7+lsvviFuAlTrYd4t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYUuDyrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYUuDyrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A089CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750418993;
	bh=rlAwXxLZG2i6jMemK1een6T3npGM9GRJe0j0CF1OVxs=;
	h=To:Subject:From:Date:From;
	b=bYUuDyrfRfc/hKpUFgJoZVweDsqnlgCY33oTnHHJ+sLygEBeESp04brLk/Pd8oBHu
	 6Ij5QHqh92aycBqw3SkvnIIWGPav7vkcMakCg2Xq1ReGSECKc7Zn1ClToDw+kQwp6l
	 QOZIjb1X9KhipM8FgVhDd/vJw43HZEjf+Vu+UX8z5txCAb8FRlnJNPw9MhYOpgZiVS
	 oBYRNXe1bat7I9ff1nOrpMLk1kXhnnBFOwwZmM0MPb1WyLifZ2puZGJy+i+TSjayx1
	 NYnQ3YQmCtHEfc44JieJsIcKdwTtubCna0MeaHo0H/v4SsYHRQyKc/uP7w1HhhSkm8
	 ZjN+iUNuv7MzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A0C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041899358.27255.7190561104548927150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406bab240ffbf7466ecf9b5a09c0fe0a9d8be1cffe6a05ddcb88060a36289add
Date: Fri, 20 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750418993
