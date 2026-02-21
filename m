Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0235410F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771704894; cv=none; b=Scc2eg+EDZRat89Qb9LZD5udaPUXMyA/dVKUaBnT21EAK1sXbtg0nlqeTb0X/G3iOXcaSMCFM5+1IePdRp+GRD3SjDM20lRcd+x7RDvFXKNd1MPHIvx28B7P1Z3eHvB/+F2ab2OjDq2sil3FQH0H4cjqV/S/Z8ZLpsvA4hX3Vv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771704894; c=relaxed/simple;
	bh=5ZLX1cUe27d7ncFCD9336bppp5j4dAsWp33ZMQInAZw=;
	h=To:Subject:From:Message-Id:Date; b=ju+WnCQHeL41loS1N4jgzYc3RwkXG27ZS3i1uIIrMb39F8D4Snj6fJjQOOVv9rfmi4tMks1aVJShu0QBN/Op/jeTzbkYGs+Coo3p0XEDOFjH7qCfErwfTG1shdDY3lP/BPUd9mDIk5508XHyfKyQw3PHP0q9vE7Vl0jXkA4gqfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKj2EXcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKj2EXcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4046C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771704893;
	bh=5ZLX1cUe27d7ncFCD9336bppp5j4dAsWp33ZMQInAZw=;
	h=To:Subject:From:Date:From;
	b=gKj2EXcY9suyXlDxs977lPq2HLsBaDAIARBZTr+grYGYM1FJ8+HMhq78avXgjeeCB
	 dFt5jnNo7PKJO5MwD+zUPADBl1dFXFO6NJfzv/31a3bES1eC9jaJ2o17cmll5pKkKo
	 VAX82Ub76mfwIHyH86Al2f0y6F1N3ZB4SdtdXP5pZO7npFRZ6PSHm3EL1JT4S2ZSGC
	 tMH9T2NGBinQFS22c+JbBVx+zhgkRSYSNoi3bZLtStNGE1OBqqtu8zN4BWuDEND30+
	 rkDe+LABQ+Dpp6dQLN9Oxjm8QQqXhttCD49dHJ4bgZIrHA88T8zniJ2avtsFf9K9An
	 cHUnO/Gc4AOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB0C61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170489359.20352.9184685198588465092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c3524a0c16652d3a9b39063d5566696857d2493d6b269f2ba172349937c7ab
Date: Sat, 21 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771704893
