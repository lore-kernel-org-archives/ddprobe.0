Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF72F691F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779862954; cv=none; b=LacvtETs1EInbRZWX+tOdlJX5imt+k6mugKvXGGW9P6kgAFKqdH6IxMhzwYTb1IhKxMfmF+1ieL1sVrwXN8VBoXt6ZHoEiUTp8mjC5e4FVWVgWaHGXDq4+MdQkegC6TD3cwbLcpdDDQrEXRTuOBLAdBA0kZj6g/MjKrezb6uXVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779862954; c=relaxed/simple;
	bh=Aq35u6ebDrG3mjU15cxuPewp+1igfTJ2iGj/NOTO0yI=;
	h=To:Subject:From:Message-Id:Date; b=n4jBrfAZR4GYJdChpqEh4jc6gMCIpt96PGCfhel5OFYoOR3sgnv/rLdOpO7+dchHn91FdZ4h5aMQynXfN62EchTqqwlTATSQzaCiQdkkhjt6csbeSSYBVbrRdRwxG6zVjIzD/bQ3LfYeUZBMHIL9QYYy7ac1jYRhgkuk7B7O8T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr3Dqk14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr3Dqk14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DA2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779862953;
	bh=Aq35u6ebDrG3mjU15cxuPewp+1igfTJ2iGj/NOTO0yI=;
	h=To:Subject:From:Date:From;
	b=Zr3Dqk14/avGmvToNnVkLAUZAtchPrb63dTF0uSFmw+0NyToQXN444VW0yhLG3ZSV
	 4wOruB4VErqBpimI8MsBYPpQtzW9mk0kdaGlaIhxtoVGlN6igkrU3ZNXSgzz+kDtQg
	 IpjxbuvGKMeqTBIYRIJIww/V/PizJZE8zOlQNE+E/1PnveSx3VLvvtZ86d/aP3iH62
	 bxKtlxd01F5AHelagyPU1230nr9jWmkpbMPVmsrPhjRZXhro+fSDDjuaAhOa9u9uUH
	 v+4g6nq1azqCH0ztBkRyYXriu63omy3BGdvr+vxawqQKW6syGHZS0vPJcECjq6DEqA
	 YLHTFipiKlD+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D01CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986295368.11163.9486523813791765989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42fef6e7aea5159c36d68ff326f1bdaa37a0042910e87aa167c96e3d42acb2d
Date: Wed, 27 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779862953
