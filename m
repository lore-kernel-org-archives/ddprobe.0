Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169D305E28
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822795; cv=none; b=PpV6ErC/VcAEV3drpwOG5sALmO0ojUyLS8qyDGO4/hSBP69kv0h3aqo/sooaDwpVagp6kMWRXYwL42TGSoZslL28Jx6Jw/CKpWOGUjL8LkFNmAg8JMpLyMALtnViqfPtwzw1Dv6QM1rOYpLLH6n9jF1/Ag/69eqVTcOeVpIMmB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822795; c=relaxed/simple;
	bh=it2FOkNbizDdZpEeMmrKlFxvW4pDXde54Ktwvrsht94=;
	h=To:Subject:From:Message-Id:Date; b=VQWYJNhEWB9n5Tts9vbvc4483JGsVXq7Jgdbm/vTLixPzqSWiBP1l7xSFZbUEuHlKOavESzqjcQa8fxIlfDtS6NW25Xa3wyDiB/5Gn3uoHlpIE3x3psnDU5w45h8pCm4nvlh7RSgF+a7K86DIyYRW2NMJD/+YSe+RrGDoXNMHJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myaagaLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myaagaLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CBC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756822793;
	bh=it2FOkNbizDdZpEeMmrKlFxvW4pDXde54Ktwvrsht94=;
	h=To:Subject:From:Date:From;
	b=myaagaLSS3rYUeFQKrQweQUasXtRSo4LfVWP4gqXDT2k6GGYS8OtbmuHvfQeZ3pOu
	 hqDiYxweaRxZRxPUZc8gTyddg7BYZ7krKtGatAolP8qDBIYxbmlrQCMhnWnNOroMqU
	 EjarGTMUGFXFxaZhO/PxMtfw1L5owNdS60EjmjBCP1ZscTZGEyZP/jTM12gftrqixj
	 Br8z2DXPLDZRBCh8zgJMTG33udM9EuokvwCWUbTi4ugjY6NOq1PxrCugnJvgmG/aXU
	 yUaTOKRAVVCrKOq02AqCtoVxopkvOUdWtdlLN1nR00jCVzLZlaBCL1NRQbw/iIk7lF
	 bZwVuumVbrBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCECCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682279357.20765.8124287522486013159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4f2e66dcc9d71c2fa85096c162bbe810a6d123f82fbeca80743c34e3c62316
Date: Tue, 02 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756822793
