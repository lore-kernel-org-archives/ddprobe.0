Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE8E3E122F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776094654; cv=none; b=REv03wARTFqutHiyo3YhjsdxqmFI1v2retGGc3jN6j4me4Eu84WrC8qu4PDMZYqpoKgEXvfNTsskCS/yyWkloR153tEbj2ackVfFKMlC3vcFVvi1fYWwA4IEny+s9BUgZADwQK2PxzKWxy69h95kzZi6bJNuukpQsXtcUpKyuiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776094654; c=relaxed/simple;
	bh=Oh9z6CejxGnOl6anStGKvBh++voVLgedl08iFzIu8mo=;
	h=To:Subject:From:Message-Id:Date; b=K3FOjeEEYDabC1LLDm2APBQgAHoGvMzkLT9+kbC7CYLiyojdc33+ES+j/oFydHPzlcEShibPnmB8HbDBOlyGtYE/AGdu/peLZcvg5B4judQ0YrEQ3QO8HUtXIKt8y8wNqDcsRs7oaaTrVBk6eaQyCbo2Yq6sb5a95jmc3gssZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnrB9Aj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnrB9Aj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C714CC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776094653;
	bh=Oh9z6CejxGnOl6anStGKvBh++voVLgedl08iFzIu8mo=;
	h=To:Subject:From:Date:From;
	b=CnrB9Aj6TlDB84ziX2RVhsZfgtONeiiiwlWBcPsze7u+mqid2uwEhbopooJ6E7lw1
	 GyMoNRuIt31fEXk+qVP1/HyzTvtNJoShgmeL5b1TLcbxt+zrfHfP1kcxcz41R2bHFO
	 XAeC5eO9WP68mobVpH+03tL602cd18mzWvYMJW75aIAiTpLeBi5CfXfAJ6u8YXZdMV
	 UjeAPInKNFgB1E9Vsy32MSJY0NeJAAFHeXqFmhPlyLPecDM1Jdzw/XMRu26dGD7rpn
	 7HGzcjY3E4N0/O02MchNGr4bfV2pBIhUsnNa+y/YKTUoitMhlCOGLXnpkMkyBNpOoo
	 PvCEbQtN+quwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A52F34C62
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609465373.15037.2735737645090639911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e869707ea3c651d76a2ffa13175e7242b4922e3763e63fcd0f11b51a437b38d
Date: Mon, 13 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776094653
