Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1358814
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718673503; cv=none; b=jPqzpyvOH3wK1+Qx0+o/0SN1gRUiIOvZhL3tI6ZRFVpYHnmDWVasRS9FzS8MNNNL0xYvTaFCsmQrJC2smbIz/k2YYE1As8fRo+5Jc/Y4z2mMWi8YnFrqVnAgs3sbGtsGQ3EGC9XMlIAp/DcA3jEOl6Y9+AGq7mbnP3jh6U13tss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718673503; c=relaxed/simple;
	bh=7SSLQMS74Dcrk9wzWpKeDqQVoFwraSw5GLDrwg9Texk=;
	h=To:Subject:From:Message-Id:Date; b=dcxgWpbwaB2M6VBNUu0veGs1KHmOhJ2tL3xXo3vSCQhvC9e5pPenqXWzq2ZWmu2HdNSoyuwUNuMSe3KTELXDF/gfdWgUkE7sXnf6GIwEn0fz95D9ybz1wyppAE5uKNbpOaUTSz5bSG/pUnhHWRSvILqVFykp8XbuRY7/88ilmoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpZbEAo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpZbEAo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C77C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718673502;
	bh=7SSLQMS74Dcrk9wzWpKeDqQVoFwraSw5GLDrwg9Texk=;
	h=To:Subject:From:Date:From;
	b=SpZbEAo5YekoqZbEPNdRbtGTVE1RoSBlfn29mfMBovcVF/k35W0fxJvg2gYaFXiG7
	 QgBNiTZGbdclZMV9Q0jfgAn618wNRv5uX3J2bobk+5j/LE9Q/zZRWlL7+vG63v5I1V
	 S027ZSITK9Ca4zNcPgbChN7q5qyep72fdSz4MX7KZgn3Ac3OIgRXQ74JDWOPDu+8ir
	 HtqzN8KFD18YRUHOGgpWABC0b6Sz1UHCoI5Dcb829viuaSFIVlnLWvndF4PSxUC215
	 ftYWW4uprvWwVmtfUVJfqfiuQSaOef3QsHczIIM6sT8NTsb0RAtkP4ROSG6sD62g0W
	 hYwmhPZfJZVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F81C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867350278.29201.1877356908158314214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9121a472544f714e6ae6fe9c1518847826ab8e8f9920cac648b85e52f2796748
Date: Tue, 18 Jun 2024 01:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718673502
