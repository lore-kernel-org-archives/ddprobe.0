Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2EC3C0635
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777645054; cv=none; b=hQJYiliudbUA+CaFD5Os606q5wortYDZsy6Y+TtFKn6WTMdTmy7aQa10gULAVesZ2SrM5ACh83GKC5D1QuFK9zMNraY+8l8M2nvd78LQLqughc3z8V6TJjSNuQToMSJhUf/IBCoUDUGZOz0jcXk+5p9XV0UZ2tMC4Wk/UW9rIkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777645054; c=relaxed/simple;
	bh=3BcNLEkNVoUO2MuyJFhij9zCtWKp24keYTJ+ZaK33t4=;
	h=To:Subject:From:Message-Id:Date; b=obJYjRLtsAhPoX+3R6cv9T5R2cd9AwfREfdCrIHebN3NSPC1qQ6od6d1VFYz70FrTpPOiiWsXy+3t1PMBWmNHT1/xtzME1Gpy5io78FEUj3kYeOThBvFN7B3dPSQo0Pgt0X10Oa2wEQTgioR1DHbl8sD6a45DkIqQJI40JCCx7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGrsqlKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGrsqlKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9159C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777645053;
	bh=3BcNLEkNVoUO2MuyJFhij9zCtWKp24keYTJ+ZaK33t4=;
	h=To:Subject:From:Date:From;
	b=WGrsqlKTcF78MalwwkdK0RWnKltc0C6RFp6A8riP3iYb7KWL+c/CcI+j4r2WK4fMU
	 6LlxW6JVZM8VHWKGfM/Z9WCmJ6P4hD3NbPiWhkHghcNbzvcoo83PJjTWay9p46eOMZ
	 RG8OjEW2VvvdB0LneqMQFHAkmNdy6H7ZESUEQnh/Sb60db5e4xIXG1vDclQK0WbY7/
	 CinwkgqDUeWiTeOGiUTIm+6DCA44nYb8v2/htA+PWSgcgd7mtUT1/pjT6TfS4YfyZX
	 dJ3RRyKP4Uwo8SlozlxgEt6mW53nT+wWfVe2f/0HfkSAJskD7sq+JddrMQb3YJbih9
	 rHtpxg9PTkdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA115CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764505368.3837.201281579027137573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107edbc2d0e1cde2e30aa578b8cafdd603b7440b47600950e628d6ad3bf1d176
Date: Fri, 01 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777645053
