Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CE4281508
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758149394; cv=none; b=qyyPZbAJfaojWhBUuGIuAW0T25YeN5XgPIhGOatOasRn/ycaYbZrRCHCBNJh2H7obEy/Q0VQR/gt8hGBPQEwslbl0mlxvw6HhFuqkKMx/R9In3WZyuYpBVPuWhLhfeXarI/X5Fswi8Rzov7rtAdezVtdgRY0hPebuY3Q79/koLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758149394; c=relaxed/simple;
	bh=KXJPV7PD49joi2yQlPhK2J+yD8O3Vf+b8NAiuy5KUtA=;
	h=To:Subject:From:Message-Id:Date; b=cIb37OLpxq7iFi94J/jTfAiEx64DOgRsFsI2HHEVta+Zxq/2s3YR04oRF1zxDyW5gQwuOf/oRSSaTWhBSRD2xpxxuIknpzw3gEXHohKS17s7QXcekF+RXZMu+yM3+NI6yibfsfUP7oJ6Ut6zQlKlToq1C1I+888sUcj+LYy7T/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ1U05ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ1U05ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758149393;
	bh=KXJPV7PD49joi2yQlPhK2J+yD8O3Vf+b8NAiuy5KUtA=;
	h=To:Subject:From:Date:From;
	b=bZ1U05ox/uS82dt3Udxv/BmnqCTZ+amqjirDTDTIiiAzBQ4XWTsKNC0AuVBEhRcac
	 9tNYIrX0HntcATbzgp6NjJCBvhR/7M0zgFQSjJlu5Hkslm8vA92HD2oIAuT+g9M9ay
	 VL3QIEAbvr154N/T4KJYLS1Y6y4J7IwtvqW5k8ma5UnZH9zxUGVBuTJciearcLOaNI
	 b1t0MynVKLAWVJz3D60w6zvWQmph3vVchN/X9sj6MfndW5ncEqHibkZeTOYKU+koAd
	 8xn+W2yEhgTZ/3RqrKHMITORh31uu5dP1bIecorETG/+OGfS+8RgGdlNyexdNTeP6Y
	 hhULvSQhtXHHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83CCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814939357.32742.12253609830059068187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b218996cace9bec63eaf932800a84b688b95585f0946b07aaae4d5f6448bdc0
Date: Wed, 17 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758149393
