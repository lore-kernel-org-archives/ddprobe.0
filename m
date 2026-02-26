Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FBF3A4F48
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772138094; cv=none; b=YwTXj30zpWFpXAqYHkLHvZdS4sl6rya6CZZLBVXLfQrKUm+mHhrhSPjkCvgOZK1EOuXCFZiSvbDJMDvAMM+Dkl1BUhTQgeyXC9tFUaCL5xo6mNmtQAXQY4/Dlwm5a7CHNuaUgVc3/uU9ywjsxJwu+k3szVTP6P6P8XiT4U0Te+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772138094; c=relaxed/simple;
	bh=cWbNAlyHmJ9N3flRx+mDoOpgxl+I5WWAJV63eJYvDfo=;
	h=To:Subject:From:Message-Id:Date; b=nrfwiWoa2Gy+SPHNY9CGVaXJcy0zs+qRVIK6FlYB4d3/h+DqGiJ5Xc8vk0Uai2StD5NWS21HEALMk/RGDMKVBwzSU5imwtR+C1x+UsJWjSE2TIhDGjwcmjIK6QLryKAMUm3V+c6D167+yVgMSrwt02MXzEeGdAZ9K3VBhI89kTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irjPepL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irjPepL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772138093;
	bh=cWbNAlyHmJ9N3flRx+mDoOpgxl+I5WWAJV63eJYvDfo=;
	h=To:Subject:From:Date:From;
	b=irjPepL3JSQaD6SOAk2qIoJjYOFE+Ez/hZoBMk45QcEkyrlEjhgg1DYi0I8C/LXfR
	 xzaRVgo+bg8Uwzjh4v+/ca+Aq7tRPThotAlI3uAvBbXLR5WAnzAMhi1KSlDRRBgWEj
	 RcTFJG7EOtSXs/sqY9907v5qtBJVQJEGI8LBZYOs4YVTzO58jDgQNjMdiin1u9E9PG
	 wu62PNSf+zpZpJqW/eEUGP1UDReUWM8M5QgFM4Hx/cU7H0IBfawPd1ptixLFD63tkm
	 YH8NJD08o7vnJsCh4cTewwKDjkL1qU4mORaUDO3pLO0c+bkX6l2brCpKnxwjCcdLN7
	 nwLQP4PU1EOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780CFD9E10
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213809358.26705.271687981091564452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed56b3ef7257fb78edf7f0d29050ce30526b1d28b78a75df2c62b79bcf75a0db
Date: Thu, 26 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772138093
