Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7272EEE9E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790475634; cv=none; b=WNkHCdAu4bOGywLmPH5oGankeGG5/PC3vO8zED6C6dR0W6KHZd95YsK8jOFD2JULA+BfFOi91pbkuVhoCRxpJfGzpiEVhft0tMxn3T+hlSdnkmcmoV7yJ44ymhuOxgEqGXPN6dDlmnmYZoc8AJODEmJWDw+aJYgrThGUHSBmrBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790475634; c=relaxed/simple;
	bh=Qb9uya1H8biNBIp5u/CFFLybb0EMEr+s0hooP35CPPQ=;
	h=To:Subject:From:Message-Id:Date; b=bQdFlTleM3oKuxaJ9W7tRHegcp4otm7jknSk909wO11p4yKxHR3R2XhFKpqBb26rPttHwSYbu/3pPVBeQ44KmkZ3vX9/wH5XOrQ13JXyxQsYS0FbiMTCPXQapfm3zRKFp75yWf/H3GcTmPwCErhHfWamgyvBlOkg9TN65SJZ0RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEA5eIYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEA5eIYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7817C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790475633;
	bh=Qb9uya1H8biNBIp5u/CFFLybb0EMEr+s0hooP35CPPQ=;
	h=To:Subject:From:Date:From;
	b=HEA5eIYzawzjTkb1/Uyefux9Uk5+3LAGI4o+VNaJNLOqZbamKxKMUFZpAPxbWnqEI
	 Ejjd2dyU9QlduBuIs10B4lzMSJUUUHTWq2UmzEuOmEv4wuIED1Mun7u3B9/01mi678
	 7AD5aVObXqu1lSIK/ymw1Sx6k367WhLoR75iPNHgJYz6vWrl0i8iyuJK8WVB9fIRx1
	 uWR0tML6B8bTj4Zc7aahGjT17POrFLMW2NUKKkXpPdfcBsX0Sa/a6DIZoyEFdAihTA
	 tSV8krM8zivNdGXDNNxTecdcJGZOUsAEYgbFH4WACVcmWIp2ITTAAFMR5ZgsZIXJZx
	 OvwUUcZtOnEEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF0C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047563368.32159.17722068446344330716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f3c9554f305f225ead3447a36edf7937e31d68455c28c939bf8acb98d28aa4
Date: Sun, 27 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790475633
