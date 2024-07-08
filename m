Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE5803
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720409783; cv=none; b=IivfooomMTES6awkomUcfE3AcwtOSUs39JIiFo2RHIUQA6Si5OP1RgEnd45Ni5bUCv5Yso0WDFv9cear9UNTQbZDCHFzS4LOkwNrQdKg92NUh9M9JZA06D2TkhVpxQaWH5+an/a1UehbDTIcHiCAONGwIagGcTHIT4F6Dz1bRv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720409783; c=relaxed/simple;
	bh=0UPU5l0yysBKsMkM1BYitKqEuyvsMw4hvFZ3l3Uq2YE=;
	h=To:Subject:From:Message-Id:Date; b=f0IJQ7tDEZd8U5AQV8InLG6PLKJuHtXVgX56Tkaim3+fl6G1NvJvzwHympf68uSqcY8BT7jNu8PXjLYqFE+NhD+o8qEe0aP/bq89XLaMegrIsq1P00clkxsFvS0CA3IVD3dgyQM6wInouhVPvLJaJ71B1KzGPeTEkzMXedsK9DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE3BrYmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE3BrYmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF674C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720409782;
	bh=0UPU5l0yysBKsMkM1BYitKqEuyvsMw4hvFZ3l3Uq2YE=;
	h=To:Subject:From:Date:From;
	b=XE3BrYmDgBi8lamSlWwiPryoH+/bHWJU9dFN57N4q2qV2Gi7iUlrNVxV11nFzo8ei
	 RqJVk8Yzsx+IA9MMTvaXOlCG43zNjaSCMmd+CtOz8vKAZ06zjofUEe17nQuKkzPSTn
	 Mm57iV5sx0vDjgVje7enHst1XgAx9d6qPAn1vo2H3EUMzRS1aohBjV5Br1N+48ZWLH
	 Mz+UXeFFXoKIly1XsLDBorFoUU5FmHK7O+PEl9p1TTXex9tCo1NzEASiTUmdLI0kZs
	 Kw1y3QTjapv7GAd8/ZnwB1sEP5VBrSEC4eVukbRakOKo+e16sXVT0EcdixuVJkvfae
	 SS3laDpcBQABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3EFC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040978275.4362.6717018189893040554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4987354e1ac19b3bf38b44fbc346271594c91446880d2cc17ca096758bae7f0a
Date: Mon, 08 Jul 2024 03:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720409782
