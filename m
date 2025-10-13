Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8B60B8A
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760355594; cv=none; b=e44dhiWGQzxbEobD4WRF33R3YZRXsts6sd6rqVLrNE95vz6WeJVxYeOJc7N5NLTn544d27qf5jdsKoXrLLEXbwxB4ssPAc7/CHeqDIhVc0NRH0MCDzn+XOXN5PbKS+eAsEC7eyiY8T0BYDh4wHoIF01UkFnueOsrNJCyqFzMlg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760355594; c=relaxed/simple;
	bh=IgACYff7savLVqtyfbtNJByyiLhErb76Rq31hpI8M74=;
	h=To:Subject:From:Message-Id:Date; b=CUz7o8LO8brRUYOEvQdVQEHmFc1EzgzrdxAq40cnjBH5+8WTmBoxDE6w6sXuqOfb8/MS9eiY6E2U+aSptBKzt9zuWiFwpJcqTo70H4wEseoOhgGJFegzLvThBPGrh2wQZhs4Iaf+SzmYHwh3lbFGDGJlHXRfhappUaPtdTg9p+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgzJY4xX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgzJY4xX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0335C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760355593;
	bh=IgACYff7savLVqtyfbtNJByyiLhErb76Rq31hpI8M74=;
	h=To:Subject:From:Date:From;
	b=dgzJY4xX1CVsmeVnCpuWHm58UOc8MkI4sz5UEVUEK6eApMAq1omGsUCxa/DoI18ss
	 3Zh4rLs62VWHTo3biqmzwkRkQyA+vur9U6OHVswtYFHXwfivWOBozbOQ4MZN2NZJVn
	 L4O9ONrQGS/9RYdzISeVFkOYGwAwTVnqlJPWSfQTpzUjqVfYXRRO6aFsvKB7DpMGlr
	 AD7r0tAWTNwZir8Vu8FUicXG2Yv01WXigeNKyBNVQfa4kPAtT55qxr5XeJCOWDWbtC
	 GGYm8Hk9nvvI77rkSeJYfnx/eNiA0iYgt5H+b2RvVTVAEZhdVuF9grDidW5vd1gFgt
	 mS2Vjseo5JqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FFCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035559358.12060.9597162938065767145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4cd5ad2c76375114ca704812d0e0ffabf93bf4fce7d36b81d865407fa3c7a4
Date: Mon, 13 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760355593
