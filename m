Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D7E3271EB
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791147634; cv=none; b=RxjHN+AV30PUTPQ+V0QwhV0jValmmImmiq1EFbESVOXx8d2ypyUX+CgJuf1QjEUWmnG4LhlVdFqEE8lE7Xcn99DvCv4L29Uffs+QSb0fKrRkhxQJTWW0IUJHFACfnTCTLA/Id8FeZZnW0jFU+arCqVcuj/ChVRvVa4OciFVj96k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791147634; c=relaxed/simple;
	bh=dKZdGPvoE1dBg6K9tJB/2fV0hpSIJ9zLdAIITCipfwU=;
	h=To:Subject:From:Message-Id:Date; b=fuyYHH9wFr/5zuuXzs4XFjPvbTEchG/2ev0ForSnBagGybcOREuhFtuJWh9XY9b3t6rPFCSOtuzp2Mr9u1bi7kvELJu/60Hp8VCfPB26VE946srHgFVCUASwVumqvbx8go6r2uqfPK2rM/I2Qb22MdifWTZjMLA+zuRhkkmfNhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfC/5Yyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfC/5Yyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF6C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791147633;
	bh=dKZdGPvoE1dBg6K9tJB/2fV0hpSIJ9zLdAIITCipfwU=;
	h=To:Subject:From:Date:From;
	b=tfC/5Yyly26PcZtVO5TCU/S87L7Yv7cn4eudJBpailQBUxZLdqKyejcsp4hoGljRk
	 2mawG+ExegYLdDNOG/hiJTHFtdDs9q88RitmlpCYZD3JrwW82t8gtm+XsJnKUyfskD
	 1KlYK4db6jg3Y7A/N8U2jKAqCdCW7/oRsq0hPfJcLtY2q301Epp+aLEOcECUi/8ioa
	 TLXov0TjmfjtndL+a6xJQknF/zUY8Yxc2T1i7bmg0Y9dFmJhvCgWTFdLji/y4uT9b6
	 ObHNZaC/OGvEaCgJQrc0Aroi8E23VW4Yr42zowNQJd6utYYiqx04EexJwCUchkZ92F
	 WZfA/AZVt9QRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDCCA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114763368.2175.1940658483443196876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0ecc18204e7d3978d849b78eb847bbbe4909937fbc09d519eb35417f5dbaac
Date: Sun, 04 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791147633
