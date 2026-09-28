Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBEF4C33F3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790602234; cv=none; b=C+9ETJkSsK4ADaOjs1XBJiqkXS5Oxlq7ulQCo64vzY+OQaBr3taWJ6ISVIVRHvwME6BZij7aKCvR0P/QQx/KKy4Q3oTLukh2KuldummQxnoRdsDhe3xa+L6B2uRhhxMULQngy4b5/ijtEf2sVz7Et5zZvHXsKb0gzzlYmt6u7oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790602234; c=relaxed/simple;
	bh=cWiafF/TXXxYNcN2PJN9IF6iDX8VudkwiBySC89kPy8=;
	h=To:Subject:From:Message-Id:Date; b=EUQgE5HPt5F+73GDHqUZwEPw9/W4lHrKR1PQ43wrFtGYkHomp1+61ld1NxPqco60GtCOP5IkqJhuypNevKhn5xwNcxy93rvZhuf6DxhzEfpIdQMhIHeZDLpD1b/5IkOSkoADpIU6qnIoRB0FSbBUe7E2oUOlsBLuJrWV9hxO2J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJs8uatM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJs8uatM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE446C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790602233;
	bh=cWiafF/TXXxYNcN2PJN9IF6iDX8VudkwiBySC89kPy8=;
	h=To:Subject:From:Date:From;
	b=nJs8uatMh4FVcV2wtIwn9VitLvXNAij2leBTXcPsjccSmJrL2e0lCBpg5iBkkQCbg
	 4RHSDdVoUCqRFj7djK/wx6FKqalNFLi90MuGUQvxnXuQQA96i/UvozRQzZSACgZivC
	 9pslSblRZGFq/+caigOgGAXxvNfAvFGdxJJ6Jr5YPrah9G/RJv7JJRpg64cPSvWIwl
	 gE6WGQ4a5fYazcwUxIO8+JszUTUF5gmet21Gi/Cb74Wsb+y1d8xQ82NV0QHNzBB7bG
	 jPSFCOiyzyboYCF8OzpxfzE6ZwEOnKUwhm5Ni6lh9kQt7tYVMyRRreQPGelBlKSxkn
	 LxSF4IsjFnvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BDCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060223369.32156.2824408177680137011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa843a9211d06a3bbe2d09c3a7bcea2758a447207ba87978a2afa7a376232475
Date: Mon, 28 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790602233
