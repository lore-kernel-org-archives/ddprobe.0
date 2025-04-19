Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40747647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745104194; cv=none; b=ab1H9xYjekw72EKhkAk8xz0hGAJ3qMCHScB30U4DwYMYPYCwA/0IV9QRzk4XwM+A8YhZmxGi50m6ectpCCA7RRgDAknBzVssiMH1G/GXxq5vTdwYZKWjlxoQ+Ql4PXljRnXciPSzfXc7ffA/HHOSFE4DeOPJobcf1tZ07CG8ZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745104194; c=relaxed/simple;
	bh=R4QM+NVTJD+8dD/y83d6uH6ZT00MY3jkOvrd67sU9wk=;
	h=To:Subject:From:Message-Id:Date; b=Q3/HZd7f0vlsTDVpj7u6yCGhlI1UT3ONRm9rD1vxmUP4PFfdICEdD9ZbckpOCOCMe+rY1Uj3i2Gb1UKJgOt88p3OsbSDzDEhIzpmrpVxbC2wUL6rSv2BCRy1OiXyWAXrFsqOCjjdw3NgyMA/YuBzSnwsGswjly/+JAYY7Bf8spk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfYSKYhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfYSKYhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4132C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745104193;
	bh=R4QM+NVTJD+8dD/y83d6uH6ZT00MY3jkOvrd67sU9wk=;
	h=To:Subject:From:Date:From;
	b=jfYSKYhw79VLydXThR96fJyTCoksPHye9BeNihBL2jvA1tFGnaEJM71EhnB3bV6mZ
	 ulfupYw2iszM1eFWz4wYgO1aEktwiWsGYXTft1UD2I7z5XQpn0U15+FjNT0lzo8UJP
	 YE3IkHj+3cCGq1SMQbz3zLWAWyIfsMLZdDF3+nsn7m4n+10daCYPEEP/rGKZlRzizC
	 I7wZWcNV+eoidRPVwiNoLWoMHHlAdq4wSK16JWgR4EJeahG5GJF87mFLBOvrh8bVBA
	 FUeU/DRXvdiPNaX1Fp7pSfdassWedvvAq7E11WsjnLOEUYgOJiHXpBbCjjC/jhC2EO
	 SySd8njQYWT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20EC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510419357.13443.17121962490059606798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc1a4277ec826c6ad0562dc8e422d10ffde51ebf51960569c994c052ba8eb7a
Date: Sat, 19 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745104193
