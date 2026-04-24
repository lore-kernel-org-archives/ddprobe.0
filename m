Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CA83CF66B
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777042654; cv=none; b=be195CKvEF5xqU080Bpz1zbJOaiExZC4b9r5CutrXfhBT6S7oo50v9CXygWP4BEeh4HcGRpASNyAmPp0Mb3ojXqofcdzJALxkrI/Fv8etY15Mr7E6L3R4C8+fR+Ic5Xnr2HV6+8RM3PKtTwxeCQluKgm+m99bcSvAounIcs3KX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777042654; c=relaxed/simple;
	bh=eii2BWSEKgieEbExbglh1wjeX0kdf99cDjI8IjAT350=;
	h=To:Subject:From:Message-Id:Date; b=NnsFIeEPJBM7ENWMkiFYXmmB2FRyXbos/FtzPHHaZO7OrkjqPkxTySLAT7Fy+K2DB40pTdJWpxDUOKC3UZHAuxY4M8vuSHDgGZrB4pyjU12ngjGkNoy6LZZMmaIjQhcGaJqycsXvW/5xaqKrs0Qr7dyar9C7wyEWLA4rEbcs0rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2LXCSkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2LXCSkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE617C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777042653;
	bh=eii2BWSEKgieEbExbglh1wjeX0kdf99cDjI8IjAT350=;
	h=To:Subject:From:Date:From;
	b=p2LXCSkDQxTFI5Nc83sh+UfYZdFFVqdV65OyV8vXUojWZI6BZ1KR4KyfVw8JifPYj
	 YR9Fi1oss/gen7oyFPFqxeWfrNEOcnXMgDRMm2YIq/7+6Ocql2zVB7rSFf0y+/ojIQ
	 9wfUVxk+ccuelFSvbJpA863al+K8u+4h2zgz3ghIlp+dpqw7aU7v6PuqZI1Q+JSByL
	 O5YRVUYB2vZNjAYpD7GzKNrFCN0vyGDoVduwhTHZftDQ4QmomLxtbt0z73AHB0jqgQ
	 yHlEuqarnGpnM63CCHzz45Mayc3EO32y3KnIGg69RKHzbNDv+RjRd8PksRUZaoVt8p
	 LkPteXdPGVOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA794FED3D9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704265368.31002.17542580035019555089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c4b68b946433d7473af6cd5ca299cb6a43344c2c517c4ee36fc0e83d86d090
Date: Fri, 24 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777042653
