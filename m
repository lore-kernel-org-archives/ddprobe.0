Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2174031C562
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762431594; cv=none; b=Ix6PJTpX5q3Lqo1cvgJ7T5XGQLlUdlJZFR8wCzbEBYViyDHxALNTLVnHsVhEJp5p1hus1xGaqbfnPSP7gCQI8/1Bbx0WfURtWrCGb9pAdE0kBRBZvfmbufkDcoZJR1tUedn4rj++3bWKVJTQcoRWzRkkbtF7/3oqJyukPnjGcJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762431594; c=relaxed/simple;
	bh=U0ZbAFoYpiKo+KWq+ySzd9IKuF4ku9oUlshM8g5mtLY=;
	h=To:Subject:From:Message-Id:Date; b=PV3W5xDK0VPtB4GdTcbsE66KAbPPz712Av+S3bjRDol/xwGFGpCb4Mnc+3lSpTfz4Dn0gzHDgNzOKku0DxmGaYkyuNkDq3+3xg5klVL9iY5qVh4l8iPN8PS8EmVLIZG8KDZpzjAdp8k18sqIli2oUtAbPJctRhfho4WmM3iQMZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koiZpS5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koiZpS5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC33C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762431593;
	bh=U0ZbAFoYpiKo+KWq+ySzd9IKuF4ku9oUlshM8g5mtLY=;
	h=To:Subject:From:Date:From;
	b=koiZpS5AtTT66n6EmfddzaCC+JNcZ24iE+FhC2yES6eoe+oCQC/N4NXw2JsxakPLy
	 g40XgKMQpNZZL0Ua02PCrDF7goz/vaLyffDOmM8YT+yI6XpRVZd13q8ltVvQaelkq1
	 tmcdBKAuLNAFaGPwLi9nQanzaKGyaGVZhereOdqPLpqWa9UBam12s8Yv4kIMgPgX5t
	 SZIE0Tfmzh2kHQEO0I1cjLbK98+bzHEbYIG/XAfPO/Kyn+YgaaYODyAeo+DjI041uG
	 0ZIsecWuJV6oriidBHzZl00iWKOHiNGFtVuToiPnXbJjEk0Uan/ScxsoU+Wl1Ijnux
	 z9bFuDmVzsacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D10DCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243159363.20870.10019115544035582125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b119b7948753bfed2795cd279d47255096ae8d0b8520357920960fcf83a80af4
Date: Thu, 06 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762431593
