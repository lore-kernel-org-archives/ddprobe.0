Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B81EEC0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760123994; cv=none; b=JX8fl1apPR6gur4A4HxTjfFb8tzC1P38+HxyNUMYaDMPNwrOZr9qqU1c+T+Z3cshJbYntWLUoVljLDiMXPHqyRAQ6G0HzK+jZN0BrwpK/FQlYA9knYdOkLDRpVUot/HancjinQbwJycVzeflc02NmqKgP/6K8LBbbZ5t5btNgOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760123994; c=relaxed/simple;
	bh=wv1p4FkvirqWofUUgy8HYUwqCQiDm4tizRnA5VnlUlA=;
	h=To:Subject:From:Message-Id:Date; b=Lf9pdaeJnI3zL7HLCMRdpvg+bSGUwGky66D6NB2Hu28GBe7V81hgh7SkJ3V4iO/GATFX/lOWZH6NJO5GJ54hlJywHt3SBmE1WvUKuiV64XGz6CD8IIJfGolPOLiI1XGVktI/FpUJZ0vJ3mFVmGLj+sZ+tj6a9u1VBthKRN87vxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MufUAkVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MufUAkVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D4CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760123993;
	bh=wv1p4FkvirqWofUUgy8HYUwqCQiDm4tizRnA5VnlUlA=;
	h=To:Subject:From:Date:From;
	b=MufUAkVBIJ8qMl0JW5kKMBqymJGFNHtogt27bKnZus86UQtP4QIIBOe4mEDk1pGGH
	 IiD9Jr9p+GPIqUL4OSZSsqIuqLVHg0h3EWqNtaFWVFK74I4loNO3UDZbnB+WZAZDV/
	 ZpMmMqut3PKuctp6O7sflcS7QwOwr0aciSVaPj31hJD18Jg4rta7fGxUj3MW9S4p+B
	 Bdbir639f5HpUMhsLL6SDZ3SjOn0P8SJaLjpGrPOs4dmBLM/6hv0uUKYo2bRNuPeDH
	 f9j0gtPT8bQYom213IaytitCl6jJsCRucE1gPll9WuST/B8VC+9PQPw6jgqbw8d3Q5
	 nFMUh3i6puqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395BCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012399358.24382.8761842083560123630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1c551bcc019cc35e4c22eb6332b232c6d054ac029cf56237f6d7d1c13cbfcb
Date: Fri, 10 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760123993
