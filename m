Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D22C08A2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769865834; cv=none; b=DmC5ZSvXlmE4zk+FfsjXRarT57VuZpxfsj54O/qL9fkfIaM+i2aV1ij4iRJOGxThe9Jgj1Ed8CV3MyaiTaQQjeMe3sdO/9slvIP7gEV9FJs3ZbrheubvVcoPZ56BwX+dwmuXJE2rgk+yZGNRLeqm6cy/HC7C31Nefdpawiu71/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769865834; c=relaxed/simple;
	bh=3VlSjaAshwPq2Yv5AxdDQg4bKRMJHfMhQ2gz+NT6vsk=;
	h=To:Subject:From:Message-Id:Date; b=upcC7yuw9VRpRbVXaWqVNo1BGKLHhqBVO71fYeX8Eq+04Bl/8JQ+l1VR/NRx66jfi0zTAkZyz3wC4itTYzNbhVSXA7Kw2A8aZ5vAxynoHZVuhDXk7Snn/4D7xe9NuO/YS+ItCAtZxCx/iAG8qRDgQqCUxk7Rvqf1cTSys3KbCFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzR25nLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzR25nLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769865833;
	bh=3VlSjaAshwPq2Yv5AxdDQg4bKRMJHfMhQ2gz+NT6vsk=;
	h=To:Subject:From:Date:From;
	b=PzR25nLPMOmL+yBIHL8GC149aeEYHJyW3VAIUzvsxQJzTDvirDGa1G8DOYQh4MsEU
	 acc7ykL3omA9KrTMp00zgZFKdTbbMBl8KjnRVDwKT1gVDvW/hWpwC0smnXPNbsMTks
	 6S/mIVWUAmCrKLW93bUJjLK6gOiDLqNyRX2ANpokN/IjuYBuWzk3fwHEymUvD5QT7I
	 kUz0qVy3nOtPVEz4IEP9Uoiz30HxvUDv5i4sD2X2YuWg5MuW+plARYQIj+1oq9vloi
	 7NnmHaFhX83GbcxGfspJ+mxCNASXvlCZ/mz4J2bAnaSsA7HZI4KRjf+NsJ8HPg2HQx
	 Eye1h+cQJQE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458AD79769
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986583357.6796.14898927674840051164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3193b0f4ac3b2313edfb00c2a55fd0a4f78e20b1a5745c1ab5b9b4ae0d0323c2
Date: Sat, 31 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769865833
