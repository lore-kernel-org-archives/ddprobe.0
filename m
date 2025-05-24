Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BC14690
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748129994; cv=none; b=b0UZt5flq7MuP6PAIdwr3HXLSDsMoMfAWMDGjDqI/Ms0gRJFcDSnWTQQwyq0Ct+jF2x5bRtBH9NM9A3iXkvHPZNpk672zKGyOkJ08cf6+NC8rw8nxOGUnlCw5F7PEc1JtFta4hYErVUiqocG0HeWIKp2YAomq44zglygJLvSJ9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748129994; c=relaxed/simple;
	bh=/Gb3lihD+UNHbwHg+K/27fcEcaa88eTQ3MXp30EtK/k=;
	h=To:Subject:From:Message-Id:Date; b=SSdYbsljuI/8+XFP2C8QwJnWcGHrhoI25XIQCWXPOQGMNYjr9PGxwfcSHEpcV7TndL8rtlh5/s2E4qGKl+eQTJb8vngsqNXj2x/m59TIwgavVht5sJ6vmsQ8izBXgEUPDv3OxgcsuM6esZoNKomjDWFY78vm4XMobMVvQ6OfYfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRpTzj2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRpTzj2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A331CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748129993;
	bh=/Gb3lihD+UNHbwHg+K/27fcEcaa88eTQ3MXp30EtK/k=;
	h=To:Subject:From:Date:From;
	b=sRpTzj2IQVimw1RFx4hh1opnBZL78QRdKWQJivPdhwXZ2b9iHskjN1MfwoxK+7Ge+
	 X1NgxpXKCZEdu/mDjwnY0JMoFJb3/RPBIhN6G+KqzoiJJ0r94RamFbkTcw0A9c4d+a
	 4fIgn/P8GaPTNgyalSt0T6qYM7Vphaa5gUMN4Ys9EZ2bL6Nc5jN0wX7rGUbLGLeG34
	 KRbLQQMDxlx4YQvHGX5LKAc1qP8afiSak4nE+si/oMbQ/ju0R9k2OpJvShckiqfhnU
	 ZT3y7sr3geZjelgUtsM14oQedslR2dai6H7kVoYU98kV1wXEw+cnzsnNIgcnu4728Z
	 +M/wPu9NEJRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175BC54FC6
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812999357.27728.16249089013461615531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283b417551d1248cbd2867c7a81cbafa65a78896cd09da5419bacb0b310d72ba
Date: Sat, 24 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748129993
