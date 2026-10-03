Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473859463
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790986834; cv=none; b=QqqBQPP4fRP6KyUErRYa1ExVptypj+P7VSY8zI/iv0kW8SUb5JXF1IX0mgCGustsJeGVzdzbCuNjU/CsTdoBuheQcFgG9//hIxgfwRCbhTKwwRZbwTX5kJgfYpo+rd74oMzONEQYzlO9lZJ+zSzcplZvOIx6j2HQCuh5MKX1V64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790986834; c=relaxed/simple;
	bh=dd7jto2b0nwtlWl7kAYBruuq4lzQANNIspOQwDS7YO8=;
	h=To:Subject:From:Message-Id:Date; b=KG9WVseqx+qZOpBRZQjYX7P00GhIcuPlSV+Vmc872IiKmptn0E75ZcDXJAH5Qk3SMukolKHhZU1MWt+tDunpOiY6EoHjNySQHytl+trWizT4Wd/Z+ZoYaqBB9rtDXi4dKVfI5HtQSW7HrKA4b03ubNGJ0kfak/89Sxw5ABAGbNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO6mioSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO6mioSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA43C4AF0B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790986833;
	bh=dd7jto2b0nwtlWl7kAYBruuq4lzQANNIspOQwDS7YO8=;
	h=To:Subject:From:Date:From;
	b=aO6mioSbfeiEEwdONNfxa+BXh432Zd3beeWQBK0NbSV419PnGl0n4fnYrGBIa7KJW
	 rAJTwg40EJaz0E63f1NkoHOkXqIFT2fkatHJDxRbvjvPZ9puIwxGHel/4ogE66N9dq
	 O5vykkU6CYGpzoR+q+pIE6k6+7Chwcdj5s4OKk/aYxqT2cEVQ/a0SO8XA5vYGl6Ia+
	 b4ub7l1ADeB4tLnW3+oCJdu6EvT9O5laaTAHWc4UwV6o55F2ZaI4tCAfrEr5Y1NhPg
	 AV9WNVMh8q++GiUewa2xCj32g2AeC54QBW3cNZYX56J3FA+jhet5Jhn3M16JPyG/NG
	 BuyInGG6eqmVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA037CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098683368.26436.15741600315965206373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8556130509965477667905a90f0e4231a2d6787783e8623bc6a2932e86d329
Date: Sat, 03 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790986833
