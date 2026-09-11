Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD8748F03D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789141834; cv=none; b=FyAllmgp56ISeZ+qZvxiAdk1inDC+4cVRVTtEzCP5fqCzezhw9FJTDnUzuxgwjHYFCqAUYJOMsp5tWou5irjDJKi2HEuy2SiAhOV+/oksz9QJ/577roLWoAnHoaJQ18me3l2rcU4PQk2ShTsmB0irW+4xY1/WfDB2hbFJ7LPHrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789141834; c=relaxed/simple;
	bh=wLQXUrcWiYzNVbXuNEDgUXy85qOT64VtsILd7+bLYTQ=;
	h=To:Subject:From:Message-Id:Date; b=OYauhoqHlGFvdwTCQP581BH0wlWjiVIr7AqTtV0/NSlvUJQY2CwGHvaBCMaUixNDGAVdC3B6XCfMA+8vEu7SmwXjkhN6nQtVePq/1ldc1bdSZ5MTrMWahZoSdZMnuq3bCphl/+7TI5Ba8Z89HfkdBs5fok1W2Mu1RfYYs4+a05M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqnit3ID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqnit3ID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A1EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789141833;
	bh=wLQXUrcWiYzNVbXuNEDgUXy85qOT64VtsILd7+bLYTQ=;
	h=To:Subject:From:Date:From;
	b=qqnit3IDlCmSOQoZeKCIc5VY0/mlfvtEdpWJ8Mo6+mMzlprvXm4sqGuBwrqYeL1e/
	 7XA02sn7kK/OHi8dRsp2HX4H9VHC6ZamEOT5YUFgEc0rYMytDdrz/sry13rBt4pjQX
	 e/KHtoQJ09FCMTV4UU7TVlNI6P1KnvCoWX2op/EiUT7XUlYw0w9pUz3N2JmvoaZWGS
	 roFv7M615N0KaDVfuL+OxwkfQ9N7+ujS7KrpdD4RWYSlqorZuSyqbmUOAk/98Ras2Z
	 WhwdPJ5vduFBl3IMoXls7KCuLskgFjskI6NwdC68SptszP34VtztnvMPP49DwBZfff
	 hh7C7bREEaSnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C2C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914183369.31560.9887337348868230655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b106d2e56f3f2180822e291301b8727427f61d5602f12dbf5fa631eb8bb897
Date: Fri, 11 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789141833
