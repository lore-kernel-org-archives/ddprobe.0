Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312E42309A9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732398354; cv=none; b=C26WC+SfMPV/odyJox7LLU0d3dp22vheyYYuGDqjnDT59igLGxOv8ObS47Jrz4MpLoDDCVybAKVdZbXw/wVCClv3qmh5sdCIeAFANqTTcpMV7ve9y+cWgKgplnFuqXaHN/+PudnLLls4jUCASCuva56kNnj0nFsQVoHTnSRU04g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732398354; c=relaxed/simple;
	bh=HCDrd4PgTvfag45bv0LVwLt62ze25fVXfZIrV58B1X0=;
	h=To:Subject:From:Message-Id:Date; b=GzTflpjkUwpx5yz9+hI0l4s16ifrgAwYHOXH0wTKL6i3SA4SXfkRLZ4B6BgVD4MPoLBFfLBxekHTa9kO2xrWoD/YJrEi70BbctiO3qYo18puq+MlwuL9Xi2ONG+Uh+CFneHgO6O0Fu6O3SsX89x36mCotJVOc/6YkZ+NM1fWJeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhX7woGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhX7woGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8645C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732398353;
	bh=HCDrd4PgTvfag45bv0LVwLt62ze25fVXfZIrV58B1X0=;
	h=To:Subject:From:Date:From;
	b=EhX7woGnp8Pp5fMY9KcYlc4RyrUnnqLz8Rmbs7pWkLnoDjvuju1sr8KUMAzH5baJb
	 fce5h10CmYyk/UonxkArZzbetuGMhEO6SJnjocP3Wt0+hz7x/4mcHal1SpetEnlReX
	 479iOf5qCAsCtwSyMwVym3dX/UNaooCTzq3JDb5PvbYPdfBL0kppMxx4rnEFgM+DsR
	 JRqkohfX2MGV4MaUW7hXCfHj0+ktWQMK7s8amfjcN+wnj+IM68XHbSXpbdz+wrXb9j
	 GaNM+rCSzW7VAUUwwy8n9KDGaIrWsyAbYn4WPyEFBrIYXFHp20AsW1Y3zFSTSN+xmw
	 Yc3jEY6oLgdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251AE66882
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239835359.489.12238766924340174251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1760c8cadea10b91a048bcf89a268858199a485fa1ffb9426b0018d5c2155f8f
Date: Sat, 23 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732398353
