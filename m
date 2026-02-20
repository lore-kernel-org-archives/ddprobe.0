Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB602288C2C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771606493; cv=none; b=St0xk3/AA6rdy1EHng46YaM6VKU7gn3MduX99yMtcnIPG1ZU+meOah5bNGasFcIj/JXO7qMHTow/aGl6aqEhleQ3mCtZh3z2W1jql46m6L0JdiZ9fSw+zZXFnxWCM48rFvqTIdx1uouw/ROIUBMn+ULYOd26vPefvPxfZLYJUBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771606493; c=relaxed/simple;
	bh=Mr6OGKYQ192qHWBToCI6vlJWxqdhQ/kby8Xfq1/510w=;
	h=To:Subject:From:Message-Id:Date; b=gddFCrtSoO27kC9ruJ1/HQRRaClNHm6WzdmZwDwarfqBinHdQpDMKfXIoAOZM1AhdGOF6qorPOh4qEAPY7wZ/uEtxBbWSJe5hZpdXpNfI6uNqXlgPEb1yBOfjyszKesSWmv55jCUX0DVMw09mKUXHYj5p8SHwejphJdAEE3I70k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYOKERnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYOKERnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771606493;
	bh=Mr6OGKYQ192qHWBToCI6vlJWxqdhQ/kby8Xfq1/510w=;
	h=To:Subject:From:Date:From;
	b=oYOKERnP8ALt2woRnXdR4B7o0BjmvbR1gMhzCPOST/43H2fjXK8AnRzpEZzf1Bkx8
	 nIZ9Ww8Qo6eN/+7s2IvFB58nwHJlK5i9THGsxtdOHlMy5z7bjp99c8g2QozTLTQdtm
	 Ij70kheTewVge6lDTlSqA5XsVqVQk9bTSkg9yQXi2YV45NZ6PrEgPujAStppolW//X
	 0u5CijsMfCWnAZMJoZC82Kr0hY7Hl9iguPEv5ZQ9qxy9JkHPXF9UIYyZTuCZ1HImFm
	 IhCoEOHi6Cks/VWIm66SD/3/d9w32GV6Kpafid+eU1Z0Mf/9eAwhw3gOZ6+7ZeEkZy
	 BXEN/xWDKss1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A8C5AD05
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160649359.7253.13526303765040204909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e19cc892fd8351acfcc9bde4089e3f4996c6bb213080f8bd8f58d027cf8693
Date: Fri, 20 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771606493
