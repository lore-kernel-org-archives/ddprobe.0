Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B6C18641
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727596554; cv=none; b=VaemPf11dHKX+mNDrMTiEMpABE2TY+An6MZW0j5UU6nVvJOCCiY2z4zEm4CEfsayk54vaxS4CJ4GJr0EeX0W4wLBVKu2PR6nb9/C5bZ7XjSpm0UTonuKgSVDmsOm13BGI/5z4bIIbXHiFmnNaZZ1DmIRorAunlVetsOGtyTFk5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727596554; c=relaxed/simple;
	bh=s/DyMdStG4O5YsjqhV6cYwfb0oci7A/4N8kWjEQlqMo=;
	h=To:Subject:From:Message-Id:Date; b=raf/eloXarSAxxJrTU+iulOQZDik6Oy14FA69JAh4EsIxGa2qyFhrhtYzqkEJ2KEBa40XYNSANDNYuyLdfbENScSUz6K8Cx78u/5QT397iODRzR2xsAo4Gu+nBNlir4AbQvsaz8FhX3bvUKF7m4b7Ee41cxGfzFy7bxKi462F5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOsWxrWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOsWxrWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6970C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727596553;
	bh=s/DyMdStG4O5YsjqhV6cYwfb0oci7A/4N8kWjEQlqMo=;
	h=To:Subject:From:Date:From;
	b=vOsWxrWO5zrDTo9MHfZDNw3z1VHAhG+J0vnJ55Loh2cwwn8CDUjbn+Qz7coW3ntKm
	 B9hduh90Y5ULtmQ7SjkfdVKBPPiUbbphwPdI20PnYCcTCc2h8Cq4fyLPV4LedySHAJ
	 nPFUqEFHtKy4w+hDdNNe+Uv5d2A5w9vtUsX6oZNCkEQ4i6H5PRkJJ0QEvRwlUM/Npk
	 TSXfZg3Na26fc0nC4ZUEZx+cjaFzjwlBqgUvg9xWOCMtEbLFio6qg9cLV3SM2mpsX+
	 xfcp9ZmQc2JaiRuHL48Zfdtte1BC32SGT+ysUD7sKyZiDwXFKMw1/AOuWDCRcTyvKm
	 CO1gr54d+kkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03DDCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759655362.13067.14920297383017845242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642a8b1a21c0c8cb9e98e7b6c103d87de6f097dfdd626de68d0473acbb2c9e85
Date: Sun, 29 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727596553
