Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663EB446CF
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714975343; cv=none; b=Uh3sFhv8STL080x3pNgLgoReWhFvV+Ato3HFllX3qWEeTgEDMxxAqedvFFj7dDxMWzO6aIns8wrwScxJ6cdgjb9p0ML1KtkpMFWLSuTHSGGEEu+xBOhOJbvl33mRFtpgYfoayx4CBLxlJ2pyZryHM3jo/IzXskXD2iBHycEQJZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714975343; c=relaxed/simple;
	bh=I2F/louWefv0QLMfJysSU31re93dZSTGZseIXRUcMVA=;
	h=To:Subject:From:Message-Id:Date; b=mWZnOhEeKlz7HC+47QIhl2R+9VS6QJPKSXrDKbJR75tNHTO3rnTpSQQ8AHfWvADQwWbgK2xvEidQj7ZwLENSkyKWbX1U9P3oOL9sbuaVrtwi0zZK0m8nKN2lGR1AhYbtoAEhndrGrBssyDG8PYQZb7UtJWe5HzRYSGuOWsQJhDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSUEjpj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSUEjpj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E821DC3277B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714975342;
	bh=I2F/louWefv0QLMfJysSU31re93dZSTGZseIXRUcMVA=;
	h=To:Subject:From:Date:From;
	b=tSUEjpj/TySMQR0D3WA8vyxcyHjTR/n4Xr5QcOVwCS3wktuODYL/hM2z3RaNlNP8F
	 5WGR26mje//X9Dn9pS5r4L5fP2HdNS2DY9CiQDCVU0o2H8yv0z+gBDrVrybo3nSLzc
	 yuDf9Wqc7M+QQxC/t1AruwW8kXuvuzsE36AqyjX2aHKn00E5i3pmcm101nG3Ss/tgo
	 WQaau0RDidj+3k4sRz/A7trNJ6MLmgZk812vhOstHEQC0t0UjFyx6IktWc5lFNeIDC
	 mxkyZzuA4xjFQnCta2Dph/2ekak+ADOzR0aFvdfou79sQ0Srm9/H+NmFDxWoSRxvkD
	 8Hk2HLo0pMwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C354EC10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497534277.5765.3331678878424750024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36090dfca4bd6b80d696ce5e5f30d7c5f2bd1038b6ce20b7255e5d9ec6b5162f
Date: Mon, 06 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714975342
