Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109B21E3DE5
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768754034; cv=none; b=YCeKJ4M7hxM6vo9ajuSFCPi3Er8kiHCSBAARIFwR4Xe4jte4B9PrUxP9ve/VbvTB+yTWYNPiQAITkN4LLRANUe3aMPlDlJTmPBbtyDGyNpbZUobDFulvw2htx/H1UMxnCE/JBCKU5USFxOsGxo3vWOxgKPA8zi/78hNXWXNE3sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768754034; c=relaxed/simple;
	bh=LWB7w+P8mZ38TNntUESqIBM52T/V5N1cWWaUlz74T64=;
	h=To:Subject:From:Message-Id:Date; b=VuQfY32Ps29fpDhp2aDDZNz75H5iBAXzIgVVNAU52i8NZ9J4cxSSWL14PlLn1uNyzF+74n5Z5G/x9iV4Qv3KjNVNR+uQJ2C93EcVOyn3o7tslDP+QC7zIeAZTLLbOk3urbdRjhS4zZADrWfwi8i7o72lIVN0vKZgP0ElGDg8W2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbyhiNxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbyhiNxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D34C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768754033;
	bh=LWB7w+P8mZ38TNntUESqIBM52T/V5N1cWWaUlz74T64=;
	h=To:Subject:From:Date:From;
	b=YbyhiNxnIrQ7s4miu67/1+Xl19xxPBoL2BfC8ERRLzmoes8Wa1dK128F2zMm3/bvE
	 hd6AsrhgTW36ouj8Etix25iVn+V09AlZZ2xthhOl7/CYxy7HmVROLja3ET73l1bbg5
	 G0juMemj70K6Hb+L9NQy0rG7FeYE+FM5PVDTubM7K2I4Za7Nlwv86HlJ76eUedr1UL
	 E9kB5hnQ/OXTYzMcYuEO+O65oNp1GiDzRcOIqA3msrQsI6oOL7IPDzlfYHdqhrFcHW
	 GnmKxgdHMuzUuMyjoFcRrouWfRLiB3hE88eLLBNJFC1X3L9V+fh+uVL20dSGurpXx8
	 WnkDNokuYQ++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDCC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875403358.19138.5599012754432469792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c92c962468a6979b49fcd882d85a8310b7a410c5f357d2a29d0ba0d83023d8
Date: Sun, 18 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768754033
