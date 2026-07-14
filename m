Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F70364941
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784070514; cv=none; b=DPIqw8qMxlWCvgKHxyP0oUrpZ+UDnRes1KxDTn9ElhcxtWOVxYVC+rZ2QlJ9dDlZUq8bRkhg+biqJTW5VCXgV6q2f6HkBiMTRyMduzMixkloJejfvm3bQGZbZtukWYHO4x9iPv5OGqTYU7j+Ek51STFqiIFxOu8E3GSjCcayRDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784070514; c=relaxed/simple;
	bh=0ZQYHAmtb04q8E0GHpqpm5HVbaq6RUE53BSpCqo1E1o=;
	h=To:Subject:From:Message-Id:Date; b=Jwvo5FAzMIOdjyE7aJZwLz2j3AFPQXdmUgbKXSKs+WF0KupPsY4u+bbbhqwVqR22CKA5UZTzO00aHc05Uv+oOPSdPqEvUUWoMOGSFoC1lVLLpKYY4f5UwrIFwZ7kyeWJNvyROQ4lptP4tETM1CkNRxrYKoA9d8ZN7Ce+1S+1EuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeoOYZDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeoOYZDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37D9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784070513;
	bh=0ZQYHAmtb04q8E0GHpqpm5HVbaq6RUE53BSpCqo1E1o=;
	h=To:Subject:From:Date:From;
	b=UeoOYZDBsbZLawVVoazoAJ3cX/6ZHGNZA30Udq8F5wtOdT43DFXMBrlQpVYG1rX5F
	 5SUIZlbzTVH6gk1jsrzeJmPymeoaaeIYkMZDYvh1t2atJfGg+8+kYHf6bhIMtvSDTC
	 mgNSa56Z7b8Rnq6BoRx492ym7vYJtDv27XH+rklxDRmoVDnIeS5D18dW3C1D5L3guQ
	 yrrL8QrdjRx2mkVnl0wKWgJbogyjHu71Cw3e9auzFeI/GIs/tBQXb1oeWBwrk23GCK
	 tkx/Rf20TP9+KZjhjD2RxxBUAwx05eZC2ZKdgeEon6x6RiMabqhDZm4T825Op03vR8
	 x6IheXDL/uIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1339C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407051369.6630.15064929269877742076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115b7fbd12dad868ef40d63b868f44eacd45657848d1dbe540d94bea08aaa0ab
Date: Tue, 14 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784070513
