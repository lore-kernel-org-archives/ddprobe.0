Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB71397
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766777634; cv=none; b=d2QJAZTzeF6I+IHZSH4BkfDC+PuXgm6w1zIasTqfoQ2yaDOCkm8z/NbPT0/asc97jkZ3VPbtkwn4Tm3eKWKx1XLok8C3WQ2a0MsguFtiB451ciwRde0A+6xoA/atTtdVVpCVDe7uhYvFGOU0Sb0mUmUezHYJPChImyL7nytzj2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766777634; c=relaxed/simple;
	bh=a+KGh/mXySydfOoSKQWJaDsDO71EdsAPu/1wXZgAOM0=;
	h=To:Subject:From:Message-Id:Date; b=KgCj8wC/a8FPXVJIK03IDQvMVNZVWdsuAsBwm2Guu/YsQx6dSVXpfxjDDAm6+E6KFRyfOpdva+HUCLfymqU1PpNIqcteuGRCIMTyBgbXO5LKsvZjOUpLmxqSVhOThq1db8l7gCditimR8IyaMcpnzp0aN1nb5394AYcnFCuGq9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tziPw9Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tziPw9Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B43C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766777633;
	bh=a+KGh/mXySydfOoSKQWJaDsDO71EdsAPu/1wXZgAOM0=;
	h=To:Subject:From:Date:From;
	b=tziPw9GugFPLBlxy88IC1jt54lUBC+3PV8r4UyPVecM0rDN/6YkLKkCGMOU2detik
	 SKOiQItQ28q2+22naO4p57J5SfDNClcwFx3m3UvXFhz5WmBXe/HZuK2l7TDtd2UFND
	 jYzV7gFXS3eSpS5hMTHS1AZsn0w3MVepTW/iLPr7/NbdhMaoXZR1oSA1S0NZUggKZ/
	 QT7xuuJZhtppyswfwsKi1hxahUlZcoQHBOoS5BkbWIjIEQ+faOypaB0wuccJ1pItnE
	 YY2kuPrxKbMIjdGTU6CgxMXkZy1grLdUiypF6kLyU4xGELesLHi9RpH6Nd8IaiZT3G
	 UqzEh0GAdub7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1FE8FDB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677763358.25908.16441782699927021973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c335fb609a3d94725290da56f89726bdf26ee00f24e67bd12339c209dda0db03
Date: Fri, 26 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766777633
