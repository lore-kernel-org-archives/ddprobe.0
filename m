Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CD1423A65
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783948714; cv=none; b=hCT2pKPWaCcVC3+CAIdO2H3xCenZv90c8YwcRy6taKMSkwiLIOc6+w0RJdybIHZZjV4Ny8TsBQtrPv0UxQ/5kDf5mHJnYaI8Q/DRcn2A2Z1NGcakiDJBmByfpEerYBjYJ4FP81rgktdG8PlVejEDp0TXW89nx32FCpcuPPQ8Uyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783948714; c=relaxed/simple;
	bh=p+upno1i/H+HpT46B+f/KvM/aPgOFv5ptt79phOH4r8=;
	h=To:Subject:From:Message-Id:Date; b=HWzG6jNp/lanHkPM+1ftJr8hFZRUwHyxIsBeNJ37SFGt/DOCCeIwybTlnCH4GjOFaX5fHMKrdTVRgNcHY7Jp3u/Gseh3Ym6a37A0YSb4WXzg7UJ5wbrH3fw1Xew6z0wjBQ3AwqYZt7gm7AbmaEOz139zRLSsfUjtaTds5ZAQaKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMkN2LPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMkN2LPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783948713;
	bh=p+upno1i/H+HpT46B+f/KvM/aPgOFv5ptt79phOH4r8=;
	h=To:Subject:From:Date:From;
	b=jMkN2LPhdgdy0GqGqEbAXu8Xy8bgkrFsfJ+l2jNYUUuFUxQQJj9RGsg5OY2n/vqiH
	 ph5dWr3wSkxc/1vN5v5ATpYpnhxKprd3yiTXD9SB4M924FpvX3rtzljoM12it6AzjD
	 1rRJspSMd6D2uBNe5LSQYmyEj8i1akZdT1P5eZdf+HBuQ61513XO/Wo+Mw5G8zt/1y
	 K5XRf3Fgs1cKzyKsI2gAAdoRbLJXQvI30i04jFwtUeXd0rtZMsMnT/s+dE19lqRbJf
	 2szIfj2YZib+J9+1gKJL7OlwU2BwoHbAXKG2OPiWkikp/RYhWEz+EkpoNKSey1zyxf
	 cJSlFxfswvnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD75CC44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394871370.23227.4573841174383339522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a837bb8d8de1692a0283364428682a7c226538cf6c0c06a85b4d0661e5c01c5
Date: Mon, 13 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783948713
