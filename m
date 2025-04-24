Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC1D1F0E47
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745486394; cv=none; b=FIzKeUc1ADsUTkvSB7z43qehOOnKJwZqng4tpr5+C0aP9rA3WQzPtgEPAFgUzu09xmEBn1iCEO3SOpPePmh4BZzvaVotu2EUPKzVhGqMSs8DfY1IdZWLYJ1svRfQrzKVd9n+uPFfzoIH9rGrEhrhTvFG5Xo+/0jthx+ECpd2z+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745486394; c=relaxed/simple;
	bh=kOeXtZ8bUg6bLmMH8+3/LcbYZEDEiGQNxXBBpGvbv38=;
	h=To:Subject:From:Message-Id:Date; b=fMSI/PBDlsxq8pnEoJLiYx9IIx1nMhaw9RU+bLEjj8mq+j4RDfEEbjAgV2aoC0FqfREefNp+UO6aTeAx4dc2C8ABtTTjjeEJTwi+EpAiB6S3vDE9D5yCL3g6VxpEAZwPPMK1Vg6M924hEZq6MUkZtyTlj4NoHsLBmecUn0V+Bo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p95TNEpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p95TNEpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3170C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745486393;
	bh=kOeXtZ8bUg6bLmMH8+3/LcbYZEDEiGQNxXBBpGvbv38=;
	h=To:Subject:From:Date:From;
	b=p95TNEpXOv6EbDoLkzW6sqHrU+XBnFXO4flJ+yoSXvURzylRjX64ybVsPORJaDxJ4
	 S2mBSZ4CoReXpTd0mcPFfHhKbP3mIBqEFbIt9TY+13DHJOV+qJjnJkDZP71+Osmvpy
	 ZsKhuTL0yUfxKJAPewV/H7nK/OCn2ar2rn3/dvVhIR6ZysI/3K7IlqDqLG78VIVcK+
	 HhG2v7ZYVL6yHQxaScU9Awy/EqOBTNmhgNiKLXJ6hlDyzQPtc+vHQZI48+kpLqGwot
	 0Yu7Zyj7NHAH+mA/ubAsbAYorZUPPoxY5Mfj3bJVa5lPXNIw1peizZ7eNbBLyFmN6W
	 WT71MjL4wDfBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA6C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548639357.22137.16051619450496288381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfe36daf948696261364a5b7d691823f54c517fbb1d07c2f7735d71d084d3d1
Date: Thu, 24 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745486393
