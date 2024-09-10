Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD483184535
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725970553; cv=none; b=EyLQAYGJisrCJxyCIiEEeOzd8gPu0JTo0UtyszmDdDi4wjEZ7w4XTJNtSVUTLaywBDXAVxC53ScTY6SxTKMIgmWzzF/BkNt4pgMMnNMkFfhx7TZx4LPcsGt1ACz6bn1RrfRmSS3m5xM6WZGp4MOJgP8fQy70zBArScV1QoB/ZBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725970553; c=relaxed/simple;
	bh=Aq6nqkkwTUlXaeHgJXZFFCcU0/NoouqoxeFxoqbtpB8=;
	h=To:Subject:From:Message-Id:Date; b=ZZQZ0VB7Ll5Z4nqTv3s7BOYMzZSyu9p+77ep1sZAZV75YAhaITB47OLvfPFQz80i2a8g4433nqbX+uZeXQBL/XJDLEqr2OgZ/xl6nIUOce0tgXo0GOqWJLw6RIj0n6XrFHc6EZoLCeFTEmrl9n1xJuPAbxGgZuFcA3jS1cyg+us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9KIwGyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9KIwGyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337AC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725970553;
	bh=Aq6nqkkwTUlXaeHgJXZFFCcU0/NoouqoxeFxoqbtpB8=;
	h=To:Subject:From:Date:From;
	b=s9KIwGyBDsAEPqXB9btwjSCUZ4y+AVRtygXANBe3pMiSV7gGkqH57B+4WUznfvgoW
	 SrZljFLAJV3G17CRTcl2wUsK5HtO0mYUzhI0Bd9ciIPSt0CUnrGccBnEzuKbS24FfA
	 pEnKvwwSSZZV73NZYG/wSgVGgpToE+rqYobHpPnGDmSuwmxPzeANOCAyug4WS/Q3IY
	 ai6dnevkSLRE54fFve0lqvoBF9FBA+CWIWwtyBqU0owoOPs56dfU0SsOMCQ9gLAOU1
	 2TM6uicUncD/XYGD+gO4JBLuDyNqRBUCPJpLR/TpbRmUCW0u/Mz4a3QZcNON9BEp1h
	 h39r7pPp9hVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B17EB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172597055359.27095.12924718709439565966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7279b90e3868e5e8d343cc43a65932dc54297dbde62faf2815e3bec394603e45
Date: Tue, 10 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725970553
