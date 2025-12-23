Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05C2D0C8A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766476434; cv=none; b=YyvrcFfLyA6PXV1YoPQupqFPvvH14drJ89/CFBI1+xAK2ZIJbf6dRleFbfDgofFrUF+NATLcTRnCP/Lp7zG4XAEZOPR4C8xA+YPOQcbf5Yea++pe0TAiXFuSpnLz4/fGK1rIDlQcZpQdNI4U/cOYFoowdOZGScSyulS37llxAqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766476434; c=relaxed/simple;
	bh=1SAdEqPDvU1Za35R5ylu8JFW+JfEaNAEnLYtQoJg5mI=;
	h=To:Subject:From:Message-Id:Date; b=sIzSkeTOgvsyYMALkZZV103ZfdvIo5XwUd3PQ5nspPiqetHILzhP7LIh2ClHQL0S8aw6zOF5YS3dkwyXD6sz4GMp4Ls54o7fjDcFXgR9x53jUVk2EwuPrLIpyAYcallAbGEGkcXiYRK//rNJw+zlM/9D96pvQ05Dtxya8tGJbi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2xKbXOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2xKbXOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C5C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766476433;
	bh=1SAdEqPDvU1Za35R5ylu8JFW+JfEaNAEnLYtQoJg5mI=;
	h=To:Subject:From:Date:From;
	b=c2xKbXOdgsh+RIFwpm6tca9w7vsy6Jc9eTKGhl+bgfvXiMXqBUVLez5Wh7Q36Ja/R
	 usbo7qM8/BZUPfXCPupSQlqYtNH5djEnoOOJS4zjDCyv8syYMUmz1mmOfexfaHlMto
	 mo28b52pePpn3BVAJGhr5mG68A49Tm5VucMDvxDxlq3sgqWp1dGdu5KyuLMNP0IGbY
	 RChVoaXDsahhWu2P0nORbnykTL97f2U15KydHIdyunjgVoFSJ5vqKfltEDTbGqU6Ow
	 UAcaKdFcEqd7c8vxLwS0mjXO9SCre1j3w3G3MslvYXSZAsK/Xgy3Z/ZPIZItAu3/Uf
	 GlRiT9zJSZk5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92832E6F061
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647643357.17138.15357549803297476645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c0b7f13da3ab517fa797ca5aba9c6437c92c7b310c8b56fc50ede30132d1e5
Date: Tue, 23 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766476433
