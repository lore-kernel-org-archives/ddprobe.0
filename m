Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DC94E56C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789557035; cv=none; b=e2TWDmAly/quxBKA6zu4eQuhq+tJYdtI8klq7F388TaEdAv50+t0ud1r1SGpsocAF/nNJwAJDJFia9qK1r3myZP8GXg5b6NmLVG9hxkowL1FUmCvgMLvoaAZ9agTwBLWQeCDfE45BcABmD5zgrwOdIHXuqk1x634ont2gK/mxT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789557035; c=relaxed/simple;
	bh=Yli4ZzwNmp5Se8mtVj55P49Rzs1VTEE5S/0qi5JJ4ZQ=;
	h=To:Subject:From:Message-Id:Date; b=USdqSNR3ltxbKHRaUR7TbolJxocKDvx/RgckhO2O/BYXkmKDVB2dnb12pYTzQgWl+mrpKNrlQViglpWUijoLjnLe6qWp8MZOpeNDmD/qJgRApn5IUSAjng7BcJm2DLBbwgD9lnJpK8YyDgdY/0IQ/s83rtSTxoVxp5TwruhGmcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWNLXtNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWNLXtNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2A9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789557033;
	bh=Yli4ZzwNmp5Se8mtVj55P49Rzs1VTEE5S/0qi5JJ4ZQ=;
	h=To:Subject:From:Date:From;
	b=kWNLXtNjjGbZqVcHc16zTF6Fbi3NYFnam69cOixaFiQqpNm8skTfAcUpKLZiMdLYI
	 3AHoaRr5epcmA7Y/yUpHDJBxCIPsqe2KF+wEZygg/mc8bmNsriaPEc/b1OieTXSkK3
	 bnP3vmN4H31nY0QubhsuyIXwKJXLvDOsO2hknBkhwI1aio8iWI94kCGl5eNUCftPlB
	 Slkchz0aVI2r0ncEjjhfNxHSXy49n3o3xVvQeGQB+vfQZw4GjqHHG1pC5cA3WXRZJH
	 MPlStZjkxFpA0IdX2TfFNb7BQx0kbsbkqWDMfQDaDSW8R/QgK21EQNT6C8mSlJdpIe
	 GZmMnDDawDwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABCAC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955703368.10391.3832258221385196138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26db5e70cebf4052742c63a31b49437ebe06f24b455208d3f18a95cefdfe586d
Date: Wed, 16 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789557033
