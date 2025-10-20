Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A851E3762
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760930394; cv=none; b=YoFsXPM9+CNC0EATwDzKs4BDSClVaOQzCZ8F3D5rEbqQHxKFUzUjnLshqXEeKSOdtuQJG4i5Q1BPb3wRffcsc4Rp7tcefcqwq32e54RHQUfpYYRcm8SxUndPbkFQ/JzFEmFlg4HwYbvcE074aVNv453kE3+OZ889NzDYZ5rDXI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760930394; c=relaxed/simple;
	bh=9lcF0g+vYg4GlsfE3XfbhhITTVd1jWqBh7S+DXrCl0o=;
	h=To:Subject:From:Message-Id:Date; b=Lf1e+m/vCOtcr6y021XAVwimHLZhKTuyRE/Ue/LRCsNNiSlADZVVThZ/WvNHytlYOKbb5Cak/kCnyIXGS4NumkrkXatIqN8PnKHdPpL74iPym5Kdy76yX4A5XZIDg9FVHZLNLFZlj85zYpSZOI+LMzSiYazVLiVyx+z0yZbDwEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6CHWwtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6CHWwtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D8C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760930393;
	bh=9lcF0g+vYg4GlsfE3XfbhhITTVd1jWqBh7S+DXrCl0o=;
	h=To:Subject:From:Date:From;
	b=e6CHWwtKiE7x8bSeM0CZkCqimEpJin9SFIrR8pNhWDTr6+1rJmU2f5DYWCcyJsMFV
	 xNWTOUDTs0nZTaM8tbc4b9wb0Ndlxk60fUCRzUgCie5eT8iGJ6ApEXFf1R8gRAiAt9
	 SDX+Z9Ml87qUVrhPSnQzERW1INrY8f6MFYffWaidX6EANcyxFszPEyZ1QrgUPcdcL8
	 g2Q+iCYkdrvObQ+7ijazVHEE3NkTy7+QfRbh2kvVFnjdCoJoopbGyaPqR/PY1xghQI
	 RUius5+GgMmuQUP9PZS1y9rVReFgWD5p1svin65pNg/PZjas4skVAMmLjMzTACulJJ
	 OJk9lz4SWDYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286BCCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093039357.23194.5667603155146852322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2096eebdd72a3572c93932d523a44f5ed6734d7726462eecfc59f07ea0dbbfe
Date: Mon, 20 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760930393
