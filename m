Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D7A2F3601
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762773594; cv=none; b=XGzgjXcdCVDmth7AqmsZpxFm/zCQEKMbKJtyqa+jADK8PnDFIDmNEVzzgWklX+D8vqsCHi0EeLoLriyz3szqb4KnZETDDzNptJEoRBbkkBP67Lua3ZcrP8gzy8xwycRfhKgUovEla/OjgGVdMho+vBzXzaxlseTTLLqV1sHEKec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762773594; c=relaxed/simple;
	bh=HiFGfyU7otfefkkcRAHDBsoW5OLhXUprXu9+z3MCwaU=;
	h=To:Subject:From:Message-Id:Date; b=b0T3JhwmMR/QXmxeiAwpM5ABUHceQzOS6H2eShv6ugY/sy8nnjR6TXdIth/h9cCMNYRTF4d4K49iACuG4kVefO4Xi/clmYW50v5EzxG4As4hk+z/LtDBeunZC00oM9tvbC1itjRWGiPrOQHLQmAK1kMsl2m9Rz7BIS9qISbyNsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEF0W/ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEF0W/ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E1C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762773593;
	bh=HiFGfyU7otfefkkcRAHDBsoW5OLhXUprXu9+z3MCwaU=;
	h=To:Subject:From:Date:From;
	b=NEF0W/acNSOKDwHh2/F6YOuhXYHLX0G4t2k6PT1QcukfWe2OcuvJvqSOlmZZU3ye7
	 57nzaaNyFJA5v/LrrUMwOyf/meTElGjgupP1QSbHfTbGPm8SlnjVVBIz/e1jzRYWI6
	 RwJD53nhqgqoCLyJ34fkFVKAVJa1PHgjFqoKw46OXyXq3rzF3+PjmBwL+TvIdov9gw
	 ObukH7ouqrb9UZI7Q+uNzbq8jXbFHdIIw/KmH3UslEvtXKqBSlr3J5lEN5Hu2/fKZm
	 jhbGMSCfpkrr2IMuS/8vR8X4rqZqbP0+QQRCFIrYrDkVOO4LwZdgdZ7faw3nDkiPYw
	 Y7nucYTPzU3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040ACCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277359358.2713.10692084150228565756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07e892fb181ea2a33038b27d8f4d4e1dc254a5fb83f2517813dafa9d53e07f4
Date: Mon, 10 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762773593
