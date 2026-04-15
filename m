Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C36E246768
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776286054; cv=none; b=pIzyQdFbpzx3HCKDXD6njZlgEfZdBDO6Rqw0i3awNwu2f462hfHocAm24/X44IHll6YhVLFPMP1bYgMfNpyVXs6Wm8sy4w/x+xSKpExX8SBnoa2LnfSwEyXljalU6hD+8ZNcDf1yi01Xzqofhjp6htmZ6/r5PZdlMW6dkQgFt8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776286054; c=relaxed/simple;
	bh=iMXbGstmAKKnTmfzuXWqNXSJzlLk/hq472wCyv5FEno=;
	h=To:Subject:From:Message-Id:Date; b=GYQkUseDw/UZLNPrykveDT1otRCF0u5W3YN7JAs8bD3W6w5bd7dV3gbbQoVagdwyX2OgPJscwSguY+L8uryOGKUuF0hunW0B0KV0gZkhT80zd93JiLm+MffHyW5HN76qXehsVCS8ZwJL+yvBQ0O7sQSt39BelF0rYFzpvPAwh+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzbM25Jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzbM25Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB10C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776286053;
	bh=iMXbGstmAKKnTmfzuXWqNXSJzlLk/hq472wCyv5FEno=;
	h=To:Subject:From:Date:From;
	b=SzbM25JqvOutBhhgdbb/JPondJiAisrCvOsm/pGdzSUs/wSRtcp/Adl7lfNF/TPd2
	 26gTrzWKbWAf5ZU1FaPa52i27eaMCrfFUtV5WVgzCNAw5LDrE3YRSjhGwzLdBvPqXE
	 fN/zKso47Y5zhzpffYLx34Xaxq4JJ23pbuEMRoKB0DDY5wW4p9W5oD8XrQCAivNP0o
	 qUk30qdszxqCTEY31JEsBsiNAt0StJCsTsOou9Fyfks1PWgljx3UOlljrW1aMzGvxt
	 1KANkmtlgbud/wPeUJdSJjYgJDfBApdz7V31Ve7Ze4UtuS1217k/ar2U09uFH0niO/
	 Ho9UHc4JtElxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA256F428F5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628605368.6684.11645429696509706405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a12191d18cb8559c19abb0b562247753a9fabdf9eae6aefc24df8473f36112
Date: Wed, 15 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776286053
