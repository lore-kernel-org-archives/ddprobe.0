Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AD529827E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751558395; cv=none; b=cBi8/uxgL4fVpValOEee0U4MhQ/x8Yl5NojBjginVEW4nqg5V0ONVuKCSwgh+C8kY+8gDjZF1VK4A5wUFaDlur8FLFsKFx7dNwI5XNAbGtXKvevw5RQY9ZFzpN/uEqeyLlPdfcu3nFPpH3hGuFp15Qfv4AiFs83IDRi7TcIbmzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751558395; c=relaxed/simple;
	bh=9wOo8ee4uv5gF8TOSaRICJFkoZd2MK2U30P9rI+z+NM=;
	h=To:Subject:From:Message-Id:Date; b=kDIMe8/J1Xj/KIqqrwIy3VQjvUv41pFbRxQm67IU+3UczL33rQxeuyHLe9b74u8tWJgElLbEiP/1fzVBpMs9vCp+X2uXcPPzIVVzEYmEAWQn1E6dIBmWtNdyMXGxqNiajKQaLS9B1q9M/Od3ymAbE4EamMOyyxFYhMli5kCoISg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gm+j2gzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gm+j2gzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA95C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751558393;
	bh=9wOo8ee4uv5gF8TOSaRICJFkoZd2MK2U30P9rI+z+NM=;
	h=To:Subject:From:Date:From;
	b=Gm+j2gzZlmFeFh/PQKG0aN3Xx0V9+X85vz7Uuw4kgfr5OymZV8aM/sXypAoF+3ico
	 T4vEGhjmdQABseP38ptDd8X7Mwaou+49PXhs2agKn85d2LkGxKYyXzWsuZ34RWudZF
	 MCRRvYhe3JCb/j89hVkfN6jKWkBA91hWN/Pn+qbvlgbGDl0UCPPHB1/B7ioTf7dPlb
	 cX8lvSBo6/6wecvnXZ2SJ/Z+sUdXz3Ut7Jt2QvTcl7lcgsv/smWYltkg7Uf7Q+nWvm
	 FRcHMgiqHYQBbud43xNzwBfPCQO5RSwUhrDCTCBghy8UpzdoitNvWYpjxfB5KADKYX
	 TglyyytFly/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E842C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155839357.9039.18417725321740344992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec4babb67e3390708a649668fad8d72a17afa3330aaaa8f7afe876ed2d23c69
Date: Thu, 03 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751558393
