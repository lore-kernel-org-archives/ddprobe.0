Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE9C2DAFA1
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821594; cv=none; b=TsKQTlxSB3nSZ1wSuDcibljC91/cVLKmJ4NAf5LmCsuI7QRDVXaotoyXOgysv/Fj6SZfYTabk/XIfD6cEd9TcdDCuCUG801PzxYAC34dlW84Lz5RJ2gT530sF6+mMfp5Y+SGgFwCfXQmahitpU/7G6hFktWu6HlTxbd93iQjRi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821594; c=relaxed/simple;
	bh=T+t3YZJbFuznC9t0z7UbsZQh65gJFguUaFBh573IJ+c=;
	h=To:Subject:From:Message-Id:Date; b=G2IslCdZ1EZjrOfHBqGjKh3Oalt9U3klrT912vSmlmo8rwM37FO3uXzCLGM/8k/IYoBumxQU8DT6WvIzpVWYVbQU+jHqvWvaiRorq099aYLx7Z4OTfpnlGIwFFFsaqZpIIUpZQFZ1tgc2FM10wTrLCUC7aNmzcu8OfVBpl/RIuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IowSyEZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IowSyEZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F380C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756821593;
	bh=T+t3YZJbFuznC9t0z7UbsZQh65gJFguUaFBh573IJ+c=;
	h=To:Subject:From:Date:From;
	b=IowSyEZke7K5rLbWfgSimL8OEkzgadeuWJY4gObYCRnQpe32miaWQ6GoXSIUUCL2k
	 31kuEfgxp2ksfExpBmwrILK0AIoEKyOI0jjOZgN1DW7WJxOU1t83dB3+olsDR/z8Pt
	 T0udpSZtLvaxtt6MWnsjY0PtaalJU/ha+lfCkuBWXDx9ZQRyb3fkw083Swfp87nX8F
	 P4q1e/psL57hIROLq0mUv3wRsq/QgRy00o0XRhYgBzdlfbRMfRmH2kra1FCFWSCGvD
	 pDkz2wrsub23b9paRwsfBVuUcEs5dNk2Js1NNMMybFoDRYVnXVdAIaJrdjAEFKN8Vo
	 lserIT/BZBa2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD71CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682159357.9674.9702564487901874085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0b40c4029c85326a03b1dd756e4aaa3f394eec7cc07b00a8484aca90a53942
Date: Tue, 02 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756821593
