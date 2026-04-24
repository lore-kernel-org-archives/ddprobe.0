Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B54F21255A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777012654; cv=none; b=u0kMRF4iAF1FSzGmEI50wKbw+BbDsHEtfLYHx9G3rwL/Be9px23qSPpKRrbEbGmls2HEMl7VnZ34iSbp7CkFxs//k0/d6Hd8AVH1p/l/wxTh+wPbYVlpw5MlXDxRbN0SOa+ztxI9dmHjTjBaGgzbT5jYMqATMhYT+66WvNvg+LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777012654; c=relaxed/simple;
	bh=Ir7EWkvMLBjCW4LyJguowoqwIQ9nVc/jJu1rTyopAuw=;
	h=To:Subject:From:Message-Id:Date; b=EHmOx9UU3336P00YgngEn0eeaekGX2mc4BJNIzfCrxSSxr39Q0TzOLoSFUrcZm1TeNIbOhXWeH+JwyLUdnmLc4n+l3PVTNKaMIXEccxLDupAOG5hK30tJwp3LNdT6gyaIBQGYqy9XcmNW9VfBYxe1koA+fM4oNEzNjQXEtCqAQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9S0qTve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9S0qTve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24B3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777012653;
	bh=Ir7EWkvMLBjCW4LyJguowoqwIQ9nVc/jJu1rTyopAuw=;
	h=To:Subject:From:Date:From;
	b=N9S0qTveSUr+9hB17ZvAY2JnuyiIAQee/UFR4xJY1kPDqqJTRj0xp7PGlSaoH7ir8
	 AX7xP5JOpJcALZGjj/dckzlhpPqPCcBRwN10AEaLw1Vl7WgoeyPa/ZpODGl2D+jtXs
	 6LFKqoMIM0XcemBLVkygaIPOyQLX3eBAaWa0v+4fh1IPPB31ZYMW1Dh25kw1BMcZJl
	 bbTUJ/qAUekAGvWK7TbghAprpWGPaWBdYw24y7eKgGlSFsijLLRRfgI3Meuw5Im4hv
	 s/ojiBeyEFXImNG5r7EhIIlxTpRxlKsfLMG9VHKOQUnE+JvU9KMAeJe4UYyhhIjFyN
	 m1aJUQnh2iJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF207FB44B4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701265370.16956.7337718974209284554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b9c2e1dae25c740b8fb37f0db80fc06b35f90cb9145c470bb29b4b231f0715
Date: Fri, 24 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777012653
