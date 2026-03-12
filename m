Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2B833AD99
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773304494; cv=none; b=PEe+l7tSF8IcTs9kIAFgX33zRTUuhqn2YO/sqFEffnB4Q4ro73jGmHgkEi6jK7rbQS7d0T/icCbG6IAcynCUstgk4wTV4nKYh9WOfwkgA3ULKjV1rNZy36xTUrwa3pVSZu9XlUoqBLxZ4L4/qrv+0loA0CXtoDhMEk3f3cp6qBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773304494; c=relaxed/simple;
	bh=IgLZMWS1TDZ4mx3TfxXZ3d3SzpAIvlqSGq3ncVO5FKg=;
	h=To:Subject:From:Message-Id:Date; b=oMWUMs67ChHhZ1dd/A8PjefKBDw5fDHJTVXfeck9tujwT2VhqhsskBikWNpJS8T2vk4EZ3561HYZmeoJwG8sHqM/DDZde8EroY+3pqmYl9f80G21yGAE1c6nbQ69UmaMBx0Ttnnb/orpDlRM/jSFZ/j8TjjjK8NPOj5zuL9vrEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHHqJN53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHHqJN53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23ADC116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773304493;
	bh=IgLZMWS1TDZ4mx3TfxXZ3d3SzpAIvlqSGq3ncVO5FKg=;
	h=To:Subject:From:Date:From;
	b=FHHqJN53M6VqbV8HH67khPTZQTDZdO5pIoG9ffPwnNjAh+fICTEwKhbq8GA2pkU3L
	 0jDKhJ50GfQUvMyNM7hG7PXVoNwqFh2OmyxmRKVkaF9GcWEIEo5542DPX1M1+/po2/
	 i6jz8z44WNr4Kz9ZaHdMMZFTTt6K/WDx0diQyjaUTsSCeq1fsDy1WWkLZlF8cHmUK/
	 lF3nJNz8SSwCvqgU6TI84jAYws8bFDjGQZxHtlQsvkwqUTH5PsFtiQP0AwijXWnbQi
	 80c02rFjSTY1OTvE3DZaXdMPHSEQHiiR+abFtm77Lr0upidFhEPBL6/HWvR99FTWAe
	 O/MxlzSYOmTCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6BCFED2EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330449363.13191.18148541613543124264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07c103d850b7bcd0ab86771bc6a77007b25d19278612565505db3c6752b91d1
Date: Thu, 12 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773304493
