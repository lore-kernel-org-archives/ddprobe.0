Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB643FE27
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706732297; cv=none; b=HEwCr6e3cFed/0Q0/ZitUV3JTsxX25ywx04giQ2H1eSgog8R2WBl109kuUcyUJeJqxTxWPp1TAyIfC30tNk0AkMkleTuLV28UY6rLZNl7pVZ+OdcFezkIovyymkgyxPwnRWdogld6x20jzKzBj5+nvH5e25x4wGPcvMUafjNS9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706732297; c=relaxed/simple;
	bh=MEmmeCmatIhRH3sBzwEUXqXME57PeyW+lSXBdLDN0Xc=;
	h=To:Subject:From:Message-Id:Date; b=nNODOCIQyF1oHDFArd3J8n0s8ByLH5Bckz+ixfhgDbgyonWlEqoUGKkl3tCrj2eb+YR87eyxwuS2h69OKk8ag0wLZPyAY14cfetfWd2spEnybmIjEndVtb2rW8SMYX1ZO9cAbH0bf+QbDXTLkvNBonnHBOx6a6BQSoEFZP3ka1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpAAq9xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpAAq9xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8758FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706732296;
	bh=MEmmeCmatIhRH3sBzwEUXqXME57PeyW+lSXBdLDN0Xc=;
	h=To:Subject:From:Date:From;
	b=kpAAq9xSAX5z75OOP4Rj7nRH4qaS8bSMbe88TWH85pc4Vky24VsGsbkYNu6rnG1c5
	 vj5DuiYkbomK4NqY1DZ0giUIAV0pDZiZsKbiKjOMMR0CdquMkeAiCS0upsg7BdTfLC
	 6uv1MChTnNmySH9WbfRn/k560tTmx1TjFXujGy9xCsx9+1wnr5xZR5i/aGeEzErYrn
	 qj2UoJ6AGrB9iYCPeksJYOh6GTv5CqdoVi1mmjXXvXGFfPI/sSxr5ouDgrlYR7QmIu
	 xXHUwnGJdHYDJU0RGc64Soi9QiffvfqaHry/W9NKMME1igcOjKLIfyEp7BaNnO6/y9
	 hGCZ9Q/FphDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F7EC47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170673229642.13725.9430224643486114144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6da742a3b969ee1fe28725d20976a5363825a616502fd6290f28a733f2f2ae
Date: Wed, 31 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706732296
