Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183632264C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765571574; cv=none; b=mOzXBagL09gyLlT3vtJkE0JRew4CT2GfQPdnW0xniokHUr69VIbOJpGFW/wdgjWO99AoOeWDH5NxuO5c9R/oKT9xfDbUmq2XuOGtnQNTz90TDLFhaAGYmOhvQBv65g0jjEcSN6FrDv2yU6PoRZQz0ID9kGPLmEM5JVDa0lXxtyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765571574; c=relaxed/simple;
	bh=sMx+ndroT3qkiEqCKQEIIZ85XLWkNOBxdYL93N4lOl8=;
	h=To:Subject:From:Message-Id:Date; b=Ol8tCQRHB1BUbPzP9rOkqCQ+pCfcHG7mQXoq6hmaLXY4+3d+9IRx2ddhe+6PdN7Gsl8JaDMV+FhHE2G5P83oKHO74JQV4YHREdtsheuF+864QSUWpxgAWl5jliOU9FfB1je1s9AAAZseBL39GyzPnfb28sxVQ5doHo6j4IJlTd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny5GDVwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny5GDVwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAC0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765571573;
	bh=sMx+ndroT3qkiEqCKQEIIZ85XLWkNOBxdYL93N4lOl8=;
	h=To:Subject:From:Date:From;
	b=Ny5GDVwP7Roj0zeAFfH6IRXCEz1wo94miymPX3SVPGAZDt90wdZU2GEXyuWDp65mA
	 2U0D5xNAoJ4SQ9Y0FZ2ugsXUMscQALUUsI0Puy/S6u5iZfFikQt3bRs8UWurDU6Td9
	 uTyqT3ksGaurmY6G4SGAf1V2O5hp/g/YDHbWK34tESgeGOQf6iq2N2ByojfGr+gyoh
	 THZWKP3PmgDPzBS+vZME5yI+4Rl9GYxbq1wXxBo/kgBiI6XaMWvMXCVoYjcbuzlX0B
	 JX4122GCzVeCAtpKdLZFzlz3ZfQIpaUTeWOgukpmAtdxe+E+v7R5xIylwTKbb9BYBP
	 R9vYriU2Bt31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C723D59D8C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557157360.8518.7552528211293127223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56533eee7cf7027b1253c95ed35e1d582dcfa5d2897c524af7be2e471e07aee3
Date: Fri, 12 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765571573
