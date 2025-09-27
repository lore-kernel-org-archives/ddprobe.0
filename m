Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C98E4C9F
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759015194; cv=none; b=SOj6lXXsXNr+h+UnxxyDZHLTjNvJk/MqwQ49zxOvnIEA8IKXyUWc9nBRMLFmEYaSHoGSiHHZdVEeI6WUXNcr8O+1z6RAEleA5nbUH/Inp/Bb02OMdN1rDwvzCGERCjgvppzkhvzwNi/d8Dd/+z5dyWdn818j5VZPHFLioGp8kZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759015194; c=relaxed/simple;
	bh=O8smkOid3B7tJPvRvEwVEoyDMO9B/KaEE4kHLfJagB8=;
	h=To:Subject:From:Message-Id:Date; b=jiCID+P38BJYSI7pZgx0TON3oXiBp0RtG2IkiwzlRceftq/Lz5XJX80Ex4Wbxfqq/XLZdDnCi3x//6qJTq/U2Auti9rE26LPSp77aqWW5fX0G/VNAwkdj2xRKszsAf1SlwtIBrCo5kmaE5NqiMUyyibC0D+tAMVexk2zRULZF6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhQjWAGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhQjWAGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7107C113CF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759015193;
	bh=O8smkOid3B7tJPvRvEwVEoyDMO9B/KaEE4kHLfJagB8=;
	h=To:Subject:From:Date:From;
	b=XhQjWAGmr00AhLBZTwhOODQnGBA3XYUkI+s+IoGSF7ayNzNJNuWy+N97gTMz6lgLd
	 vm/DemSI0Ydr+ZCo0szoMsbP+y/0ySUXhKeUM/QlpUMP56u2FnaHBPeWpHkJwG41dv
	 ZfR0VqQRaiN7vO2XDydwwguLbRmDeXy9yXdbXhs0exg7NvSuZnGq8Co8Bt06NOx3ZA
	 7SuVp1N8ajjNsCeyedJkY+/0vofbgjjJgM+40HZo7ioP0Mez5DoR6Pz8CMe1k8j4MO
	 9Xr2CvjYI5SmraMaVCUEC9adSrEP5KrYvRzLqiCxVwnsZw7NypRkKCjRboqIOVo2hY
	 tss5PG5191v0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B6CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901519358.17774.4677758736841373951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa37bebafcf0f4f8c37c938461f8595fb5c138f08ce6b4b248cfd7de4b69e17
Date: Sat, 27 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759015193
