Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D61DED40
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740983937; cv=none; b=SncCuFiRpf0yiOYas2EKMwYuz9TVcGVL5wyQjcRPD2KZteYSqDPLPgcRFpegKWsqFIVjT9gtclsJ7PwNCchwf4rjQES7YA3nRldIG6/b3k/c3HNf4c2LM7jrsfrNSkjTz7dYxLAzOVKosZtHmt8hfWrkMCMXGF0CwO4/EmpgK80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740983937; c=relaxed/simple;
	bh=dJnCheJYHxw7E67PoRhgIeAA+xvtIAY43cikV4TA+4w=;
	h=To:Subject:From:Message-Id:Date; b=uo4wthbwrr6y3W7kunXK7QrW4VGxLc9VrucoWyJ0UBQmz06Y09L0rWw0UPYeeapTMJnPIvxNcURBULRykH7cIzKRDMDTx4YzmQ/eXcGaH6h7pHyCYxrF0XZJGLUGdBEUbBiLwU3FJNjfjdP8shpuhU8lpjF0MkHAAvgr7Pz7slw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbQP1OS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbQP1OS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6340C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740983933;
	bh=dJnCheJYHxw7E67PoRhgIeAA+xvtIAY43cikV4TA+4w=;
	h=To:Subject:From:Date:From;
	b=pbQP1OS56PenyWzdnJrIM4z2+jO3u9zVuIAz2Hj7Exw8KU1fc1K60T8Kzlrim+EJT
	 nPfYSoTqxxPTOGPmj/+SOz4VGWFLxcMglWnt4YpgSy3v7Bxf1Yztafr48Fa2xmtIlF
	 X9t5yf3jA21038O/zqH5RGlxY1bl97Tp9MZtq46bvpjBJRbblSt3kJd6DcmKjApWo6
	 p8ZjuSk+3MJDyWylobWpxF+TWbTdbxLq7NlMk/cMmzNM0w1uZZlViC4H7G4TysxbBE
	 lAJvchu766QsPytjJqmBf6hUw/fAVI+Bj6+kS8fFfe5iq2oNoKBmlFoXxeGKmX7Wya
	 qkK7aC1Yko1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BAC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098393359.23822.16430078977226468353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806436fcf9aede45be06be564c19acc068850920acebe427cd95c27804182d76
Date: Mon, 03 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740983933
