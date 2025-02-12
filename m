Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBAF204F65
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348454; cv=none; b=ZUkrbKs/L1sBMA3+tT7FDbKovPouzHK108TDL/DbrvDiraDxNTCqMgW2COJl/nK+krQiDIgXc5O/IgoKIHHukhcCgEuM8+brytpmyVyQG2AObcLU/YyQYqPu5dVYUl80i8vzAAJBRQVroX+Oswk7ORPHAss4P/iILetKbuqao10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348454; c=relaxed/simple;
	bh=DMKFyttVX2KbCsA1M9zT8ko54A+AQMsUSs8JvwWPQ8c=;
	h=To:Subject:From:Message-Id:Date; b=hY1GZFFZeGxsS4pDxuvPv84nsakchWH/nASTyqx7cm2c7Cr15rRwQA2nmJ5vRv1J90Aud8n8+fb7uH2lh1iaeR43g1orqcZU8+NrEmoqtAXug6SNgboSOxI3TCloK3YbI5rSVQQprSNDV0JiwE0Hk8DT8NYmQsUPK4BopTyqbDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1ojurVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1ojurVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56A3C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739348453;
	bh=DMKFyttVX2KbCsA1M9zT8ko54A+AQMsUSs8JvwWPQ8c=;
	h=To:Subject:From:Date:From;
	b=I1ojurVHTVw2/RYb2J30BcIa8U9AxF2MVUa1vqJMm/05e4/hWkhlvbrwh4ZUkYzYf
	 fURi8DaNZlqXIogLMauYcm24EnZCcJQP4PMBewEVDJM4ZszP8+Drj3ZElRIp3KxieM
	 /LDe6AMoP4lqx+p5FUzG82qDv6dfOzfPyFAEwnb458a4roBCUKkcs0ddcHY9/nngjh
	 /8I5Ucqmf1aQNPOAX73M8sHVx9pzBd2Ick+OFwWh8tR5mitET6KdEt6ZjUqtPyVVd9
	 /kTbQTyuJ0M7X0087VrjToqqpbQvd9y+X49QerK0hJAmRlZenZyBpYDS5WvqtPLER7
	 PHl49wAUEqRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B103DC0219E
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934845370.4799.5098228677628778082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610dd400ccc7239f5e921c22a159defdd5934edf178f66b1a0eea304deabbbb7
Date: Wed, 12 Feb 2025 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739348453
