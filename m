Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5EA238C08
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760711394; cv=none; b=m/YygOojzYLLywKf5RKFH8D2J4w106TXbsaEUws7nCOah3n1AuJcg1Z1euGi17CZRMJQ/Pv/tNjdQvmw+lsnUzZvgeegS5IYlq+Rsm/FHccwBDNjfyQR+W6v2nYXQjvOxHi0zRukqsjZjaPl1zKmcoPm2z8VgKzvDW8+HMwBxaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760711394; c=relaxed/simple;
	bh=snSj1j1KT9fVDXhbBsDiynKLDjA3wyXGF/7yLXJB9rI=;
	h=To:Subject:From:Message-Id:Date; b=kNKvihtV7L0lViCyMvMFpFMw5vApMJPtblMUHinN5SxFMff/GKm+NcXT3A1vTEtjCP7tT1POtzTY0ckYWwKQLp96tXtVE2lwX+wMmTlimmL0nB/VOBgURSFE9C02xgH6jDfffJS4Z0U4Xml4nW+oRcPSDrWFjazekVEITeudQd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv4eKfkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv4eKfkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03AEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760711393;
	bh=snSj1j1KT9fVDXhbBsDiynKLDjA3wyXGF/7yLXJB9rI=;
	h=To:Subject:From:Date:From;
	b=hv4eKfkWVmUe8KZ2Islu1OToVb+P9LqA13unpzBiUzQsMSXOiSna/Z0WQVmVhN42Z
	 bocEwX+48pZ4z95oRerrCSND+ucptzEnbWsW/HQ1K9eTZjpD+MuozvGQLUzG6iYqQe
	 oJv0t82hxm0QkpQB6idIYWBj0Jp11yxITyde0xjeBO+ZgTPFv4xfngY6IJTNoc9yHa
	 1tMiVk+zqpN2XyizPVHYbe75zwm4Pt00kLwzHc2c/2IU48pqyzt3SAQigoFrN9ReW1
	 cTp/REB6oX1Awe3Uzwi5dsrBWF8LFSG+EA0jXwqPK6t8DgDkBJs3CYrmfe3nPwleg4
	 rklgHU+Jwo5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071139358.3443.4264186935075784443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e6a1de3103ac34c72ddef215e7561ec7554af32106b0f42dea02bfe96ff7db
Date: Fri, 17 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760711393
