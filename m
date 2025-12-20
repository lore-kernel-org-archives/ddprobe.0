Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D49150997
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766190834; cv=none; b=IwB4Gjj/sE65SubmS+4OHF0mdYSRVXTRMkW+LPHGL7mOguiF20FI1Vb1IKf4umps8ceBBmZdgcgzDEXIDy4tzuzAIAP0mEHjXBvglVpKhMyBPxEtxwnzfeVSzBRdOpDBdVE+VQ5k+8a+ZX4szfpbtoGa0nbTdRsWltM4leEJMxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766190834; c=relaxed/simple;
	bh=+qUZ/5LvBoEB88yRoND8ROFvR/fCsPsMg4EBRTCFgxk=;
	h=To:Subject:From:Message-Id:Date; b=kCC9WArz9NMM2cmoEL1isT+YHMiFALRCPecywOdAaFcJh65dlHU31rma8kqBOoJUB9SPZljfg6/3tnkOmxp3yJxXw+isHBgXnYgNUz+QHQoJ/U8FUvYRhRcY8PP5Um4uRVyTuO4BjbcuYoqHwGus9naZEiDYWJVrp8fxrEmbUzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBMV+2Fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBMV+2Fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C58C116C6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766190833;
	bh=+qUZ/5LvBoEB88yRoND8ROFvR/fCsPsMg4EBRTCFgxk=;
	h=To:Subject:From:Date:From;
	b=BBMV+2Fp9Xs5onndJZt9lH0P3ojre9Ud5iLFjPufeFzIGp/QpIVhGo9MdBdedScra
	 tKIWluVNIvqE8ON5yydizzFpvLOnHdohIQ6UnHcIeZiD0wa8Iz6I6VJimoZlkQOEhY
	 hNBwu0zdNmmt4qkDsG0LwvZO/Lkfqi7zKijDh8/HXv3HrFLRdl7NXOXle+05PStomC
	 GYglB9SrvywFYNbSBHFnve9Ae2DnUM2Lp6KYE4wVU8nwJrb4gZVyk22KK8kYq9Q1HO
	 hubJQ6ym2TsbkDh3tcrvZkU1sp3Vi2GpQn9Uu9CCc4AKmL3G5EUOFJfk31tqL0xD05
	 Usf9EstNNkTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163BE668AC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619083358.9218.335061724235078756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcec2ee6fe497cc6d1052ec8c1707e8c1fc73214f6b099fc383154490953a40
Date: Sat, 20 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766190833
