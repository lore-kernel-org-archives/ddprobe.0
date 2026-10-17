Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F69E3B42FE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792240834; cv=none; b=Tlnv/UBSS6S4yDIiLgpRBGuiqumhBfFj2zyUTUVl2cRe9m5fCw2e8tNWySebV3IU5mezX3W3ST0dQMxVStPpzLogbfhFwoaR0p+wqZiXz2Rtv0KtwoYAT71I4HR1QHAWH+sB4J8yQXeQ8uRAwqCZep80Fvy+Eg+PHU5p+Wufv+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792240834; c=relaxed/simple;
	bh=DrgX4ZmveMkvmtk6ZxJdDFKrrMfiYRlrPiShRKe+Bcs=;
	h=To:Subject:From:Message-Id:Date; b=hfYXxHtfXo0vaIBSY9GSz1XgoQ47OYbmrs2JtOX3fBgBbh48o20xh14dl61k0uTASq2VfHrDYmDv4DoQDV9hHoCLzJE6RLpOcvJBexGh95cPFaUElFJ/BZ0p2jZ0yM6a46/LZcw+h9T8UQ2iUjztTMEay/jQo95Lv0NQUXLGUrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PujXsU+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PujXsU+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19C2C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792240833;
	bh=DrgX4ZmveMkvmtk6ZxJdDFKrrMfiYRlrPiShRKe+Bcs=;
	h=To:Subject:From:Date:From;
	b=PujXsU+OWLUY9nhQ5Y6P7vbRc5QDYAxOzXCjXs1+hGUi423SoM7tofauAHXc0wBcT
	 n3pmRETvE1AvI9m1BPLSSmIApJj9MX1UhUPkQx12LybsdlJv7aaCotSxuhzhsr2yP+
	 Wrj7QQn7Kp1aTEdxbDWCwLGzPxd2DESfi9dEzInl9/NVu8MzLmoIo+68pzrI0oyeVZ
	 nwwF4jL0Wvoml61vKIlRXt3vdCmu2ZKRZ2unj8JuB7u1hZ6cqFxvetpOH8eb5Cn0Nm
	 AUXDFPKiHQLiZwxV3KzKaXUVSNt/WKe6cIEfZGVd6Jfq7gnvhZrRcb427nRJfXAMjc
	 23R9RBtC1Vkjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F3CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224083369.12252.12487496588079089302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0e626770cf7c604ee12c2779ceebfdda8fbb0321a82edcd08df2db5ce79936
Date: Sat, 17 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792240833
