Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805C286A8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721400954; cv=none; b=Vxjp0Mcay8kh5FEIz33l1d8C3TdJ107+cruyr509YuQqNWi0f7edOBw/l7KyL12azOX2J/BGbKmScJ1HZ+chgkQWrR/IGEw/3yuQosRmK4tSYwT+dXemkv+m73sjKqyHgCCJrXZbcZOTLx9wfrmZc+I4A2FSwI7CH+Wd7C3FEfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721400954; c=relaxed/simple;
	bh=3ASdqqTIGlTVV80zmpAlIseMCT9YMwopAa+YO6l0qac=;
	h=To:Subject:From:Message-Id:Date; b=nravZqTeRUAvEUwlYt+8qTeXU3zySlJk2xprgsYCLDLmtsrf3DJQtYSg6Hy4CANpFZLowfBiAMr/Mi6jLS9Iqf+LGTOasqCsAfNw+LRYZCEJQSSsZQga5qsWcUi1ra6sgej/jF15NasqTLndzGIn6f94cywpQaKEGpgu7R/c5BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJml91Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJml91Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78FBC4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721400953;
	bh=3ASdqqTIGlTVV80zmpAlIseMCT9YMwopAa+YO6l0qac=;
	h=To:Subject:From:Date:From;
	b=bJml91AesCcBnJ/dWt9pcomxFO6qOWizBGDXHmRqlH9rx4dtt67gtQlL0Ener/4L2
	 GgjKWehN3o/O8bMqbbJx2Ed5zvpPOfNtkXGjKlAyZq7HLP+cwaT4QGhG7lgZX1ZMNT
	 zvUCGbnxlzLj2BQRN7egsSFeUsRtcYdViSgpzckTtjQI2g2gA9eXJAWsMJ5SUrOfm7
	 XLG6we4VxMubBI5GAQFHX54S6nzOiXae4fuMXf2o0dMNTUXvxBfZ2phvvSY8LcXwDD
	 IOAhllF6vy/hnu3aXnCWD9H2PrIRHB6/V52QwFv7tarZ/TnHs1CJvqARxwMRvh1jZ/
	 0B23rkXxWcGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D08C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140095359.20787.14675131424444322923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268b31a88f2d13acf8ec4e5a24a8e115cf3022784e6506de4ecce385edcea947
Date: Fri, 19 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721400953
