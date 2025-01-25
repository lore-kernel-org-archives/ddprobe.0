Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7D174059
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737846354; cv=none; b=i9i7lzJrGclNJl6x3k4rFqX2W97jRLsd37XdACkIx/HiJzqPhPgRtH4j99iXL9X1A5lR7PWUFA6HkWoafCKnaOEcDuayqoKci06Pgg7jizzNRO6Wy0xGI8Er8WqDzqRlE+VH047wGo2+nG54L1s6wFdt0b7HZDKjlwnXo9oxSNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737846354; c=relaxed/simple;
	bh=CNy4mxsybiGxhns0FKLOhbhMCf+jyhnJ7dzzO2Gx/Vk=;
	h=To:Subject:From:Message-Id:Date; b=ra+PXSGQhP0BZsf+gRQA1cfnHLeqtaQ11CfLjCt1z2o90kEVoxmvsYs+ATcjA14lDLGghnY9PKNkptDbQcO7PO/X3iiG0wWku/G0HZMtckyryEgZTby1SnEs1aQDq4Vygn1+nhAfMEse8o17TBJU/9xyctHtvdt5078pZacJHNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvtg9sl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvtg9sl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B1C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737846353;
	bh=CNy4mxsybiGxhns0FKLOhbhMCf+jyhnJ7dzzO2Gx/Vk=;
	h=To:Subject:From:Date:From;
	b=hvtg9sl7UIgnWvK1BzYklKtxc48s+S1RLslOxHUj53m2uYJqev+MxKjSMtRvEkWk8
	 rRx9aXna+P8hdMxXBOdnobjhq5gMKpm41zIZmpq7p8VtTKM31aXnRx/CTKcztkWr4X
	 7J2siEb8GaMR6uyosJL5FiSp/+jh3W3/jq3XAPbooKsPjH6ElNIoYtuZHlWL1S9fps
	 AZWy6zXiw5A1c7XUVu/G2rrFaISQ3tOrJ71h2INcgrqa7XxXYh+kGCbmioGLpK5wTB
	 tAQGBp0a1g144x47kzTLmBd9Dnx/JgmdCUz8VoVOHlN0Q5wnDfa/x+1K69zc8wTGmv
	 NTyi9g9F/avzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D1CC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784635366.22286.8663671630307251384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6726084c172417e7572fd8b058b348811e0987fda5b0a5a617fc5653274e9b2
Date: Sat, 25 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737846353
