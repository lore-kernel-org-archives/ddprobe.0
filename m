Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2789036D50C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763711514; cv=none; b=SCuiuX/uMTn6i51AaiL/l43yNNOFNnU3CAkyXr3LV85d7FyJ4SMseFBJDwkQlxNe3pqEuHgGYJkHIuHpD2nDBgSaIbuzgtaUYPNnEHo2Y630ittdZxYDUl4yT8ziDMMoikyzGGTtCitkSV8q20/7FldquIQr2jBnJU2U2jumd9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763711514; c=relaxed/simple;
	bh=sAvYF8eeHBmTn2sBbVRj/qWtowMC0LivLsnNH/M37G0=;
	h=To:Subject:From:Message-Id:Date; b=tGg/unpPasy4/5CpI9RCUg4IoeKrSsCBCu1csBsFJ3mVkya1zxr2jeBAoyWwFVq0JCn2ePy7ahhRdfLxtY3ir1UmK1GRaYIsN3e4X+sNVkghGzDJ8C9b2m+F5PBsFyDQHNJFnf99D+HjQtPDIdw0lbFoA7FIgK6PIarJ+Ltu1Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+GtMgEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+GtMgEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763711513;
	bh=sAvYF8eeHBmTn2sBbVRj/qWtowMC0LivLsnNH/M37G0=;
	h=To:Subject:From:Date:From;
	b=i+GtMgEBwZ5ElC4zLqOF2udjSaVIS2+UlHepXq3tMGBAOlvLSknAHqps50ZiJfmsQ
	 1LcYZxSD5o5jkq64gJ+N8B2y3Lbu7mLJOEn1jVQa01Pwe6a+TudmImVBTRy2FdwoPs
	 HAWgGLumyGWjIwRhB4NotLX42flqLM3Ymtr+fgURT6DkvQI8MK+dQg9kZO0azZnLBn
	 ZnhOlY5uTIbpAMgb1BbTmDKImHpQb0ryjuuEcr6fx3ze24A9wxMKOsSsB4u0xJDNNd
	 gXK8dApXNbzI8qaf5f5n64eCbSqZFhUU18HABUkck1lUY4k3v5vbeWAJ2RHc3291JR
	 ndN24g1IfWh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F9CFA47B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371151359.28476.2144915372459598721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a03219d0a57db0df644dd1d46ef5bccfc5d2ed136ee1d8586984e28f289f97d
Date: Fri, 21 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763711513
