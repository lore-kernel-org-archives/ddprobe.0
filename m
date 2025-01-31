Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B127632
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738310754; cv=none; b=oW1M28ubALnHLAvBpKJtkvr2RRuXybhW5NFfsfy4OTz7Q75ddp323/PYct6gXmhpqtQmiEIsSYTjGyHVJxGwAmwbdCyQoX2SKiS3A8J7Y14rJWtcnv3dmT9D7fklIRSV1XwUAzBtn9u/hQuLq4Sdgl4y713RpiiC1XaYh+ySuWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738310754; c=relaxed/simple;
	bh=t9cx207Opk/LnAEf6Y6RiQATcgUYnJssRK/3ROcWAro=;
	h=To:Subject:From:Message-Id:Date; b=VabP9/M1VTw2pBuoUVLvs7sPNiaMmTVhoaBhmrweb7qc7HxeSToiqAR6VYsSBvuznJKhHz67IkURxv072IJbb/Y/pTztAFuEGNsLutAOsXVRVeLZ1Xy/HfZqVtgtYvhQlVfwMEURQ3sN9FNcSAy+cRjVlW7Yug2LBim2GqkQq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpjhi1NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpjhi1NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E3C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738310753;
	bh=t9cx207Opk/LnAEf6Y6RiQATcgUYnJssRK/3ROcWAro=;
	h=To:Subject:From:Date:From;
	b=fpjhi1NVLmh+kgjocb+akFWnWWmcXEDQ3Aas7nRCpaiyXfSYWvVjjVmfbMcARQe3T
	 pDxyebJdKNUvv2+gf4liJfcKanNg4ZjgTL6Vqv0Z3jczJpS73/mXTonTWZuxs8DW3I
	 ta7MgrTWYPKjq17zFKv3NFUsNAiwe/p9SI8d7sy0X+sSF7tN5Nq0lrsLBCuYusrX8q
	 G6ZgyPS0fBnuVuFc6LzBiul1qukPhvM9Vo1cwpF8D/ELfxdZQ2lpEB11OX0m26ufbW
	 DHko83vQvqicHHcnXdfRbPKwFQmGx6ef7r6/caVPuhNa2MF/7q5m34IpKOcmJFYSQM
	 RbZrlmP6Oh9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90812C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831075358.24243.7873442821899762287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f6f7e3a2e7c63ce4180758c2155f26cd41eac60c4b05860aeaf1bf7c8bdcf0
Date: Fri, 31 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738310753
