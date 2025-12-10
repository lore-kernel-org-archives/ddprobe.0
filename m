Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436032FDC4E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765336974; cv=none; b=ACd6zPf4uHIAsiuI0+4dXXGJC/jVU30tzrHKax3c2LHZUWxysFy7RKqjAhmoC7kTZJcpmwb2+1GLrFzl40SsltzU8WfxWAt35rQ86d/5EMPonB0fZaGi7jB6zx6uBb9AlXsfkgk1mExLjie4zPLncEpy5l8oXguhfZshHuoIWGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765336974; c=relaxed/simple;
	bh=YRI61FCwK+auANg4bmCAPS9rUtllkNY7PtesI3DKFhs=;
	h=To:Subject:From:Message-Id:Date; b=NTvtZCRv6DBfiaR39qAxp467oGqJGVznLBSIfOhDZmgVXJLuN3ZscidZhkA9geld0fnKmo78aG5P9LZkOQs1RPjfYLkbhaYG4P2ZIJg2IdBKxlg17BSOxmIqSXnsEANSLizL6vHW2LanlTSJ+5cr1phGcMx2GJv59r7JLEjRDbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcj+sIAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcj+sIAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C89C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765336973;
	bh=YRI61FCwK+auANg4bmCAPS9rUtllkNY7PtesI3DKFhs=;
	h=To:Subject:From:Date:From;
	b=gcj+sIAkDFJ780QecEsmvda9PzfV9hT5TTEe6FTFi9vrp7f9fy/VX4sQ35tNFZF6f
	 q3mpuUBrtGaHrGTYZRmFcUDD+BSEKbS87xSn4/I9c0OvaLSJZgGYgb7mgXXEp26ghg
	 MqY4vtnBwb7cf52qmJ0nXTj1uFcXgODtVOVsZC/dGQMAiDGNdAzdbbLsJD6TqN5+z3
	 i5Qm/lIPELqZMGvPIzItUGNiUtwVs8cfASuMkRPR6fztd9ILVL7OMjHIDbuasOIFdE
	 VpoofsR1xGrRAiIlp1vxbg23byWVREcSLzA5+U0rYGwj8z+XMgkqQfqpW2FThQB91v
	 odepvEA9KZNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94464D3C525
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533697359.28583.4543363270074769296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8897a13626904d28ec661b85cfbc64a02358bfb1d97c35bd411d007afab5d7
Date: Wed, 10 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765336973
