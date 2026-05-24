Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4724B946A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779634954; cv=none; b=O4yW/BuHcJeKTprxvL0VZQ5H9IFI6NFW8LtuupZU8bzZtMIA9ZTcOrwKAaDTnKET2yJAotpEDD9xIHEiasoKslSZjJLtwOZCkVADetP1XS4n+4904YhIzf2rCgF0BY9MDR1MVP79ZKqvm/duf90GqjH2qHAGi3SbqJ62clar2R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779634954; c=relaxed/simple;
	bh=+DSrEGcpnFeV/fW7hRZ1WzjS8Dl6BZIwv1PTqmcRER8=;
	h=To:Subject:From:Message-Id:Date; b=LP9+TjLEjUq3pfXohcA1LP5BsO1sMU0Y2ON7ZHaFdmtt2JLqpSlmoV3Xkvr6AU8JmQMqBfJ7oXz1xl1lKCZHpxef8xtrOM0aKoGSzT9j8F5XMn2kF6SlLKurrnahmsuEmIpFkY0Fd8FU+c9ifDwIUa/b5ohhQ24/rD/dLBtAh4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNOgu1u2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNOgu1u2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC60C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779634953;
	bh=+DSrEGcpnFeV/fW7hRZ1WzjS8Dl6BZIwv1PTqmcRER8=;
	h=To:Subject:From:Date:From;
	b=cNOgu1u2GRA6EJwUbsXzuC6u/UoSNtwXb8QVk3z010azhPZ4gpIU423PacuqPYQ1J
	 1F05Bh/6B9JwflBvKG9xFdCHENWZGtMsGiuq2rz1OM3JG9A38+MlOj0F7UdCFr8lMx
	 k7GC682L2pHQJdebWki2AjZF3fVB9emajEZbEZ4rUeRjw9kZDbG6LV33Atp+Bzq741
	 QrcLk0njeDx/n+jTVt+DzmEFWL+W6Q7kIAW69lbtNeh3zjqMDj9UkeBMybro2qAyal
	 mKrBCibTwQG+JB9MB013yQuMFX01IACpNpqeHFY0i40YTbF7k9/QyuE3FLGlhTbdhq
	 QtQQY84CZi8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B123CCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963495368.32145.8001695731464283237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea742ec41f3b84f246766741703c13dc0414929e63f6b76f345ec5809a01a1c4
Date: Sun, 24 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779634953
