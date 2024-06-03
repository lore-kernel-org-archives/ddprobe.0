Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520288062B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717407323; cv=none; b=VDCNdHLNVJdpRtLRtAn2XARCROoova6dd3fFjLl52clrG2Ak9OBaSoTLX+n8VCS/7xkZ8+cCxhixETpb89TDbKwROwhFV+WiBXnScgbB8hT1gRMM/0luonr053KBDc1QFqVZFDtuDthZroh75x7JDntZZSyKtIPjJcAVLbKUmLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717407323; c=relaxed/simple;
	bh=2+iuWdprISPYBsdV5Eg20ZxFuR5t2KNI20WADpDsv8g=;
	h=To:Subject:From:Message-Id:Date; b=ltVBtGIkcuuPrlZWp53df55pMO/v65MsgurhHGuRInne4oxsuXAbGMIhLq8OKvqWUccPtQ9x7TmbGXfLlnn0x1spjl4b72FlvCTmLbmfC8DyMNP5w7IYKGzhJvitKwT28/BcX8TIRelnku3xXgDF6n1AJYshNqbglAxw7CbCD30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy2eWxyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy2eWxyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86EFC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717407322;
	bh=2+iuWdprISPYBsdV5Eg20ZxFuR5t2KNI20WADpDsv8g=;
	h=To:Subject:From:Date:From;
	b=oy2eWxyVk0mX+ZBFjGlcUBO4JZHT4vBAVIJNPwjonfJKgC4z35SDxRORNeXmIFg9V
	 edrT8xxEKXFvz+YieO8OjktVkXYfzNH42K5zlFkJ5NW2gzHfWvg9fM8gjn1Tyga3Kw
	 os8+XBnOP7srv3CJxB+T/oCEEIw1CRIMui7wVGCMlmJ717AbteKxwTcwqtGE6HUin8
	 c7TT7n/A3jmgrXy0lHGphhU+uTplqBBzQUQqrCudiqp58ibdws+BWgJwhqhQOpRpG/
	 cJWGoWS9fvKh/fe5ETzdgP+hHzlknnC6S7xW7GGAT3eQPlT7yVfkyYcBpJRBhWPOw6
	 /asVJDKWa0h0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B8FC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740732278.26938.1628481108406718115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62917b9dcff4d46eafe8de1e3e4aea2aff5916fb37f39124ae3135ed7a4a2a28
Date: Mon, 03 Jun 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717407322
