Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD9B3168F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764774173; cv=none; b=Kl6brf0lkriAUvw4Uzq0cWxCZ88oc6suXg0ocPaxlSJX1v7KvkjZg9WIgtNs0ebfTIgKLWZXpaQBMLp4FbrdgK/b7xR74QKZZ6eNsvWktVcTn5k1WJFXH6T6oPdiJ7LJThHoInhXDxrAGwoYHSGlOInQwYVw17wL1xdW7hx6WVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764774173; c=relaxed/simple;
	bh=wj5U+P2+PfeUxa/4Z+Tip3i/6TL4tgvWUshLNKYVS1c=;
	h=To:Subject:From:Message-Id:Date; b=MVujR6xl7OHHPJiBZGr9lguSm/3mT8j6aTTcD//gOBjCoPAQRjaAQmL8mCsgLXpWr3bUBzXd7iWc326bSfMnC+zGwWexzYXAbA5qzOmyeun1cT8Sqc81ADlbgeXJNyjUQsv01Kb4h+Oh83rhCJAgwV7oPZy50mqD6Ds6ez00BjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0MLF7Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0MLF7Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB3C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764774173;
	bh=wj5U+P2+PfeUxa/4Z+Tip3i/6TL4tgvWUshLNKYVS1c=;
	h=To:Subject:From:Date:From;
	b=l0MLF7Qi4G/jLeovIg1zyDrfDahDvBRsq1FezegATCT4Qhs7ZuWkkWTqNDWoEc83I
	 p4ooZpIhQJErvsUdGqY4o9JkzfCZ4QsG8h/n7b5+D8sDtNwWH8msuJW6vldbnk0xz/
	 OWY1YVHvtIzGgSal+V97PhpbB4LHZ7aOGpaD8VjBQHEorYhkiu8JF3Kl73K7V+TCAn
	 lB1JG1go2HjAhBQBh13rChSs0QS4TJt3gs9FxSLFD2PcFPBy7rkgDY2Crs49gK6Qz6
	 M2IuQhmVTrl/BuwkpJFaIVrysBKvElqKNTNE4pVarJfcy5txevZ5wFo1IS6cgCj6Nr
	 g+gPpdBTeeP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC1D12D71
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477417359.1186.5275407388975703112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5150956a9e92c7fd567a68e22b2527462f635aed26d7aaaee81b4375d40112ab
Date: Wed, 03 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764774173
