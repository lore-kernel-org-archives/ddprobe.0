Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390421FC3
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753387794; cv=none; b=dwpWkfK6CEz9BtBKylNjPAfdh7rhYZIOzf1hw6RRsDGXBq35O8U1yCFy7J9PX/58ZkqJKXN2goNMFRJ95iBKfBW1NLoQmjdsK4b5tkVjKMnSaXZJRN4mXp0oWKWIcsgUNX1+ho7Yp4aOUnMguzObqgVNaW2X44xhlO2iqqaweFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753387794; c=relaxed/simple;
	bh=hRm95TFpbk4Y2RXDQx5FltInAwVPYWs6Z1KvHBjfRNs=;
	h=To:Subject:From:Message-Id:Date; b=a2PMT8em8PwWwl4Bo8NIerguwKx4T2IR7ACwF/I2mgXl/u0Ld3yeod+gTMxcXc1NDXv3OH8Jm9YOBnFQRBwb4L46vZdMDFT2nxGGhPHcfPt8ORXHbT+r3htc+VUIfeHXftUi/NX5dutMdHqSYDqjkGgZ9JFBKWNbjVyQP4JBZMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETdm0R+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETdm0R+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753387793;
	bh=hRm95TFpbk4Y2RXDQx5FltInAwVPYWs6Z1KvHBjfRNs=;
	h=To:Subject:From:Date:From;
	b=ETdm0R+r22uXW5wLcJ7uqmNFz9Ja815JJJsNc94oZNZUCTlnSW/OOrqcm0Q/CTw/Y
	 4X3Py/3pzgT3Q+RnnHIm9kFX/7L7Y+a4hRCebbs4OegLr/C9eEHAhn3x7WFn3FbYCs
	 +YB01CrjSHaOKsbfSrenka1coyho02RIog1xn45/xjdhKEcFJ93pHl+a7BSlxPl1TT
	 iCzLURM1RElHxDunJQn4ORSjIHOM+JJTVrqLuEtOY5FFckUvZv7OTyhL5r4DNPb2ZY
	 rSBJFLjzCPMSgs+/sV9shM9JQQoZgpHOvjea/muUWFYNgEqWVe0eLVMt2zwflUpGcJ
	 BqlBgRGDJkl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD8C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338779358.6719.2776152486545074289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bd810c5430939dfb1d6da1fa98883f05c378e1e5da066e101e9d56152003e4
Date: Thu, 24 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753387793
