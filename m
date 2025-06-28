Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FE198A09
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751083794; cv=none; b=Vr286pOPLMt6+ggN2GLff/XQ4Jusg8WQXGHHqDu4F1Kp4NST4RuRyxJ2btjFMPto0q2y9iOkx7F97fqllgQNNgHR5RVvSx8M8K5xNNaKty+p3mS3wU6wFhV+2zQZ89WW8VKnU5/MngQmP1nvZIiCWXVu00MqQ3Ms2/pFKepBCNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751083794; c=relaxed/simple;
	bh=e5711asVVa8bKyNUoA/oqRNezN9W0O6tECVS2cW2MM8=;
	h=To:Subject:From:Message-Id:Date; b=sAsCyyMZxdi6B0Q+jUpVG0dZ+HvbXkW0W0DyS9WnJ2WUGE+tus+8iAJKbgDN1n6QuSLXHKNWNRoZy4T76Wk1/AFoi1Bt8bOviWNzq02/QP1gisKq7Lbl3pL/CPxEMq5hDgld1+KWoQx81QZlyhXFtj4SOZZkw1SDTe8gHtrWdw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcqiTzww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcqiTzww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47F8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751083793;
	bh=e5711asVVa8bKyNUoA/oqRNezN9W0O6tECVS2cW2MM8=;
	h=To:Subject:From:Date:From;
	b=BcqiTzwwx2T8IV9YImcPRWDxVPNhLOB1VSV5l6zbBAHMhf6pLG4k54tRwcAPNkfnB
	 UJFLwJ+sxcp4T0yiuOVYnDC7sdqbbklO04B3FdKhVSVqWURciXY6gfCjknVoHJGlML
	 hFmskLAdpk7BH0fVpjtuS7uMg8NZJrd7+kF2MWyXfDJlLspefLSj90KeIK5NZXJJkn
	 jFxB/QDTR4Wae48rvba9JD/jtE4Ckq4KPlI7OC8aGKvMSlb6AnkbiEJ4sesiUIdP9Z
	 Vwr5m5z3nkmVvF1NOwOtOpvwaRUZ08Kqudi59rQLEqAs7cehEvihM+APKDlYLgu8SA
	 Sn75J45kzCtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC54C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108379360.27674.3723421204229437329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f21f79eed73cba357e01f4fe9c6e8aff4a9e9becf287d949e8d680cb3f07de
Date: Sat, 28 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751083793
