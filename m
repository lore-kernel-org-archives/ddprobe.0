Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401CB221F1F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771046694; cv=none; b=lW7ibvEQTQUphpJRpEqeBeaPy9XfrDt7ojvZ4BXi26FKKsTwhVQiLA+frsLCgHou87DZPAA/41anN6WSgKs4n+AxPHZCn6Q02bgPS+TPFemDCHfwo7Mk4eAkXILB8F1EKMrm5SjXrEm3USJlSTwH7Tk7sR2eEJkFlljKpM78wZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771046694; c=relaxed/simple;
	bh=nAT59rb7Cov9OXE3jROxbM0p7LOCu6SOO6CSkPrtNS0=;
	h=To:Subject:From:Message-Id:Date; b=kzob2ep+9MbExxqZosFpVgMaxYIQiyqt5hOCTvqZkCy2KzA3oslBuvg4BmC4k9Gng4kJm8uLXq4HvPi0olR7P7sFjsORb358mUJNBMptt+gpQa1Jf7h4e7/2Yf05ClO1Ik1YM6qfoob9BCSnvK081zgVOa+kFSmPGTcFrA/6DSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7wRUiH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7wRUiH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96C1C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771046693;
	bh=nAT59rb7Cov9OXE3jROxbM0p7LOCu6SOO6CSkPrtNS0=;
	h=To:Subject:From:Date:From;
	b=S7wRUiH3upx5fRgsXUSjIIolnf3VbZwoKdUTnb7wuUbSyI/TjmU/E2sETizcsQo9h
	 +/0tXU/IT4TXXqlL8gVSL7J+khfXyxhdq1K+tISJ19ky9g+A1ZVyUIyBlnz4qF//g/
	 i8181v7/vlbz1Z5ClTBwFCaIWDEeWKOzpZ0yV5TuWwtS13gXSc0740VURtntfCqSRv
	 p5GOK9afKwHS/JU80WLbTdkRE/n1wEJ1mwjlluzhkGAwd0C5vGOBMUJ9PRFbkEHdsi
	 /+b4ooDqmU2Umr4G1oaqamlavV+9TLm611C5iVQ8Dfj80phu9SeGcswh2dVOXdBRRw
	 OyckGoM/1WlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FB6EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104669363.13425.9391660669391480533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef608d8a33bf7feeced6221caa05671f18b43d53e190fac7e25335a9e1be8b9
Date: Sat, 14 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771046693
