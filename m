Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D4918E025
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745729394; cv=none; b=nRf2J6fVaV6Kjpd0xOudkrhll8xY5wbnxgC2HwaWtwqqCXztdDfFP7oOWtfY9AQiurww7i8Lb/f/noq37iPKPVnahJPK3MZtL62aTIA3N/q/1semSNcxnu5w1vDSyuPwCHV4A1lmgF5xzlQ4QspkT8W2xhyVe+UY2OrtwyB9M88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745729394; c=relaxed/simple;
	bh=lQAGRaFauhMUYIpC8fWn3sd1LdXNWQsZRIcqtgpIg2c=;
	h=To:Subject:From:Message-Id:Date; b=knIWSVRPjnbiL6MGvcmH2x1//E+AEHvq5F2NP/vdpgwon7AZBDdlBStSy3gIZmRJZtSmU50jXUdEJ7WS/bEO8oz7IkKYB8jrFwwLEGA9iaymKHs96EogJUZPcLSjaP5MWotLH4jlJwt7TmxJlu4QUKfqriX8pOC4s/1d8wQyO7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7yk5cM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7yk5cM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0359C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745729393;
	bh=lQAGRaFauhMUYIpC8fWn3sd1LdXNWQsZRIcqtgpIg2c=;
	h=To:Subject:From:Date:From;
	b=F7yk5cM9xfueUCxV95mYzgKmuc9QOVHG9czuO0N3edfDibQ7C+BXGTHsCowgYRbZ2
	 ABjNY2aXvJtme+UzSdM/LVtXAvgllxsdMEgkcfCQqhRmUy6v4J/UbnJ9l38LzxxeuS
	 wIhT3Ocl2tM30KwQAZBfz2y0+4EirCgJIZiiLDiWv2rWzNxzpVURerliSFHZaZ0XF7
	 uSvyv9Qbvs0sLnqhZEO51CM8LuAYxxiDgD8i8pGpFYKKBqv+911aLrbwin8zu2rGkm
	 0fsVMWYKDMnsPKFRJEWYInl0HKMcKp8JsWXv9WYUtGJQW9+tvOh26V9ZADA3WaUW5L
	 s3VV2v6A/6Vdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FFC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572939357.5652.4746971315586248896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15935f6632ec6f1ad377dbf27eb8f3c2bb64d4c68b8b0f16eeae349a52af0e47
Date: Sun, 27 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745729393
