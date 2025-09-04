Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFFA2853E0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757027994; cv=none; b=ahUlE+e7FsKUBjfOxLck72nQ8UQ/H/EzJHBMizMvlfzHOKlvLsTT5c0FWd4NU2Xd1Fp1RMQUQUXG2Q+iNHCMo9vr+LTuH/zb4dlEpOocT7UvK5yTrneOQSvzIkJxhKtsBF/EWHcQkXzzn1FrH3baWcwstbfheg/RjRFNyZyX7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757027994; c=relaxed/simple;
	bh=kqCd/J1RoQ3IIkLb3SpAPUdbYwXO+sOAmyJDY0YgCJA=;
	h=To:Subject:From:Message-Id:Date; b=OuDqsHjZlYPqPyyzqSiIVznFaMLg/uXk4+qpAwwZhDfUCATdgbFEN2rhBajBUR4qnlXtVAegIQPKZ8YCAzWpXw7yvlZjyDjJV80hokDB9ZsBZEGwVOpCOKABMXE1TFAC5h/F+Sk/Is71jfqfdphtE+VKNbzjFDW3HpZWGR1czvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsi8UjgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsi8UjgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FEC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757027993;
	bh=kqCd/J1RoQ3IIkLb3SpAPUdbYwXO+sOAmyJDY0YgCJA=;
	h=To:Subject:From:Date:From;
	b=fsi8UjgF2S8KIgXiE2aHa05wbuFsoRwjS4jOCuITrbzev18vf03WACIMlx4Z5C1z/
	 P2ArQztbnkYbev6y28rYia1t8JWgD4uUbRXHgM60AlyjF74YlalWTaEb5gtL6WWKdI
	 eKUtt0W12ljhS+/xl8BXlGZx5Hi/T5AzMVgPBTguRLW1ve7HJ+ROjhgm0A2AtbEPiH
	 kj8OUNRCsb5f+4facg93eB+43ip4tZ33lVOkQVZR1oNkwYLGfxD5pwdnBwVYuIVopX
	 olma4E/fwP9f/Ks3PcwPdkXla1bp4Ik1WqWXEjSni5Dwfm+4jOFU868THasZhC9iEy
	 yeaz03ZAuwjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE20CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702799358.5329.10941326213877773737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920f057935e0c58fc426a5d60f33ad279e08e70264f1d4f72d57bbc0c366592f
Date: Thu, 04 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757027993
