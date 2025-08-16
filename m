Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CC7261C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755362394; cv=none; b=Z1yJAraIqUubfCxYL8bJAh2M8UAs9ujhUjYq2sswEgDF9cldIeXOWuiarGSRwJrnoToJWC3essnBOd6wHR2Hg/MkaBWLhG2Z/mHVXpJWEIjYrfClUvB05qpAxUaHJ7QDGqgsSU3u1Vq4st46pr/X2tXV8uh2fRLs9rNMamDuGO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755362394; c=relaxed/simple;
	bh=DnNo6iqipV7OdZy5+r0fvSymJI12C1T+Xdxk304Vl08=;
	h=To:Subject:From:Message-Id:Date; b=mY1hTlrOshnj6R00Noj/2dxAQoVhYc8c5YfoDUjckuUaPAKgs9m2+wcZVR/jB27TJvdSNeZx0oSpkUYM6KwkK4cCw5omsy3sYmiBu65UBp6YvqUtPvLxHMYWTktK0/f7rPzV7M6atELsHQ2B5K8vKd0jfz1X4EihmKlX1xN3158=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKkAoFND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKkAoFND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBA2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755362393;
	bh=DnNo6iqipV7OdZy5+r0fvSymJI12C1T+Xdxk304Vl08=;
	h=To:Subject:From:Date:From;
	b=rKkAoFNDsaFxlyZc8eUgt4UmwAj2GBernlRHosa+5j5/6F3lLg6ykm+V0s/0ciu44
	 D5ciM7DJLjhPoCRe6etz0O9PwLrVJTOF1iD0QArgGOktPbcjAodBo+0PSHqlfZxzbi
	 /1LPYOsR4sdKTbUIWAASZ3aQIMAtLlOH4ubHhF2JM63LC8nIfANnfGCQ1XRPpZP8dY
	 XiDDfL9zvmc4M7IsZcK2RS7Uswut2kEyUtQ6nn578QpglemIj4ZTyuBwJnl4RubVF3
	 s0pjyFtAaxDQ5xNVwivqfe6v+/uuOohFBtCAELjiJd4SpNxAZQLVa236AwMmvfglkG
	 4E9FOFfvVgPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2EACA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536239359.32643.2443550858600758151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3672eae7e774229647bc83c1f25cbf98a04e28544897ccb085b2ba644384df2b
Date: Sat, 16 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755362393
