Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AE2F872
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769216634; cv=none; b=WJYIfkEQKM1jR2XXGBwREhhqbh3jhVTugdWUuIgeb6J5/CTTL6TMeUMyOCIcG2MXqcqhcqUllztTmYKfTaXF9GzhVmfQJZrCAbzchsQtpVLigmUEqrDDpC8qRMPqHjOYvMdTjrG0OPTvcJZ59lB1DdQ8SZd0DXPHy4QQPnotBqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769216634; c=relaxed/simple;
	bh=IQh9UiKSh7aywNzWgdxiASVPcDhdYD6HSSgZRsYuBx8=;
	h=To:Subject:From:Message-Id:Date; b=MQ8sI7o/MLji5xekrkVIt+enjd0Tz0OGKaykIgSWo2LdRW4q9Yqg70KCmDUP2cVFec7Lylz71dczwsSgI1J8azwPbyq+LIF1pIi128b/zUC2kF5G6+wF8Hm0u6L6AmYPQJks3EWqNNK3PuB6C+Zo0ElHRzFm1wB8PCl73Xq/2GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh1WBAbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh1WBAbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F45C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769216633;
	bh=IQh9UiKSh7aywNzWgdxiASVPcDhdYD6HSSgZRsYuBx8=;
	h=To:Subject:From:Date:From;
	b=Oh1WBAbOODdmTpsOG/1oFHk2ukMotGVUC/7sghMiOIfzaBHauxrq+i+Ex+aqBfTCY
	 g1avVPAXbIlYQzqroBCZ6lsU8+9TvCn0Zlum8UUHCEe5dDo2cNWvYAegEyP/sZXTeg
	 Pu5vlsxaoS7k0bnuJPtdopA6SmgWgbOJnZUTwWeAJVWPzN9U26rJpbAQLUA5mWXoDK
	 yQf/vmJj/AS2+NNLa8aHvH4PHWHNoBNHyj2eHmhYHqBBho13LTNTN7wtw3LiPdtmVd
	 lC7WFFNoinq7jBtfuwKTxpwAr0KCai9JedegCWFQEUpiOeka94o0NHXMJFE3PsCWex
	 JVqNbVdATfmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F902D778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921663357.7383.3141032211620034386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4042400379df793fda152e127595ebcd2117d43afff2af7e73bc2e30e18b5a
Date: Sat, 24 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769216633
