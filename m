Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110E72BD5BF
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766912034; cv=none; b=ZUEf7XNpUrYqdq9Ku96NKLwqd2hbYwvpULW1MF2WcLEUxit1tY14mtFc9GschonuqKX1/ZoP9U4holpVCwzkzjKHJ6iOU4WJ49CJHthJn8LiSu6H02DhyrMtfHMSj+msrtmsByLdjEcyX7Bjkr0QR+AZi8Buio43jq1qTa+jGT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766912034; c=relaxed/simple;
	bh=OT6iIDH0Zt4R1pyMeQRoCw2rWlSPfKqFlm4hQHbJknY=;
	h=To:Subject:From:Message-Id:Date; b=j7NmbknFC4APKd2wa6VWch+aSkupCp+AXhXL8XdcUnEwKX6ViVmolBhojU9cBqnq87FcYrFsZN9+Nr1RglsM10Rkv8pdiOiFh3Ldz+5lI/vEn12ZQ8Nr2RN6318SibBJq826TnzhavAaXFAa5F/iiIuzCd4KI4PSXcCYOYVMiBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn7Ioy6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn7Ioy6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C15C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766912033;
	bh=OT6iIDH0Zt4R1pyMeQRoCw2rWlSPfKqFlm4hQHbJknY=;
	h=To:Subject:From:Date:From;
	b=Nn7Ioy6avYKHNSC6/hcRrvAPRkIomhvAsFYQrlPKdOspnTUMYTWtVgHPXwvZbgDVL
	 b8u3CoP0OTWQSoDCopOb5+wamebpOhNrwZPIw+p6wlCKEWh7iYkmcizIjfXNCBLd5r
	 HqT1coh2HhLdmKdvxG34izMhtZiLz3RiRr2hr7SOGj6Bujf4VMJrw+dv/wrIYPuzAo
	 zGJ8VVRexF9Gh187ErMB/ARbVylMAYuD60Z8g7gTe8Lx3eZkwx5Pcrlc7enDtQkZEo
	 Z+vL8ZFRSdTmpkrBwj9yiwHIcDFg7Cu57lxviUFnqezENGKERs2h18YhmFrCnPUNUA
	 NcyEv+BWsh5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CADD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691203359.30903.6370825706059120352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f9278f70a87092c43e3c4a231edd8a372186efc6ff9135544cf6b545143a25
Date: Sun, 28 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766912033
