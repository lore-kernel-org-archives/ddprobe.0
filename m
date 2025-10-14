Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B913273811
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760465394; cv=none; b=dBZ0wNSGWcstYpBC/6F/QbJkn2g+JyGho1yHo4wdhRDfAjNNBzRriglqSQkXbON/xRrX9CNYgl73Z0YNDadzvLSJXDRTB3D7MO06veUO1fVxTf/6C6BGqxjX7Y94S5ctnlirJyqvySbo6LZg8TQHyrWLqNisYg3sm4Wd5QJAJwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760465394; c=relaxed/simple;
	bh=02uMwTDbrGfVuhEbrk9jqZsHDI7tYoQf8/24EjqSIMY=;
	h=To:Subject:From:Message-Id:Date; b=lhTgpoQoF/+XbR4q03qcc5xk4j6OzzTdM8pepefw3HPPwCRMXeee/rBFWmMQQ6Xbss4A1EUVhkyYabjbNEkwLlT2OpES6zKKdeEy53IekkXPez170OWLQomezSCUC+CSP/qsW+AqRUGrexl2H1VcvdQacyamcUZ/SMsXWqJHjJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1B3IF6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1B3IF6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4936C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760465393;
	bh=02uMwTDbrGfVuhEbrk9jqZsHDI7tYoQf8/24EjqSIMY=;
	h=To:Subject:From:Date:From;
	b=o1B3IF6qTJfLyLxmOgdd2NF6YZPxZaUgdtT7P61dutzxvVIcL3P5tKk+xq9Mb3SkE
	 khyrHd6YeHAPesgojkbBbIwvHjYM0pxbpYyRcan5468qnsETpuN3d85V5Gt69uf8jj
	 MFFQzY0NvAsyjxGTkuc0cildOedVm+79I2x2R/dcsWdRjnWYH28/+AAgaDYlWgo0RQ
	 QJ9v2ZvRVBB9cdZdSiFlWAq4f9whGD+J94n7AYm5m992i+YosFf60meZ6zkscBWkg1
	 dc/J8ZI/hN1qj7Zc42M/neMobiSphNS1Zctyvya3KEsvMNVcZY3e8dSnu8MeWCaLZM
	 75pTCG3M/lVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91660CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046539358.7438.12002789667816077248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9eb84c7d7c839c3426efa8f83b00e41a3680a41a2db9b96d96131ac5e165e1d
Date: Tue, 14 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760465393
