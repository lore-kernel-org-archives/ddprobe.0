Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607588C06
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720429583; cv=none; b=ZopRNvzML3ryiuqQQnAOZY2KToFZZJdw5vJza92R9sdCNAehZ0zehS4oSQn3s5V1c+nX0YTmTR6Z4Jjs8z6JO2L5p7IFD5rfY4IMrG2LMjRL0kwL55SL+oYJuhXR2nicVbardBFJ3YLWHg2e4Y+ftkMjfP28HVUgWT8Gf2E+KQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720429583; c=relaxed/simple;
	bh=Thfo3lHJ8nPuHvU2nPqsiDQj0iFteKtOhLhsyfCalV0=;
	h=To:Subject:From:Message-Id:Date; b=rEmF36kfreAUKu5S+KlTYMelD1KIYBCpQNhRndabdPROSAxVwrqb3COajFTFSTXuQKxV4dR+1qhdaqW55OdZJhPE0R03JCOMc0wVM9d/IPHB4j2OOamDMgPqUas+mVVyAu9AP3oV2TXEwQ/kFHTYvhfeMilOcLVE5Xg0eGikBeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE6p3wSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE6p3wSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9ADC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720429582;
	bh=Thfo3lHJ8nPuHvU2nPqsiDQj0iFteKtOhLhsyfCalV0=;
	h=To:Subject:From:Date:From;
	b=aE6p3wSqsXrBWrhFD2H4RDsT/s/cdb/hI5oMK7wr1FYUxRl2BZCQNbYhyks9XHzco
	 M8Epu1QW/GuIj+d3QLTlIn5YalXw0XvzVX2NGlLphyPGihucWFnnqnfp5DmMNVgRDm
	 SH2syVba0uGAte8rfEzHLYDQ2AdaSHHjpImGLXmbPDjnkeB3mSjUnU5A0c1ODMpd3m
	 Qb/MIcYNfcHWHWFCIDzaODB/D7ZoJL5GvBG3JXRfeWJ97StapNsnLoCLXo00Wib1fH
	 YLs9L2jp4zswZSnkfpgtGBX2c5OgxAo9bi59GL59xGDFwrIj1wzYCNjQ4XzxqaDmVG
	 Ql7XYTQVVl62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE57BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042958276.17531.16470765929809814511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b1b86d801806a6b2b8f83644165b901329b64d3f543d0ad30a89930d977b65
Date: Mon, 08 Jul 2024 09:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720429582
