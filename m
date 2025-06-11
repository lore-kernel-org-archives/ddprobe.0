Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B528FD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749600594; cv=none; b=KNYSerMkdxOhZl+aJ32/rmm/VFBBbKNl0DZAzfsyLPr5txKW4XR/iOFQlfsWRBI3cELyDN0Rfbm9wZn68wFPvF3XEBdudXnVzQxVjRn0fsbpwbmHeibUKoEK2Y0f1ExES2CKtKA7/JUlC+0wkc41IU+rTgqIs+H3fZRxXbQUNe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749600594; c=relaxed/simple;
	bh=rorsLplB9L55iZdJNlFkqFCyyWmINjRKWx7kCyvfkmc=;
	h=To:Subject:From:Message-Id:Date; b=UopKC5Fazd8nuPwS1P8T4iwAYrIrFsir8QT+CHsdh03GSwXPoASM/PR1dvLw4GVyrpB9zvzbdg05GEr9ydsdwZpIo1J2RdinyoR4Q8Y4ofnuQyJbgAdVOiSyAIF6AWeoRosSthAMJhZN8Kctb7seB7psVV1FlwLQOLitI+I120A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6I0gQoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6I0gQoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B141DC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749600593;
	bh=rorsLplB9L55iZdJNlFkqFCyyWmINjRKWx7kCyvfkmc=;
	h=To:Subject:From:Date:From;
	b=U6I0gQoK0d0p/OA0gxnBVQWjWHWjHycz0si5A6uBgqKrdcvnnk1aWQrevpCUrN0nh
	 vu4umz3BbKze/iGGuJgjLTyTsYmLt2tCE53/zfh7g+lKz2rPSiCJGJ7uiUF7YZ8Em4
	 DL89+ibXRdzfGg38kBcmzk1GTFZ7ZFgf2LBdIcFmyhJzV+dPd4LUlIRyGkY0upcob7
	 /ewTNsozMjFv0gtsP9kBEvw4so4C9ClMjE99Ubt3j5Epz+Di6rptWlHjIRh0Ey5ReN
	 BfapG57LLUqvYIFt3vEKKAfCSLmAuZPRoTnNfLn05+eCCjbF4PcSSamS81elmJdB02
	 VdOAg7ShdHuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B88C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960059358.26115.5166271068723519035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4ff00a377474d85fb8edd38a7d14931929b3e3400c64089f0783b8b5e8c054
Date: Wed, 11 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749600593
