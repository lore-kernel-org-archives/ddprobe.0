Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2CB2F7EF2
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785744034; cv=none; b=UGIyJ5rhxXxfJws5tHWSO1zkHr2Nbpy2mSLTO1/Ow5FmpuDgJpDbNiXksIaGrkzHpN1lCUzSkUGaQzbo5zoIXIKjAhlobrNaozhen50xr7NV49RciiINXs2l9XlmKvU3285FcwAf9kr7q/hhgabC8C3x8R3hq+TXlBtv9bBL+g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785744034; c=relaxed/simple;
	bh=joSPDag+GgR6miZcX/CT6GbPd5SztpGtsBqMANe6Wvg=;
	h=To:Subject:From:Message-Id:Date; b=bpvSCNxAyoKDq8tSch6cqwCVygz4aAHggw9mTYlQ4IT3PVv/WJg2cm3uc4yWsnitEKnXo76fEayS17lcVP3DcmiOxQIcm5R88cdvWjrGgCJBlKgcYExLoaued57F3sOf0EEGfJzU+bdYcekS3hbd6z1S0tQsRfaeEETSc91zVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEMEKtXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEMEKtXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A42C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785744033;
	bh=joSPDag+GgR6miZcX/CT6GbPd5SztpGtsBqMANe6Wvg=;
	h=To:Subject:From:Date:From;
	b=YEMEKtXa6AGhBMDCirwA9ubLzolyC3zBf5uptNdpcbRj7RSDfRVjfW6IFy3RgD9bV
	 OA+6pKIcUgyZe2asgWKnVX6LP+XiYbVL2NGcnWsblu5BtQif9PWBiu4xbyr7OA5fyB
	 sqAhK5e9vYmUogJb/YxfqQWr/4QuxzpOl2WtI/BE6tGFmFsegI/pgOXUUx8bgq4xvb
	 AbOf2DqGh26PQjYoTIL6Q9Z7OYhncXuk+HtIT+z9LL0qDAVPBO2gxZiQrMu/DOEoWQ
	 FPOPGPP3d7GEsdnVs7Nx2WYe9TIU7wZYx4flsJ8KV0bkUyEu0ShBDr7XaevVki76F/
	 7P7OWNAMZy5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00D7C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574403371.18645.8786533166471544131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1193e38575e207f65627e3e2fdc0d6a16694d502b7efd73abc510f6b8ed54139
Date: Mon, 03 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785744033
