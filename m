Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434AC12C54A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720681043; cv=none; b=aI5Sr1kEbpbnLLLoPYj2VlIKyz6OFPs7glzok7HkgXBjMH+yGnVlbI+EqeOwzQRy5YJlWqW1cs0YYdWK5+bzBgcj516LY4nFRLTBErKPQRJzTLGuC/n0oMEit7bQjsiwEabjXYp0U6PPYB5E+AltxjxSGGyuiA5HdJshZMMgNUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720681043; c=relaxed/simple;
	bh=IH07MGHLumf7BsunvCCJ+PU613XLoB9VrJVsSFvfBSM=;
	h=To:Subject:From:Message-Id:Date; b=TQEBEFk7DeAXcmH00yVphhcrFrEdrriij+/AyAt57ty6O+9dy8UAVavE6v7v3Y1wTdN/cZgIuLsypyGDnqD/Qu5y95FdTQFfiw3ty1Oy+36S2o61OqwaNEeRF9OQu0oqOSRUT85ujlaboSYFswseko8sRX/qlSobBADhvUwWxG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMmES3jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMmES3jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCC4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720681042;
	bh=IH07MGHLumf7BsunvCCJ+PU613XLoB9VrJVsSFvfBSM=;
	h=To:Subject:From:Date:From;
	b=iMmES3jECP9ZYoowfQMjaTA2iCatxjcIeG8B3gPpHj69XWPACfWz/CGkzuglBMr+K
	 XBsaMfWqdO0nSDM4YVTjFdw4MWoaQW9qOTuibfRTgpDVH8tfrbQvQ9YAmotOvnkVk5
	 o8lzpq79PtzB+cfzoMrWTphnhPyulyPTxDo6XNkLB594zRicdpoArDyYlPgk/XcD7X
	 /A+ocUCHJpY+xS4urZsIX7MVRaxsePBQnFRKUl8S++unEyXZ+7WfutsUskqrz80lDQ
	 JqEYttOBuo/12HEuRqRGWnbwPaGCaVdJf3jYAETForc1K9hgcPc4XZTLCuhFfNAFp3
	 Kd3+hWzMY7jqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D02C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068104279.21872.18425227715475292384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3840d2dae1e4313866fa6efbc30866847cd0015ff52e66465db59be592f33103
Date: Thu, 11 Jul 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720681042
