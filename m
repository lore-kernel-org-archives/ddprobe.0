Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551EF1624DF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785077434; cv=none; b=JkUrkDEt5jAIPZYb00M7SA1fuvMHgUAaO650tCpS0VWSGjXqf5MAu5m8VLO6Ga89462ZKc9ghtD9tedm9v8icQciraTAggX9XD2JELsztCRXgCyZtUksaFauc8xmbJ4pQVQa6LJHo1n9EtiRU4R4bsQsoCgW/1dCLEUSeuvg5iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785077434; c=relaxed/simple;
	bh=oifAq2Ul0JJ7K6BaMvjnw6mw5GYkoXDDstlUplSTQAE=;
	h=To:Subject:From:Message-Id:Date; b=X2nM2ZDdcer/Z1oH4a5fI1Yb5u5ppkJn3YYygeoSHngyrMT9MwUNlzY1cnH/AXdgqfGLhH3EwempxZNb8mi+hniKJcPyP/xR4VSZD2eeRy15uqz61KxPFtjU0Dtc/B3yFdsDLQkJpusmvcGE7tVvK7O+ykp0soLeTnGQ+I63h8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEVGh4h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEVGh4h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9FDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785077433;
	bh=oifAq2Ul0JJ7K6BaMvjnw6mw5GYkoXDDstlUplSTQAE=;
	h=To:Subject:From:Date:From;
	b=mEVGh4h/zyf1xlpORmhW/vm4ZF38fnwmBnW/QxCBgUDVSytnTPXs7RNtjZ6DAlpAW
	 rDa6caKrUSUQHBsLrQWHn24o3IVew4xUkVHhFt1gHXNBwfSPPEUyP0+4xo8os+66YK
	 /MKocBda8JDNd9kxGShV2/RbHSvQ/AjT/YAYHNtOaGEL1i4Tu3JM8uSy6awcCdFky0
	 SY3rzI5fjGoX2KNu5zFIk2L6MrYb6/MYk3tuH1flqemzv/hSP8NgqOgSk6gTxT8VG+
	 HOKkBQxrj7sCC2y/Z1FNXY9pkpr9KlruDwyxYRALkg0g4RoacSspJUy11nT5PRe5ui
	 1rRUnmZ/7Gw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02DC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507743368.24196.17738251234653844903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8d9bbf68d7d718c8d0ee1be146eb748644418ea1c23d13cfa0790a47818edf
Date: Sun, 26 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785077433
