Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1417A286D7E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770205434; cv=none; b=Qbj4QU1WP081YuS4egX+1l0CK1v1SB1XB74GCwABYXc+N3Yy+xEMuZ54l/ODIsKkckuI+QQIhdK0ibOfAlmtQf4OielY275PO4SFcAFyQ9hV0zWkpU1ZZiThETCzCeBzgsO9iMC1XjlVpj9RqSQMRQtkwOaNyzA7gLEiR1YsQrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770205434; c=relaxed/simple;
	bh=4ESDbCzC5bP3mmbJu/I4qrZhaxGXkRtdZhgh9YOlPPo=;
	h=To:Subject:From:Message-Id:Date; b=pmerjWyg2Ne8QSBeb2fdzMEtWebfwzjmeDb5JfgVCDPeHqivr6z5HuC+I9q4+qX11s+q5vFjn7obMzZSVY4FK8uQ0CZgCpA//SkLTQ5UxXQbj+0ihaRCyHpo3QY5/7vNUyKgtuyIwEpWq3pNDwRod93WPqaGGj5fncaCAY6jXFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYcboDPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYcboDPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0087C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770205433;
	bh=4ESDbCzC5bP3mmbJu/I4qrZhaxGXkRtdZhgh9YOlPPo=;
	h=To:Subject:From:Date:From;
	b=rYcboDPwun8xhsECJUnAd/AAy7FB4dgwASwXLOw0/toc7RIbwweAbisawWYWj8fOi
	 fk6VCLN0CEvk5qMSdbQluDHOcku9+i0QM6ZFPtTeHkdsL+l+Zbk+mvxKgtaS2Zjzk+
	 aFiORnLfoWzBj5Sm+ofJ5uyw4vCbDGrhsbVbqoAQlLRxM0uV2cWG5LcafK8VlgwMGC
	 B9sy3/PTpKGL6TRLucIHa5wWE/vpQfVV1d5HzYMD2eyUHD/ey4XTK0JqQ4H2LKox7c
	 Y0cRRSgqG3Y8+LoxwPoh2gmHptt8l6KFnmSVn+WPfswpf4H9vrOed3T5av3Nt2PNjk
	 NbpMy9Pb2avJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCCE95390
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020543361.18053.4847637239384253973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042727f65f24fa33318db41a4335cbecc8851c0b5ddb904910a8983e1a0174f0
Date: Wed, 04 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770205433
