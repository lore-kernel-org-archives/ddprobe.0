Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF493C060C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776866254; cv=none; b=siAOqlC6OYYKFmPz9M1+84cTTNOzbDruN5w19CDWl4EZrwEwg2OVf4wezfrk9hZA2Q510OxFHRZm2YD8t8cG6/sZGAlOVd9RtxxphLKvnvIcl0yNbmRmLtVsGv0yF85evJHosYnAmmysY5tH4gCy8o68x9EhG/JfjbqJITdvJlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776866254; c=relaxed/simple;
	bh=Cxyt0Cl64jycQX2e4ZAbTC4W/s2KmmEkfAxql8i6tZk=;
	h=To:Subject:From:Message-Id:Date; b=M6bwC7kKkFC2chp0KJQU2cYuPWOFttGEtcidbE/dYdG2x/b4sE2eb5cN/XZ3g339I/igOM2eO3NUtDi9lobCgtRdvjTpKtgfwDCjzgi3/ru7pd7k04P0tQQh49hg97dCkaYA5aG1/VJVXl9Nr21NcsCKPG/nyQnomuzkkUiArYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJQEaG1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJQEaG1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB17CC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776866253;
	bh=Cxyt0Cl64jycQX2e4ZAbTC4W/s2KmmEkfAxql8i6tZk=;
	h=To:Subject:From:Date:From;
	b=JJQEaG1dKC0RkWdn8IObYXDwUn3uo2asCDXmWXbOgRBtsXnJj64kwqTpGcy8Owu9q
	 gIuVnKFz6aFO4dAgWQr5cbti6c2b6+76foKSXVmaqwaQZdEG1nBXkaioILNQ/SeEtT
	 bRCc2sx6AEWrLJFu8EHe7N+ZLzwyTzx3s7BzeUZfLI7JxRN9vO6kCkaG5Pbtl0rOxm
	 kWJKAYP5SmJnPP4453MoOmqgLMrSeVVg0NVH8rJDFWRV8XUc5mM3BCVUlA1dYv1rmk
	 DMEKYpleInffr849yrLPiZZqRBRyMbIp3HLgYTJMQujNdFUStwWWV/ettVM/C8bq8P
	 G1jZpowLhBHTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BDF9EDD8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686625369.28601.16796934559003328596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7603b34c5f9deb10b010612046f027d861e8fa9118c168be971e0330313bcffa
Date: Wed, 22 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776866253
