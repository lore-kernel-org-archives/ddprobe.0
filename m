Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB51EED8
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747081794; cv=none; b=VqqrifshJSZrssp2mynOW904i0K5kfVW0U2Bt8oYd+3GN6AlEp4gnI5mZ/MvIZ0VFfWIdJqnhssp4o3XLbgL2u32VVmaAT4SuBCZfM7oePf4/mw2yfCx9Md6qK1J64eoEl9BwiNWE2TtBlqnyAEMH4DXbSVBIfP7P3sHmvznnX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747081794; c=relaxed/simple;
	bh=XB98SVvVDblod+5Lccwp12qeJVPAdoz7qGqREogL4HE=;
	h=To:Subject:From:Message-Id:Date; b=dp5TMSQbyBKhr1tb5DHv1WPDKa9hSUmyLhXxyb5D4GqXZAlgE8zeqESY0BFaVqW+kSsq6RDkZ2EYiNze2yTPiFSI4KHl7z6P/W67H8wJbkRu91W0C66IukDPcNZX0GHaZ7j79rpCI8ugOhYraNVwv5WZNcivOVZ1h6dBjxuc0oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NATI3Xtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NATI3Xtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F238C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747081793;
	bh=XB98SVvVDblod+5Lccwp12qeJVPAdoz7qGqREogL4HE=;
	h=To:Subject:From:Date:From;
	b=NATI3Xtgqil3nX/Fa5Vff4KDlqnf/lC7XN4fYqmCc8FWeuOSTzs2i4IGV3vqe+Kf8
	 DZ5riXyCjVDV6EjQclVXYnC1c37nLLP7Cv1K5IF8Rc2h9lQQJyahSmI96LEFZtGplW
	 sw+2TMAxAHD8S4nh1ULyNv9QwAaQBrESBU25o0zUoTCKenadsEjKPdZW804Kdo8B8n
	 nuZYKqWwBf+hYZlWQreNUP647oTc2wgvHoQ0u1uWLLNYk9sHQqTzfK+jAFX9ySq2qI
	 G5ElnndODMMj23RNnKmyfYOMlunjovH2DOcYZbXe/qtg2j1/fRCe2zgyfj/7qjT1Mm
	 sibDNQPkckt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90CC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708179358.25261.15409989504879347804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a73d7276b9d210932558ca53e54711d7abd78ebf4b845a082b8a47d2abb1582
Date: Mon, 12 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747081793
