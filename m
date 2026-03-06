Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BFD3264E1
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772787894; cv=none; b=jbPD4AjVmpfrDvdiev/EA8OsW+DhglE/OsMHQq2D5sswCZxyMdfaCoEZzlREoWpkFrL6AWkLsguEtjyAPP9id1N1x4if55E9bHCYw/yho6qkMGHMr3emOWcDKNlU1VJ7vvxmd6Q7fCqAESKADNV8TF1I23yR98LZT7iQSamV1zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772787894; c=relaxed/simple;
	bh=XH+V9ca8AuZx61e6Gq3JSnoBnCol3aI2Ho9QCtAU99I=;
	h=To:Subject:From:Message-Id:Date; b=FtJSIg6j2FOSEFgQg5QtAsrIbJlP62tHcOAqD9GMHYaR1LGVFZmtwmPJvVJlT6+1lsKIbzHCvXZW3xj4KZwdjOwaCEQByCZz2I8qLmhtbl+aqpCq6K2h0FCxZiqm1GOcPWN7sGBERP6u5eCNBtchuDCMveqSawEjT+5NeNoMv2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NisQi9TL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NisQi9TL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5504C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772787893;
	bh=XH+V9ca8AuZx61e6Gq3JSnoBnCol3aI2Ho9QCtAU99I=;
	h=To:Subject:From:Date:From;
	b=NisQi9TLrn+0ETO1a/GvVmRZhFqvYIdsgKVRoUVg20tAzbMc1es7UA4VLXxOilJtu
	 yXEuvKFEGRGRr+5aSLHbjh2/PO/dHFu3Dr1fPWSEo4Xm7tB+tpx3cXD+FA2/mlT1wi
	 +NaPINVqsZHRjyQ6G3b8bIRcTbWCktZtBQj4vfF9ZgKHffaXhP/wMiQ2bKP4VRt6kv
	 4podhZLR1ASINuCqSdcSeGpfxG46qVyvk3kvhDy7ACeupBHrIh3P8wB793Y/NQ7sAV
	 f6HPROHlF1jsGDOa2B6V7ccZOEVYTbobiHdSXm55/tfoQPBkU1vmBA6rP2drOov3Lp
	 31mTq37o6Xa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F3F0180E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278789358.5461.2551072464871601441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a247b016f368d0c0dcb54134aed77a2d180d6050413bacf7f1823c27fd9b2a
Date: Fri, 06 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772787893
