Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DD615278E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750976394; cv=none; b=cZEl2eJV0ipwT/f28MqgVadALPoNwZzezZKrx0YJAQAq4S1jvAFlbZLv8M9fli9iJlCDwPiHLak/ar0Mz2XF0aMNfwCR1GJBq1SRoinCVOfvDJve3zFSO/p6V9V+lEBuS5igof+PPJVQaU19zAC/zBtupDJtS1AzkGAwi/5akZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750976394; c=relaxed/simple;
	bh=t4tJpRL6JF5J1hHiLX0ZC2Eqs1e5nx5qMkYHLlhDcok=;
	h=To:Subject:From:Message-Id:Date; b=BmzxBaPwNGJHE3D13wJPnO7bV0nuLWETzZRgJYDcb4o9Viw3/zEvEgoaWTZbhEQmEnz9uUl+AjlRLrclYTIzdg2i0PpOmcePtQWGk/O5KNThQohYnr0b3Fp+d9lx60ud0hf+FpV2T8LvSXM7bvyw64oGLGgccoTU2FsnCNbCMmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLjr/YAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLjr/YAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6178C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750976393;
	bh=t4tJpRL6JF5J1hHiLX0ZC2Eqs1e5nx5qMkYHLlhDcok=;
	h=To:Subject:From:Date:From;
	b=CLjr/YAv9hf3SevvYyDiFzusf01ccEYKSdW8yv7d6RxJDSjElFhgesXLN82vkMseJ
	 UpDuvWJ+BZ4DMmu8FE7kYY1h3wqBzAyfg9npJbt1Br9WFd6DBzyWGW7tX5BIzMRnqB
	 ape4SL3X1m+GkDvncpC1CO8+xe1XAsiUZs7yrKe6Y86JVx4GCHbKxfAX11yN6+bxG1
	 eNIP2hPHJYv4I04zbvL/cXI2aYnZcirLuDpoHB/BiqPVIYdIun+zwh8oIyF8MxRK/p
	 kMXGw1n9B/Ry7rEt6dNFXF/e3LcnzJd0Jn5yz/RFuB2qv4eamn62pVLHaNYZO/GdbH
	 Rm+bkzdMNnK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C6C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097639358.4095.6392817858270851865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d8b5a8bdc9440ec99fa6f9723f8a023e1601209ab0b041a493e13a5d2d97c2
Date: Thu, 26 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750976393
