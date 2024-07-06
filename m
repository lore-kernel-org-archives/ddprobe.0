Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556331E877
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720280783; cv=none; b=H0qVlIY4+roZmjgjBD/7koW2IlMbZKqdnieSqt30DSLW8wkPWGuHfH3MzKlBOnsu3Ho7cmRgs2ajpKOtU1vBkXMOpTRGh2dY4AS1VdrPyFxUDl2/QjJdr4KKoLy/Jhmz3F74AsoYYjsnxCPiADKT35wPwaSucqlimTlTs071r7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720280783; c=relaxed/simple;
	bh=sJF4ru5Sx+ayNHXI3eI0wvqUEhQ18YJXdSU4xONj1wE=;
	h=To:Subject:From:Message-Id:Date; b=DQmKjQ+N0u72CDyhJZC7DqHTfGZH+A9ZjnRGFdjE5ikxX2LqramDJ9007QV+JRZfWh+aqeTDcj7m0oLhZVV1yX7EsaeU6DgnpgmM23XpgfM6b+84YLuXQCGJ05AoihudfPedy1KJNS5oyCEnfvwDSjtADhfJeRuATh7GiJ2iGiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrTLSF4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrTLSF4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2407C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720280782;
	bh=sJF4ru5Sx+ayNHXI3eI0wvqUEhQ18YJXdSU4xONj1wE=;
	h=To:Subject:From:Date:From;
	b=OrTLSF4Q8VAQLAgXQM62P0uBB2y3AcgdVLsP7UCyfOqF+/MENRJJQVYpVmmtB0nRO
	 6z6ij1FCgTHpjUq1dXVvSrxwrab6tinVqpqKTi051YCWrdYGasYvXMbZbylugWbV77
	 o8XQzipmbfshUMKVHfb05W6lLpkJ2sQ34nmE/2ybGnupmOonawHW7OVcMn/k0Yd/PR
	 W1L1r9Q8pK10Ov+bAUh2I7rHRCN/+J2wAX0WcP6WHC3nuv1wc5jqPf+7DYaBEBu0ou
	 cW3q+XarHsdbGfujTRziefD1M0Thcg6q3ZKGXE7GA4NIIxQY7wHrQzlJ07f0lS4oFQ
	 Kt3833lGvA8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4C3C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028078279.10561.14822776843227176853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14e46db0b8d84d6c3c6cf668f23a06eab9c61724635ae29f6e0ebac2948337a
Date: Sat, 06 Jul 2024 15:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720280782
