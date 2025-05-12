Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3566428FA93
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051194; cv=none; b=EKt/AF/VDYIOnlwO9ZuetCtNFHXKx2vnqIoOy7qybtaO9eS5eJ5X6sSA8p+yxwbYvstboKK+/qmEyKp8REYwJ3yG9Z91FhoBiWd2Dhq9SYylwHz0iBAzIGWlM8MtfNSl4O2P02I96PySjBW79g29MYk9L7Q7Lblq69BY+u8c4hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051194; c=relaxed/simple;
	bh=jUIJ412LjQZAAg3jvsnoQeaiwvTAZu5FypzRqvfDIE4=;
	h=To:Subject:From:Message-Id:Date; b=lOTQiPe+Z9xNPxBW36OObsHccvt5VgqAdsX8jw5/xXFBL8IyPIrilIVIQfMhoux9HjCkzQdcAY2M/exYuKomoRByfU32XZjsJxRLaGFQEK7EoUf54VYhajI13KIaGDSh2c2LyfdNya/TJtCxhLqT07q+Ly0RZkXmR5RIxJCTEgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSOdGFuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSOdGFuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5544C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747051193;
	bh=jUIJ412LjQZAAg3jvsnoQeaiwvTAZu5FypzRqvfDIE4=;
	h=To:Subject:From:Date:From;
	b=PSOdGFuIb8e2Vwm6SjgpUuNSQQ6aAunu8QP+Ri79LqUWxpRV5ic60rFzIUMgkygCd
	 cGcIKiL1voAjIqnHb1K1e3HZDtvlixZA5SB2OPklYeEPX26ZMlO+Csz3cNFBfPIOZD
	 yb8H1v1n2+j1ySZJDI3ykEyJM2aUROxDHL23TSuSU4CkOLXo42qB7XaePSrArv0pYb
	 BlEqh5IjnzsoKLtyhkdA2FWKGXNrYbr9FCBVeHIzaKuSomYMSN16q6SBrIerkhfaYU
	 +izDtmY+fyi1o6DjwBbD5N4Z+EdAVANkerEQjkP+ygGmJC37OPIIte1IGEK+7x9mms
	 DyTxttVWPB9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF90C3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705119358.4544.13989993732382721265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106a2681f02420f4456094a643e6df4c4a723ae42a100a76f1283fc6e3274721
Date: Mon, 12 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747051193
