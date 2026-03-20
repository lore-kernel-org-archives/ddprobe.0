Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8CD391E6D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774002894; cv=none; b=M/GcsDgLaPTpIUNAsgkPuYf/MkWI7+RsiUU6Ov/UplCVP5gVhaUj/lNXd5apZ/6jhm/NK7VN83glJP7feXyaOOtTFgwEbYs6nE6J8jxsmZ28OWQAbmoTsU2oCV8fQTggoqE7BOWMUiAeZYPJj9bzygRegTrfjlahh6DcaGbvHBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774002894; c=relaxed/simple;
	bh=Kt7XnKKFiSqPFl2+WiAJVkCtNB/vuh4nGMmMytgMPzI=;
	h=To:Subject:From:Message-Id:Date; b=t1A1JJvUlW5JQ2/tPf/Bu69RS0nxcJhZAPf4NjQWonRaIVQWcIVmsIzPr5Y8XmkGUstIzbzvY/YCfpAZsPGtTJrBFGO9sPNq0I21rXcaETlq1V3JGIhWl2J3xwj8iWOeGp+w0ErU8UmYD9cR/Ixiqk4IJ3tKvWRdFY7pgAH3/Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE40DOjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE40DOjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DFC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774002893;
	bh=Kt7XnKKFiSqPFl2+WiAJVkCtNB/vuh4nGMmMytgMPzI=;
	h=To:Subject:From:Date:From;
	b=HE40DOjdJ1Jit4VMrtlO2Upy8++FCs0qvOTmVetg1w0GIXrMgg4kgyk5lMtzH4m71
	 ZEBcoYDZuOMtkBSoGdEfAch/73AHenz6acLH2XK0Gu66U2/8dXjpzvU/Rkixg2udXm
	 x/ppVDrNPsFJi0Sn7TQb1sHMqXQjVyykLgHhN4rbwFoXP57FWK+EadWkLc1syVLzKV
	 NFeNYDANS2K1e8CsKsRUi/Ywyf5HeM5/BIvJ46rJDPx+CrsHwMR+0LLKZtKbEsFS0w
	 TyIuqO3k7nc3cPg/oVk8hrsyIQXN0frifafFsDRGERcqbvWLWw9CmSpAlFGFNEYEuR
	 06sS1b5m+qRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF95108B8E9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400289357.6327.11671610885717012369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8883e1c537ef7dcee98c9d1c44bf9c18bb2786802d805e8dabfc0e6bc799b7
Date: Fri, 20 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774002893
