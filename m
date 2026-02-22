Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C318F35CBBF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771803293; cv=none; b=bKNBO3/aYZ5u5GSpYJQx82BDV6SVFyzOo3ivFyQEHqMPUUcoPnBTs8S+AWyTz9BH7lvzF+9bNJZJG7FeoSa6AVvEM4lUR+5qcviSLU74nzGc6r9oF/hBYRQFK/mPpUchl4bn1TNmwEt82ghfHofmxjeZ90GJ/cOpfYCK8MP5BQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771803293; c=relaxed/simple;
	bh=zoSizy2gzfU0uatDbP+XRqc9oBYcF8yCH2saTHbagkk=;
	h=To:Subject:From:Message-Id:Date; b=h+itmrgbkdrJSc/q/Ugn6CXjysOa5U7FY6egjIDUBevoHsCyQTH3QT+6SGTBpgmohXzLNaif18AXX5NmvHgicScdC8vZQ9E3tyT5trI5/FI0Dm5uRaZ2V2f0lRafsbo6CgcPUesUnUu6ZlHubXAvuPV2aaRSCp7ezSA8V5QRpJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/8Akf1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/8Akf1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D20C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771803293;
	bh=zoSizy2gzfU0uatDbP+XRqc9oBYcF8yCH2saTHbagkk=;
	h=To:Subject:From:Date:From;
	b=V/8Akf1koTPl8jyjGZwEDeSWDFPdr6e/ckWwponmR6wUoAQ99GDaSJdZIFEIX2HQ4
	 2WhxVOXCbEwoEnfOVI3DzQ0Imt79slLJ6cSbt0QqiCzir/+qov1mhadqfKkx3lZV2X
	 CZGgxYV+8FXNpIPJqaG/6XscNaMcQlpKgQTWY0XESClQZDdhq1wMKEhyeLU0bJYfiX
	 atXnQC6J9CeMBjKOyHcPOVYGuNQAxvoLib989qWiL/GQwjMAV6/UnB6Z5ISs04NDsI
	 4NY/lB9JxbN1ciWr48SsAnBzkEASo40Cj8VrG0lUN4UeMRRLw62KS++6ejijRF4OO6
	 KMIPmkJ02SonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317FE68179
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180329358.18744.17036413000492089315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2585aeb32b3cc23566db3ece278e4b94f29408557bffb788d0f74f266454c6
Date: Sun, 22 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771803293
