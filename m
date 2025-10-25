Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EA2DDA9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761388194; cv=none; b=pLizdymHhuYxAZK0USpd5Lnc1FVdxhWDmF/NP8QK06Rfx/MzDSQHzK7rr3HNJwODhzhH1pi8lbeGC1zW3fX2u5jXPp4/KPWuTfu0Hf1aJH9eoKGCIIyGoAmkFDnbJLWetZbXatL/sSgAeTRsd6ej9T7JfURSifBJA52Ckf9I3I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761388194; c=relaxed/simple;
	bh=RMXB9B3FNp9ft0FFoTAYbjkEre4i36kYQ2ZTZuQxFSM=;
	h=To:Subject:From:Message-Id:Date; b=pZEhtMdVMnvGK8l2JPVYcqKyMlEZEXg7udaPmAH9o+m3gHZU21Ahjm3TQ/aEj6pQ0SVqDcFcgI3QnfCleoayi1YbmocWOLLX9S6WkKGk3csNjsn7QanJDP3xq6UG56UJp91tAh07owPfYErMGPlUOwmRkq3guBIrkDcF4+xHteo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5tEYRK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5tEYRK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7508C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761388193;
	bh=RMXB9B3FNp9ft0FFoTAYbjkEre4i36kYQ2ZTZuQxFSM=;
	h=To:Subject:From:Date:From;
	b=K5tEYRK6UJ5XRgEX4jjQJz4opMkCUjPyfJ6P2PbIbKTqGj3X2v+Abk7p2YI8JLg7c
	 H8W/YvnbJSyTGBlpKB+3Dn3jIw7Jlc+6MRbJJpKQvl91UH4r2lKW5drN3iEeEK87IP
	 xaB5qQL0KnBKMPZxTHq/D/fvSbOuxleV7v3jrfMcMYtOhAKB/1Gjf55TXWs6DfoiGM
	 15M22hTx4tGfYOtxplnThzzdBaIEOJAwl38DLcp/A5/eeq7UeliQq51DEDDb5CMIRu
	 6CoCfyOU0SOtfPzu/8Q4kdL966/lT0WwG8TLm9JdR2FqI8DQO6HErIiB7dFZ/oIQXl
	 opg1aT/WHY5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138819358.25475.3786721661447755648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e037bbe1e0cbae1299601735ee4335f77746006e9222aa14d3dffce4ecfcb94
Date: Sat, 25 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761388193
