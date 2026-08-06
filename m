Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EF33D3CE3
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786000834; cv=none; b=NKwG1Qu3xuhdjwpIcQHpBZC3e6tFxPC39C6Rs3mciLh5pU0oBCp56uGxBZpbRqp7OZe9Nh2qzeOqvueglXV7A0ix9mkMm3F4BnNlgcvBx7B86H3WEHa7rdvrtv2/b36G/tZh7SsxFtUw0ch1b0J43cCnGQIfHldHjAyE1PK/1KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786000834; c=relaxed/simple;
	bh=20+1bpfyfeCSiKVEOPAdDuyscInHnkidaULwNpbN8U4=;
	h=To:Subject:From:Message-Id:Date; b=m+ScwjQQS8IYidmi+4iv1i9g28lyZXa9j1b3+2N+0JYDFAbtzH74uVQFHh+BfZjfwQ7vV0gI/07q7mDMlpZhyrl3ArS82F7lnq2q2YkRyrcIdkL+G+c+So2FLy1K2+cLtmZ3PsKYIMj41vYFAyKE3ZJdISSZxmGHaODe/+UMgQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkyJesCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkyJesCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8FDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786000833;
	bh=20+1bpfyfeCSiKVEOPAdDuyscInHnkidaULwNpbN8U4=;
	h=To:Subject:From:Date:From;
	b=SkyJesCxF57pRDK9lebgmzH+MgmjFAZGlcjhPUExr1W+C+PGQsKlGrwtYGcaZQJbE
	 WHhWidF21DvtM9f1X4xFV98tPAZm78sKL9tGVBHEc5RdsxcnzPcDygI3rb4zclqzrG
	 8KdNQcmKAEpdDASr5C6sJSlB0VjSIdSAtKrowht5LIbQvvvtEjDoYyIBGdxZ9YpCYR
	 +e0feA7W1aepbAm+8KMAnnNziMvCpfPWAR/KaTbfA/jlOde/sMbwW8hez2Z1PMlxkZ
	 bnrDgVlvIam+N/RzPEOLS63GYycaIPBub7ORmw27GyvN57Zh/WMiWi69oMcdmZcvxg
	 k8CQG5xwrsL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF84CC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600083376.12712.6492881361996637148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c068c5953d81be4996bb4f092879e9519e0e0d9f54a60fd73e6ef32d7434f3e5
Date: Thu, 06 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786000833
