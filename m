Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347852F3C2F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752670794; cv=none; b=GD/gIXxPzVUjBJgQnCf68PAFbCsZRY30FfGtifqUu8Mj7cwUhuHYflGj4wfepG/XGCpOWIXwRarHoCj6mkkCBKU/oHZQc2N6Wkw85Y5GeeVLzm97IylPd+91KSgmF6HUt/IkkhdKHB6vJEtyUW0HTOnOzGK95vu6+Lz2kMkdYz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752670794; c=relaxed/simple;
	bh=H+c+t786++3gc8KLNcgzQ92vUG165lcNc3ZLOW9Q6S8=;
	h=To:Subject:From:Message-Id:Date; b=EakN5RdmU6zwT0YcZ6IJh1sJNFA1IMU3JrkAcG71zddMpOOGmm2UuFxqJj7hve48Uq7cd79zCIzaWS/4mObBF4fnvK1CzRE6FQJ6OhFcNr9UmaEb8q7KJylqIKljQo69Te4lRCozuFaofQgq43vhnaI68JiOl/7X/a+AQE0EJ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BahgSfAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BahgSfAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D4C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752670793;
	bh=H+c+t786++3gc8KLNcgzQ92vUG165lcNc3ZLOW9Q6S8=;
	h=To:Subject:From:Date:From;
	b=BahgSfANrPl9BgXUuGd/pB8fVrbLPmu3B86Ym92Z3bjzeWnBwhlHo+QE75bu3Zeoh
	 DfxGUQ0huTxqQVguBk04dqJxxnMPUa41WYKHXGESKXpuPPv0FdREaG8cQ4stGwlhX+
	 AWfhB3OZGSzqSykXLuYm1gDQlq+VzibneUQaFfgNJ8DVBVUa9UASmQUTarjDKCZ17/
	 5kOSuNeLf7Qi+8cnL+1AyDKJqORosybpk0lwTPT9/cZ0tmad+1Q3uDfV+Xd36kXmBt
	 +owvJo9Qm17S7Fl5/kxH6im/H1GdLm9JxTU+U31BsGWnonhMnXlwUx3HbQdUcpkkkf
	 ZYewgC6qCAEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB10C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267079357.25091.4306135548485237684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cf81fb6226ff3f9ac31be20508ec83ecb935afad4f42e1d433bc5fa12ca71c
Date: Wed, 16 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752670793
