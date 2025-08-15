Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5CC284B42
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755256794; cv=none; b=sq6XBUaICJKEeKrHLlnFBJ/S3/F0HB5lZlM57gFifuE8TBbmSbKUT6hjDDozp1wSP8hxHfUxJDVm7WlrSDSL+91OxuIVDCnu5zuqHS4HGWK0aYQiwWIbK0scpkTF9gvLowmbLrLTONJlxn40utyS9ZyuzpD1W78QRyeBVvArZrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755256794; c=relaxed/simple;
	bh=tuTVDGD3Kd2ihmD2lQaElJjcur0jf1zrc5EcmsrX84Q=;
	h=To:Subject:From:Message-Id:Date; b=E4RDmff1ZuqvnHkguvOdkRgZfbcxKXiUNiQWhb/r0wkKusQhpRf4dZeX1gPETCCIHJsWMO1Q4igRlGPBtJS4q3VlaWO1AhutpUBd5QW6l4UYUl66J/OitkNqRgycPaPRNs/N/fQkz3mZAW7fGcwyfmIyTpZZuWLE9QGvlx8fp+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crVGhgJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crVGhgJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75FEC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755256793;
	bh=tuTVDGD3Kd2ihmD2lQaElJjcur0jf1zrc5EcmsrX84Q=;
	h=To:Subject:From:Date:From;
	b=crVGhgJe/bfdofW30I1xCAGVcLqCc20PNRt3I2uAhHY2EE7XBJLNd7nZkyfW8LdC9
	 7njI9qj0TpuYMb9Zc6BVr9dBE+z84IPAbXYuFvCVm/85Q/4cQDl5126ZlJc0EFKOIC
	 c92vjP1xD0NTcW1QW2MtIA2lRB4kpk9OxdEVSStif5f/cAYVXgxDeN4s0PzI1/OGR0
	 98X8ig9AXwoSFaxedvHu4vDuvhnTvT2b97hPSrEL1jme2b8QBhDSujaK/oH+lKavCe
	 0ZHBOLMYALMCu9rNnch4G/eNH4wNPQnXgZEjqIA5cWsA2EdOuPePzRqJtYIlkJ0Yna
	 MZgDGFnz71J4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196DCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525679358.7475.11876845990157349969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f51db8b88ac4665f7fae5c5f35d3421fdf7d8be4029af174ab42f2121d5689
Date: Fri, 15 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755256793
