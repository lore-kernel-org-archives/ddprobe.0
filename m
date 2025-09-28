Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293121F0995
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759055995; cv=none; b=SUnkVNnkLjBPzWFtSpabMLKoXNK5nTPTutgBxhWWkVvuohaBc6c5JmoioAe39Ydt/WbgswHIYyTWda8B2mUy6UWMqDcma8J8qbXxMsabJuMBd3Nq2XQz+bSQ52bx5NrKixBzRawDca041w8UZVXcS0GDUSc7zNx25DHshIPUeJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759055995; c=relaxed/simple;
	bh=a0YNQFVs2tz3wUxHq/ugnW/oJUWurV1O8Ul3/dsYGTU=;
	h=To:Subject:From:Message-Id:Date; b=r1yAkkPqhrKBG3EKdPp7AZ5LuVUpnuNdp6oorWT3ViY6d4uej8i8LGhqm+f8p30rXRkhrlobT1cUo0Fe9ATt1J2sj27jz2BgpXvqqBYe9ZCDf92UPweNvqt7CVB9lHu9n66s+Xb5lACmEhd1HaIMPNoVL57d0M5TTf4XTIUf90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QE9koa8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QE9koa8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759055993;
	bh=a0YNQFVs2tz3wUxHq/ugnW/oJUWurV1O8Ul3/dsYGTU=;
	h=To:Subject:From:Date:From;
	b=QE9koa8zNDUIi57H3O2JNxifKOMyPV9NZN7+6uJRT3AZkFY1mFG6tHvElI5oSv34O
	 +JHPfRpJD/DFlydDHVD76aBjGPSmJXNZHURar6Lhj0M2uP6Br9Qp6NmnmuvEwnK03M
	 sJzICoVaNCm3u0Fi6KnExMPyBsQt9eJaw3hHJrBGCJuV2RhALSpy/GAZ375NPfcK2v
	 x6zt5YKzuHLbxt3rSEHz6lzbpotZ0DQovAf261fyu+5u0wrj3xEJVRlyMzoJKbgBa6
	 0kXHf5Qwarxlq4BpwY6Jyipp4f4xCD3/thauaOyhUrm0n5tzKDMIquDBJ0RPufUuDa
	 wZUasq5aKKsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A1CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905599357.16093.14308795368178849767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acac4a5e6e575750b257730dff597819a6f39dcf43a3d10bf9a6009d8c80f42e
Date: Sun, 28 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759055993
