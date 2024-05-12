Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9284D5B0
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715549543; cv=none; b=ewR5aZh6bc0ASqa1aiZSiTeDOteuqlT4cpLgM1Qo7Q4EesfNQlHc7+XWPUd1hVQJhe3QqPKAEEbhAf4J1eU9Qxo91nxvAITEyStV5an2l4ZFt754/tCk1nri+LJbM+4K9uiUirReQhXRcERplPXRas4ILzVXQrzABKNGwtVdK4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715549543; c=relaxed/simple;
	bh=+IAU2VxvcdhqxQoF5X09jPlH/F20RMiGjuC4Kn49axc=;
	h=To:Subject:From:Message-Id:Date; b=Kq9BLYE5c4Gq5uygGikSe+maADM32iSFvcifAdN+fKdIRHG/450ppP3U8cksJNT1OEeKeGVgG6vf0NyCSRxl4D9FObMWCoMo90tW6u506WmKwn6p5IyDP2GWz4zATll/PW7bGU1sC+udBnB77UcLdsVYpfRLwN91+e7uDCpg0T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hunug9CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hunug9CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA65C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715549542;
	bh=+IAU2VxvcdhqxQoF5X09jPlH/F20RMiGjuC4Kn49axc=;
	h=To:Subject:From:Date:From;
	b=Hunug9CFFdmUx71Th2VV5zv3vC0aDjpqu68w5i/59rXn8O4qvQTlhOqHYO7+9dNCr
	 +xxnR710vqxhOZ56gGAd7zIiYD/5bEKeVIWbPHSu4ZmHGq73Wp7II3wg++UZUR6Oh4
	 js6UwyJAz4crhtX4jzO7rCR/Hg7ZDs+w/My2qxFtlXluijsD2sGJn9Fe0ZLDnL0ud8
	 D4mi9DPvb5BD8EW0flbvs0jC6rVtx1+jSFJUOvt6cF8wctBWWhKh1OJAricWQBOjr5
	 2+46dAgDzQ+IoFlN/dtx38O+3Y5+b2hY1y8OW7KeNU1PPdbnWN5Yh1lGNh+a+EeOwQ
	 YCH0jJ2r4HUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C879EC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554954278.324.8969050968988297524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff8e0989a9ccbe97c851e24409ed8ef58e89182406b07af6d1320c9316978da
Date: Sun, 12 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715549542
