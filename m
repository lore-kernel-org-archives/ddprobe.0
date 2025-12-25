Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7C7260A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766679834; cv=none; b=o/Yhib4r714na4I0pkdOqLqiLKXB6uURpXtkvA7gxv0xvK94WPFiknwskDpufF4y7BuWVsf84l0KP1yY0qfKQIJLTZLztN6Gp7kBlM5G2qC5kUNADYXPIHJ7PQoCWTITaXThb0L8BVND69CPRzgMr/V84SaHYI/meW8iUvwqqI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766679834; c=relaxed/simple;
	bh=/dGV18DcsosqlUNnWzDf9XxjpdPC5BvJdj3p2NAKJbo=;
	h=To:Subject:From:Message-Id:Date; b=sJxNEwkX3F/vRaWx6qFQMNQArimf8/R5O3o+75hGU+j/aEP8GcdVknrULCSg6nbgveQeeLhAvwbM25b9J5eXg3KIEChl2h9iawQcnZSmCpBeVYms4OyrIuIRMsqNVkLltqLzBt3b1/29LA8+XrIi/6q+uriupluz08zohxznk44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVtZrf0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVtZrf0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD405C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766679833;
	bh=/dGV18DcsosqlUNnWzDf9XxjpdPC5BvJdj3p2NAKJbo=;
	h=To:Subject:From:Date:From;
	b=lVtZrf0r2Pkj+6/IsIiJoMf/pdARbVDuecU3iVRuK+KwgosWTLSjd9wGQgiG96za6
	 VXGFs69UCuRN4E5hJ0MOw6lIEqrNc7VlfDzfs9ifGNjY2jAuyFiOqvJzLGWegIy+pd
	 lKBnaXd3Ba2iksoddDvSIhILBGhWt2Iq88O7MQSIF2K/txiC7H1TjIuNlYvvxnsFRF
	 f9amszUVZOHlXF/rdJNZbDPHnGQ4yiT6bgkBXvM2GqjQ22wAetWLZljSQwKR3yNFpY
	 x0w5JFLgyUfWXDf1qyiqBneJ69uN7anFc2ZoV9xPY6EBxdX0CpBcIuYJJ7GsSKZnWL
	 ilBKg3bbs7IrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A67E7AD62
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667983358.8034.11837426756415358486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89ac1d99c88f8e922f613cfb69a2e68ff604c197b98beee53e6ad717737065f
Date: Thu, 25 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766679833
