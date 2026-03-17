Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0939A1917FB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773785694; cv=none; b=VZdxS3mEaVuTEwBBAkcVOYy5c+h4f5UHkx9zRJ40VEABlaBRjBe6CcPWUfbGWCPPmPiM3vHxxIcmegJCwWa+MkembHJrYHCWp5AnwP7y6IAL1lQDYYDvsf2jV4KEiS56DTICh6gNnxZM5ZUBGEL4ooRRyjR+apMCIFBskuMbae8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773785694; c=relaxed/simple;
	bh=FeZL63MPSVzwrbd7cbmu4egwB50OMtv1LkSTUJLGIE0=;
	h=To:Subject:From:Message-Id:Date; b=dS7FP3r4f+2VnL+TbOI23wYq0eY1xlvVopwnWn9QEQ3Y/p3QAoOpQoiJoJy2nVnnyqfBJoUyUGluDrV+P/qnzIER8y35orVGY6af8AtH14OQUdjs1N69MkGN3i76iX9eFUZu/M8LJltZFIUPmOOKBqECOf3Bqvp9I4zbdQsI2NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsMqseP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsMqseP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6912C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773785693;
	bh=FeZL63MPSVzwrbd7cbmu4egwB50OMtv1LkSTUJLGIE0=;
	h=To:Subject:From:Date:From;
	b=lsMqseP/7EfMJdvLR7cwt6xNFbLPmbdGXxrJE41ey/S42dzvoppmOTAuXkmxzRKh5
	 GZ0SnT0cv68lemfRCXjeSlswF1EMCFfvmVjROm44u0fmX8d53eIhNWjhBUDZPmF8pZ
	 5EEji/N10lndi7ogLc11nhJ1sAxPcnfMvYgQlogx07jWLKo81joMpi1KpeV5Xy2Cnt
	 fGGVty4YkxRplrGguKZh3v1AEi/fOk8L2u3sZyziNgYo9uImHbWZJD7ws5KMnJ5YW3
	 dL6Rh7/fA6z1A5IW3CooqnvZzT/Um6wbqQSYmIE70aikF3u9QxPUQI6nnb07EcrSL2
	 jptBKED2Y7Olg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C6FF6E8B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378569358.6488.5131194868011647807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908c0bbf085b8b9e3df88092fb9aafb1abc88b5a6e04fd046a2b11cd0eed55a9
Date: Tue, 17 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773785693
