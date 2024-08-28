Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087B17799F
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724848554; cv=none; b=Bzu63411Y/B56iVRptPCy4mYjh7ZFOibQc0u5FGQhEcaGJJ34R2zNtH/ptwlGM9Se2vIPBs//hO/O40sNlmlGi7bzLpLE4AwIRHyV5rICH4/1ZlzYg88cwPKXdZfaoFF5MaIyppeLJ4qT6MyB6msmeR6iP2+kRTbugiohcevXww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724848554; c=relaxed/simple;
	bh=oOSv131Bx+DyLNfVPOw+CrhlPIcw7lwkrUHJRrDlXTU=;
	h=To:Subject:From:Message-Id:Date; b=vEMe/7b3lREnXliDuV+iGvU6Ctzy5ihwxYna5iJmyUo6QlIVjiSIYh6nyaMfeSxT421vUkgEbzzwf9uQ8PPlg5oaumXzSqMP2eOdBiRvIuMfpLN4hBNHNMV6EWAbhFQ/uQVoeEdTElYZ5JesZT9OTKCqc3LVMv9jMd2oOgbKXbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l53O+bda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l53O+bda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D30C98EC5
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724848553;
	bh=oOSv131Bx+DyLNfVPOw+CrhlPIcw7lwkrUHJRrDlXTU=;
	h=To:Subject:From:Date:From;
	b=l53O+bdaBlM8nJeqvXb04VbLT+JHPo8LV4GVDCDQpiD3TXFIEHVwGqwETioy05Klw
	 dsP+f3Xbzxc2+OfKnPkNXffUegBqi8hudzCyEOWU8ihvXxgRzIrskhDkfjdE+15Fs9
	 fTX6YxdFkvm0x7447KpuSglSM/jJIi28TIJEWw0PBE7NGlhtLgIZmUCWgEKsODZeWe
	 DyjlLdVaFt08zdXfl5swyYzFPOgzqIdOYZMHCHBuwoVvP0V+MR7qBDU7y5OG51+wB1
	 kBCafUjKEGizwAh/I1bgtXkjzbYkbTxwik6NhGp2wkSKwlZ7Rz7G0DJ72/iB1J1NtE
	 vKqlsVBcagAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D4C54FA6
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484855361.12966.10957166140169777223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a24783dd5f685d878b99d818f4ee80b485c3398f2a22f8d9cad7b86dc8f91d
Date: Wed, 28 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724848553
