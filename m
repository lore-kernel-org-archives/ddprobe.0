Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219BA27FD62
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768731234; cv=none; b=G1sEtgXHOHbPO7ZhcQJI9XyY8pX5stTqbkTbTKjLp1bmXSOMH2notJDo068wXGGRgRDeeY8tP4P2pez4OHAfcDvv2SUEnc3nUDPOlL2VTs2hg/7ZBO9CUJg8u3aKyVU7QWIabWVGjLLj9fbGYaekfk/FDqC67CDBwB93CV2K4VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768731234; c=relaxed/simple;
	bh=GNQt88uS/H30p4Ki7Ico0ew1WdnL6v6sn5oheadlEg0=;
	h=To:Subject:From:Message-Id:Date; b=MWULu5+eyw5cKWjLYhzAKJJALwmVERlkbX13d4flXdMzSwQC50DY6Wc+5M18gcULN5Ef9NN5vfe6BWk8wftG7ajAnMw6CmoUNoxPzJZH6mwnWf51IksnxAIXvNSwSMvWf5T/7iDdddtS53JB8ZIbIVTe00ZpwiL/nTAYtIpKYcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1/pS6jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1/pS6jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC313C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768731233;
	bh=GNQt88uS/H30p4Ki7Ico0ew1WdnL6v6sn5oheadlEg0=;
	h=To:Subject:From:Date:From;
	b=V1/pS6jvxQ1A7Wf6qaDZvbIlXWr5dC4AS+Z7H5Csc8dHg3btNGzo9btkC3YuICP1/
	 AEsnyry/X+s4QwvJVNEPFi5Kp7oz2oLECkachM+Yw+deyahva+3RHYO9gK25ethwGi
	 wn52BTspQ+TYbXnoJS8vOO9nGIxH7E6mCs8o070M5ldBjrY1SqEi2G/fgwOH/VoAfL
	 +m7BbeBCppPPj2uFlsJRQUDO8+TCIfVnMRXvlJHGHtH4dd8DsLitlvQMXznkvSR4PD
	 356mMJHUh5icLPB+jxfS0dstdz90CUU4BCuBFuXXJh/+pwE1t1DNd5ciq0ZY5hmItF
	 gIJwJFkpHeTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDACC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873123360.21004.11673872257795642675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1e0c8b82f3d8ddd672635de8160cb1d5d2d0b17a908eedf3bed8c5dc8b3ef6
Date: Sun, 18 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768731233
