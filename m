Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F162A1AA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777594654; cv=none; b=WCbMmhRsgzXpuc0q0ELIRz1jdSKYLSzFGx3t0bnQdc5E/DUECXMpIYFIoLtmuJAmTmja1ry7Y7YOJp/OfabkkYU16Ed3uUh3++f36b8GpoCTehnPuvx7M2/HZlbKWGqAgQ2DWNK7A8ZhVG5HQeiP19IDjsxes9pVxOmmSCVSbbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777594654; c=relaxed/simple;
	bh=IvIi7A8chCI/IgC1i1B7X/1zm3RxI2OTA2+sQ64T+Vo=;
	h=To:Subject:From:Message-Id:Date; b=Y5ki0/sbfnN/K+O9J6T2ciLGB5OKaYBxZaXi5Q8DTVI3MILHi3hUCHVEQImgtqwx+plsI5G2S9i6sj11muEn4lOZvHwhiMg6h/4VqwCkqRiET0ktwlxRxjBT2VZu4rOG81amMY5FoHtI3LK/yk7zao1a9v0q4zKc/HJ0M18eXrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if/vGnvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if/vGnvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF30C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777594653;
	bh=IvIi7A8chCI/IgC1i1B7X/1zm3RxI2OTA2+sQ64T+Vo=;
	h=To:Subject:From:Date:From;
	b=if/vGnvEWmWbGIo4rtksdVjs/WDxKSEukag2wTx6hazENi85CymSrF/xXHTNjYksT
	 izMosnqnF3P0DhgVt2mWP17t4PK36+8PPwIMs5Cx8gvdYxD8KVl/CvgBMJV1p3ymQK
	 ETZIZePKCFp0s+znB3gyD7I8i8UCQMKCY4HwbLbx1Ixo8Nb3gCZnD4TSHVY6fFsE00
	 sBl34Fo11aH1qRqFt8Ww0D99ZCeEC7ydjVSFK4vvrsTkR+6sz2R/43B9PX/hnaXG4g
	 B8RJoqY1o05oAgLm2RMzY8MS2coNmACLUlYldaJm3JCx38ucyaScn+Yovqo6DyJfS7
	 B4uqbTtPAg1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759465368.30053.742542151060480083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98e2c799aa007410750a52316d19128cbcf3ff7c6c3c868db4729225740131b
Date: Fri, 01 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777594653
