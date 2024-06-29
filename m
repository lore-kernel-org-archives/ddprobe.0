Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A52184F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719623663; cv=none; b=hHSUJltL8SxHO52OeNq4Nl07ZkI9qS1hibiW7jaJmvd+rDZ6/zYV9KeWyfVDKyA94CHrMi8walBbTLUi2Ml4udTct80rt3+BubY6YC21jL3m+6wf31ALGLw6RccscdIUzXY/6aE0MB6O9gSgZ4yuL0loVIBQ0mjzGSbx1saaa94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719623663; c=relaxed/simple;
	bh=EZ5MLXRUltjnF/8HU9Ms6MZznrzPYYuxOM5Z80ijdsQ=;
	h=To:Subject:From:Message-Id:Date; b=Sqyu64S6+8LjXP2hdec+eybh9ZXMqMIoysLixj+5nMBv/+2QJ1m8MIZuIFkAQcs9H0FVI/LiI1/KosuChYR45xt2mee84uiWXnSLdqM+oZJhhrp00i99Xdz6wteG8f4+xUBY0SoTWFG2sfO89I4hb1/uUT/mQEiDL2twwAMyaQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zeb8kGiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zeb8kGiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00BDDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719623663;
	bh=EZ5MLXRUltjnF/8HU9Ms6MZznrzPYYuxOM5Z80ijdsQ=;
	h=To:Subject:From:Date:From;
	b=Zeb8kGiI803GOenoobRL89Rib0hg1sHceHQSgFiZ/WKgqkLuutgI2gklh0WIc8M1o
	 OcCgPZivZQS8YxLsCplVQbie5KFBMh5ri5b8vDs3ejU9xUgyNRTpkAdAXOA+1d9ukZ
	 5McJffcDpbnVsZVdNhG334+qOoQXc09tygwXDOBTbEfpYwCE5fxXDMznzHJzosKhvo
	 aU4TADbnVDEN6dHo+j7kmHZ/sQrwtL6+9M1C7YJoy+zzPms3AJ9CGtcTBa6FdYqEhR
	 ZCXLCDSLhlXbUjZG7NF6ZAAkbIMTuTUo3nP5ZNS5BtSfOs1KyK2ARj4Yx0ubsl/JXd
	 Zhb9eHgDbpNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE0EC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962366286.14850.4084372082704856453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072a7eaa42f8d7f676d34e7cdf6fb816ebcf638229ae7c3e9380a76503d04c68
Date: Sat, 29 Jun 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719623662
