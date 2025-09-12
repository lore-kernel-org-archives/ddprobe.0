Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11325265CC9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757720994; cv=none; b=ozpU4AqAbiR8suIaFg6xDS7vlmpAU68+iqzbny6bY1N+WxHwS83NqPtmlVfKQ42rLdFDbtv/PCv/9Nmt5F+k5T2JKcZwZ73iWzWD6FuYWGQye+bYyMhnSG6vN8v0c04QL/sm7oh98S5NNe2FrqQ8C3F6sXOmtqjHVJFWkua++rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757720994; c=relaxed/simple;
	bh=8bDiYfoBUO24F8nbY/6D1bDmCPngb4PdzJT/gvMYOVo=;
	h=To:Subject:From:Message-Id:Date; b=tSVqFiiEiPqHdIkDtOQUqIT3hecPW/VnYVdyOvjrSvUzkaKtmUcI0gCXyM6ua3xKgpmk84m+Zi56Bvn1GzSQ51QYFe07Hm5XHFn3t6OgySS9H1AHtUr0Ftos5u19hBLCnwRcLEKzpO2YXHuMWdikqBkaD1t+VAUG+RcsrINpk8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSJCHvtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSJCHvtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757720993;
	bh=8bDiYfoBUO24F8nbY/6D1bDmCPngb4PdzJT/gvMYOVo=;
	h=To:Subject:From:Date:From;
	b=TSJCHvtxktuVkIu88V3IaDpRIBlm6CqZflyOGIRVta/BvIokig1nQFHcRA6YCbHWW
	 w172NyvV8+Ort5ynQRncb1+U3xB2hjYNT2+zhFq9hjoZgfmrPENX1DUzm3/xfnZUGa
	 wvilxAjnT9JEY+lgi8RJsY8occBQlhz7YkTc05meHLZFVnntezDUDvEKggHJlacLmn
	 p6PzAMjw9TQOYZW9PKjuaJiISXvZDkN1c82WmEuQobHWKVIVy3c95JNJE8/xBpQx4e
	 K4XddWZV51qoZ3aDOzTxUzdIm2HXU+RAJVniD7U3+reoPBNHYpIwVLlskj0kK4gjPP
	 +Epdq0KWmIKVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F075CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772099357.32643.4084238777356615552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4addb3c7d7df127e94e6347839c10c0f7e2357547ebeb56bb4bf1acd74a7def3
Date: Fri, 12 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757720993
