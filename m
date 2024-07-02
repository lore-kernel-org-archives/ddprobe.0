Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47942101E4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719887723; cv=none; b=oZkPZOBoBvHhZFv3R0MmT8ON+SM0SEOfnOfvLlpygKyfLrjRiJyJOfDiOq6awo3yEL9qmIxXLQShU0o8XedK639RIyzmCOnInDe839ika3GUriEMhYb++ePySxbawk5rNuTyRw2O0I/oUPd/QGrKr0vyBIuEkrS/qCYzmfrBJtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719887723; c=relaxed/simple;
	bh=905ifOOBT2vMHEVeykIjmc5PaquA6C3iX6yUpMqluVw=;
	h=To:Subject:From:Message-Id:Date; b=n8OmW+NpXt7TEw5xdq2k/1/J45zdonNyYwMiTAI6iyanOcJodJuGohXZ4lS4WWTi8ifPyA2BJg/8uLHXghS24l9CuGTDQFKFOTc7+1wPkzQX9n7HGd6fFf0sMErWqGqlKtIeRCK+fobiU1cA0hzPi9T1qmMASMhyNuhAyMN+uYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx6RZPb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx6RZPb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C82C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719887722;
	bh=905ifOOBT2vMHEVeykIjmc5PaquA6C3iX6yUpMqluVw=;
	h=To:Subject:From:Date:From;
	b=Zx6RZPb2sV0V6eUAtI+is6+6ShW0JNbiSWS9oXEhBrrQ9ktTfrhnMowsrgMeVfocs
	 x7Qjp32FDApQhPK86x6fPwc1AURUzQllu/2ePyjKV7gl7gtgHxySYVaKITvfcoffj8
	 AJR0zNZ3plPR0kzmlHGgtZZaX4ReHrTee4DwsMCiGvrC0x5m/z9ojbGSQT4q76XEtU
	 KPQ/TQ0WV7bihGXGZQQuZUnv+RbBYQao1r6HzUq31HfFh1Zgw/E+GlVVO4QMt+dJ0T
	 sBmIEeWKoPM/+G9yAchTDVXSrR5Zmq/N9s1mT3zGr9b2RrBgPs12VKa2XRW1A4hpua
	 83DEYfG4kZBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25A4C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988772278.8375.4466957200101893081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406954ca155258e5e972465bb0f6204c9bdea0507b65209cb542a273c37e4e2a
Date: Tue, 02 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719887722
