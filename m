Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227026E6FF
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757257195; cv=none; b=VUZA/6477u6V5meWJWPAJa2X7o3gTZnVaBid8Qj0HGpwiDDtrHa/22me1hOFMsYw0Zg50/0d2bR30ysJ9kCqal9QQx7ZXOiwaXtBNO1pEfW9ji69WLbWZQYac45Q3utFV0Xvh1EoxqOQNWaHE0QHf1ChDkvoEY6bHFy+iCUruaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757257195; c=relaxed/simple;
	bh=xvdFf9zx99FCV/LtzwM+v+W89WM/3l0hzVdax4ZDIAg=;
	h=To:Subject:From:Message-Id:Date; b=DYUAZHpJUVLBoR5ERm6J3tp4VATyTAISNMdhpUn4WDXabmsn4Hjco4TunEYxzlFwjhYrygzeHOB3SHWo2exzy9he6Vs0DG/erc3D54s3Bglb9T1cW6zk4H/90IGQYHvkda7jCvh63oJUZaTE5vOXyrqdUipMC+HA8s41KBO0pL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/ewyWGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/ewyWGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32FBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757257193;
	bh=xvdFf9zx99FCV/LtzwM+v+W89WM/3l0hzVdax4ZDIAg=;
	h=To:Subject:From:Date:From;
	b=f/ewyWGukO7Cs7EM5M1ISyHerao58NqxrmOGS2drADjyZ8gDsSPdFl25lceTHe3cD
	 aF/mYQxsToFlfHlyCQdMWtv7ciDlN1DRf8W9Q1uxk+aNzZ/LQ/PyBL+yIN02e7v46A
	 yIKpVZ4UthMGInjVdZQitW84EOZWkFYBEuhYJEW19tkrvjnBXiltqRSRRfLaoimIRk
	 ZTA0Z4yKAM7Bq8SsRzvsaslChEowVtChpmqeyUd+BtJca/7Z7x3lIkwVY/fBHeYT5w
	 j6e3xxzBQKn+i5/2iI9KolpR/k/gj1GYn1NIdsRxajlb8mHvh7vT/8wfaiNbN1+Zv8
	 QqwdbZxDuUTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EECA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725719357.11598.194916881754348320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56602a85d2244380df104784cd095e55fce95d9d2873862219b9c305f6368d9b
Date: Sun, 07 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757257193
