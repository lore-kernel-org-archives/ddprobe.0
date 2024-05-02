Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B79225A2
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714629143; cv=none; b=T39ghcAnNf58FDxXHVIu1GPP7CbelnQGEdGXJpF9h8Sw+k7/x+iXZH/aD+umXpUq3Po4Pn1GIlR+bay4zKv5AgkMbvKFP+bWTcLp6RdNQ+9u328vG4dkT8pkYsqJ4FqrIxjV8N5IbGuSAdVydhFIDgm+Pg56k7cmox/PQF366Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714629143; c=relaxed/simple;
	bh=mn5pyH9vibsmG4lncY6+KHImpTxL9rvtJ/kP6hbzibo=;
	h=To:Subject:From:Message-Id:Date; b=UJDJfvJaI0ClltRtpZHHTDFXCGlpwa6jlZcLLiWjeIS0dsLQP+YIFf+GzSv2nzHdYg80cLPWj+25cspdHypg3dXmLMDGVxNVexGaVlbSjNv++mxE4JYLjBvh2rVVFpqqQI2Ce3+6MqP1u9dyNPUmfw1APvPmRFxeUwPZ1DoEf7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwALprUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwALprUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6567C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714629142;
	bh=mn5pyH9vibsmG4lncY6+KHImpTxL9rvtJ/kP6hbzibo=;
	h=To:Subject:From:Date:From;
	b=SwALprUy1So6X7VxBwEpYy4eYTtzrOTSFIP68sOkz0IGkwMXn7Yj71qi5rWAHQjp6
	 8UvActcfw/rwyNxdfFCeUlJpFdfB2RKBNDiB+3jQi9M5FikhhUg6lf9LFlbfXsQMWU
	 TGxHAkIGjmeXng7JKe6jNGahBVYKKonH+PTUHM/wPgpAxso1mBrNSkcHs0TEE2vEcM
	 N44qEQU7lWeXcCdx1weph55yBIolEUj8980TGOxcvqRfv/q0+NpR2fl4sQcB95S5ME
	 pwvLgaEKXj7H/DmdkPC85bWBHxMW0HK28biVlpN9Z0QZYxQpv1d07Z3V24WLfxSs9j
	 2sR8sgI2LiU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10D3C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462914277.17635.2461202565874239844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b3365aa382e483753417a0018b9c45d1fe5f21dd6a1ad2eab448911cec92e6
Date: Thu, 02 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714629142
