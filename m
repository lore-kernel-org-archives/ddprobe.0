Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3C28DA1
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734982554; cv=none; b=GbQkLtalRdJ4QSODJYDhF++kcrSrMooNrdubgZVij2Wyyd8Uat3oV2gxpUqQ6YxpJuWjv/mJsnSFiFHFATDaEBXNvSqEsybUgYV3NcqWMhGhf/WyedVZwyClMPpApBFkpd3sto/dw4xcUCQfo8gZGpcSu3HkNAZb6p3nQ91FzIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734982554; c=relaxed/simple;
	bh=07lXFYbvV1ZVGziEWLl9L4STDmzkihplWkt3jqXF/KU=;
	h=To:Subject:From:Message-Id:Date; b=ON6Gmfzn2VGJYXKVMrFQ4iMxUd+mDZq6dKkJ+TpQJx63JdDJ5DeXB6wmmvhwB867DFtzzFFTvYnCl2fwckFaatCUkwiU5g/pfM0x8xCtr+Z0FFEUURxExjYQOmCB5pbUo1LZchTaEt64PbBBpgsW83dWhJh4vpNUqbYlM9ZLwqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq+TErk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq+TErk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03B6C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734982553;
	bh=07lXFYbvV1ZVGziEWLl9L4STDmzkihplWkt3jqXF/KU=;
	h=To:Subject:From:Date:From;
	b=nq+TErk0rUGuVKlW0uXDVuNEi4MxrTCaxLMR8A50LUD5QPUjBngD2I5/MItWza6v7
	 gGQCnkmR1ZZqInwmxwnpWbAi2DKfv7sScdNKUqIrAz6JRpactSfYDPIQMDbN7w0EL8
	 skUVRg0AisbydgbkNrthyWW+XjbPKPT6piynRokSPQw52tVtqP7MZr7XdT4mSTyJpk
	 20qElFQu6aHtXAWQtDubwt0k5sRBGEPONMPF1rF/jBQVGlqhKfeDBwA/4CRaQghgUC
	 kuoO3/qXw4PRtJqxB2kkhZDa8u6W5/J25Uca+d9aG8TKhFdsRAoGAyYlhhq/5iECt4
	 HllSx/yvBhvMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45B6E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498255360.999.3972057585452873985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab13e4d136308d524b1716652b8532178140a533f2830212f75665cf31bb85d
Date: Mon, 23 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734982553
