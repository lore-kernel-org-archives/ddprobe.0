Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7BA923
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746340194; cv=none; b=K5KP1c6DBWh4zPDaNFySdM6N7ZiQSWEhHHWpTXl9J908yYCzXk2xO4kvfLgmdxNlIJyDiwY+/oqCdoHqz0/FUslUAuJJcLWWGCBWn91hH049VOzSn5Oiwc0M3zfmPAWy2o61BsX7Sy18onNxitwfAPsUI6EzAGVVXBR8NSR1ZFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746340194; c=relaxed/simple;
	bh=+kbmQWoeZcureKwG836pLfEm9c4VUaFWmcOZ/Pyn0NA=;
	h=To:Subject:From:Message-Id:Date; b=oFv4b1Zbmab+9CGohlr8WuNODqdozNcjouQWy221R0sYUrEnre3soEhPaArr07XK6Y+G6xSb3SPY6DZsrO3/8vLhxnFKld13EAkn8Pzu+qJYhde7NJOkkwJ9vM6hHLKQ7oaofaaEFjFKdsSVt//0j5/SvV3ZiGJAJA0ykytreHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWbZLhKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWbZLhKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621BC4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746340193;
	bh=+kbmQWoeZcureKwG836pLfEm9c4VUaFWmcOZ/Pyn0NA=;
	h=To:Subject:From:Date:From;
	b=kWbZLhKFhvHbosisr5F5onPU/HUNP4woc4EZx4zgACkkmMBXBVwujPfuy62mx1sbQ
	 Y21UvfinN/cJ/FjDD1g4CIhjxAJ4BLgkj8YY4WpMrTBSHetcgFMxFn+Um7e+hHL7Hx
	 3UhCnFfUKVJQQ0cq2+SqrUVauHNZd/vGbXwv90bI63tKMvlc5lkrodde/n1r9oI0nQ
	 iJXsiuHfjvas1cOhXdz/1RuxMWTS9+wNjm712I8Tarp2K0Ox2WCrTqrGvK4C1j1zLe
	 P1odZufOvqsV7G7rrr0fzrGRPFMRQq7mX/XEB0hZ+82ub4USalVuYvWM0n3AClKaiM
	 dIozNMAzDiDxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334CC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634019357.11572.4797415916551708117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0edaef5dd2ca833203ad7b869115dd0cae5a273725a9b860fe93ed89b2d8e6
Date: Sun, 04 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746340193
