Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA9210F2
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738803954; cv=none; b=O+81Ra1NHkEA6sAwqsVMeOlsDOXZbl0H9jJ67hIkXBtbmHBUMrSb5hp3JgyE15AyskqTWmgz7Zkv/l1O6iUZaXvOUl+5RpYYBoUQlDZssRIDOXEsAYNeLe+eThUazZJmj4NZlJgeEIfbO//afpp7J+VJNhdGnxGtNu3UnbylqWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738803954; c=relaxed/simple;
	bh=KMhunEZcR4MNoj5pf84lRRf9KfcwiXtuMaa6zEy8as0=;
	h=To:Subject:From:Message-Id:Date; b=IBh4gfBWmrQ8wcRXnixOS0OUW7z7A7tiN3QRfHxztYOxvdudUmyixcd/fCLITBHcO9bUB2/vFVtZLLOgTZjcWppkSAxlBdbUnBbFrqI2YdOZAvbjhfU91VFUw8DXZz1n63/KhIgdtVceQWboc/iK8XMmuSZyfaPjyTcrrF7GmBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee4+Sgl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee4+Sgl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4636C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738803953;
	bh=KMhunEZcR4MNoj5pf84lRRf9KfcwiXtuMaa6zEy8as0=;
	h=To:Subject:From:Date:From;
	b=Ee4+Sgl5m553IsVNqcAxWCqDXUg1hoHAJpUwdkY6t0H8eZuDI2Us8VZGQ1o86xTjG
	 1CmTZjBPiRNAi2fMaVguhyQn/ebZUtrswjb9MmUiorlw3pRguCm6XCvgyLbNx0D+vu
	 wEt2zFegGY6W0HdiFPY4uSsTuTGG6Sg51lU3Ce5rK2g6Wosk9vF5oBbA7mWYLNClAR
	 qbJFoTtpmE1UEPoE2CvymLORmZ0bEs+uBJzsdkD84JyS5wrGBXaHZMyavt16sBl8Be
	 RVO1kkUrG67R1bLDWFoCcgd++vzAhEs+JLJWQ7e2QB8MXXVAoZQYsVo7A84Q7LERP4
	 rnIZz+MV60SZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C0C02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880395364.21930.3761525901377530395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21776be4c15f0ac5722eaf232e7ac35fe82fc0a5463f6acff30ec3b215bd249a
Date: Thu, 06 Feb 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738803953
