Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382D8B663
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760329194; cv=none; b=mkOX6vb1dY3XEVV5+DEPG6L5PPU9hJcS9ZsX6zQKAFqL39cbB+shxbcgPXDxMtrkqXJu6b2wn2uvf2RLrvazSiaX8WDBjgcXTxo6LI53BxT2liCDqXUXk/H4TeWV1xqb8ytYVzultqpsBr6PqI17szjJIhkdKtEoO4Df/2k+igs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760329194; c=relaxed/simple;
	bh=Z64MGy73QwxHrEVGP9OgdoKCpRWNnOD11AIfWdQtRaE=;
	h=To:Subject:From:Message-Id:Date; b=YrMHfw6CQkLpapwe7GnlZd/vDa0vMGID+A6OM9FfYBn4nipfcqHYv323fwThHzDvK2hhlYgOsxQiLaA9OYbOpwurYXH45GxR3wKO1eFGey1MGk83JNrFl5GAtfxBbACYiCveT7QZW+guOYDZ5B7XTWGWTCQ6+++5i6iEWeMiGDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSckn7NT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSckn7NT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D6FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760329193;
	bh=Z64MGy73QwxHrEVGP9OgdoKCpRWNnOD11AIfWdQtRaE=;
	h=To:Subject:From:Date:From;
	b=VSckn7NTO687r1+y5PFrgl4eFLuchfldL5XFA0PR4jHVFr+ZGXwnofhHwtC8WWjZT
	 Mm9tQ7tYgfJuwu8Wnkfut3seMtl18UY++SL3KFCvFFGIJnx/UC6bD5eirgvCUhtDB9
	 AgxUYrple2thTt8jV0NvelR8CexsfkVRPo3iHBqUYnC41x7NI++gvLHKGC/eSqmdF8
	 E2sFKboRBao262bbDwphuOBwhWoAPS6V60oq7oi+m/1C4eObgZDSblgOdMTlDzMhrA
	 YGe8+UW1cRfpP3aBaOwM6Qijo2ihE5ZVxeqxDeUYW+h/AQjNxLF27k05ROYpWMEwvI
	 QgPfB+LMAEPYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E7CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032919359.23387.1144615957586904931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf55a2cee248d58993a11a36fbecb466a55db27e66468ddd22b1d628f854dc3
Date: Mon, 13 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760329193
