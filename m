Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F4C3C1D44
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787164234; cv=none; b=fUrrzLXXJDDIcuqNBUt/4zWDZdfLfBxtl33pYuZo4AERr/wVPSktwSHZJiTM61zUwEEtucXEMJDzCrKcVlqkYj2GxAAVHpySaKxxoVwqkDXeUTbhWtfcRmq4s7v+ZO4F36NpYOEUkKS4XdyWJq7YuzQf/WWoYfK+dE/DbKnQf9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787164234; c=relaxed/simple;
	bh=wDfuD03nAgKqkhTI3F0AkAsp99LcZaeElq3K0oW2/Ug=;
	h=To:Subject:From:Message-Id:Date; b=tm/CnB8xOns2xNfE5q4wt1Echd29hlqgKPnc3RcipniSKRzUEQYztrwwTtOCvaOXLtg9PFmOMQ/nADdE6SQpFv5Ecmw5lmVRLu3iv8lHWM6J1DwahXvYOgv6oBDTpQe10peZ0QXXHMSONRGo/LEpwDWDOOtbtX+GtZaqDDpEaWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqN+OOHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqN+OOHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEF1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787164234;
	bh=wDfuD03nAgKqkhTI3F0AkAsp99LcZaeElq3K0oW2/Ug=;
	h=To:Subject:From:Date:From;
	b=FqN+OOHp+hNSSivpA22brOZm44uWXauiI28rebfE+nuGmC3Zpv7nvA4lBCP8A/7Mi
	 5i3hY2d7Q2QIBBfftqlZ/Kn/UXHOdxifX3f0NUOuj4mj3LbMF+jDRNYm+IQHskAt/j
	 aIJemQWHJ7AW94k0JahsEWtVUqIxv5U2e5Jp92BPN1+edTjU/J9H3Qd+qhuf7mUqQW
	 BO0Ndw/hRx/Em54f0F2xgG8kZsZVHWqoENI12aZedcoP0ks8k979j3Q+2M9ohOSHNT
	 FU5qh7jQTqKQug4TI1s718HLkhDAr1f7h9KpUWwh4Mzemx4YoGtSBAEOvgIrIVUWbi
	 rAHdvV67hsgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB7EC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716423376.2026.18437164682364910380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccf16e0bcc3b63610ba5704542311c8d9198a8018c470a7c8ca488dfe85875b
Date: Wed, 19 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787164233
