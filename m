Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22652210FB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754164194; cv=none; b=OLGtNuZRhzIOlgLdWsVza2d44QFoR+l+wAWdSbvtMHTzL3ovXTq3rz0Nz7u7R5QQOLYGBHui97T8SrNnol9jTf6xxSrzwuiQLizMHOJ49Lq+ZdnCgLyYsWIapVIkki5vpXKnFwwbUnLsAcaUjdN5CRrb8tHgZ5Ku4uBZYkrrG2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754164194; c=relaxed/simple;
	bh=ZCINiWwqyv4c6gfFaB8SW9J/rds6QFcnmXC0wLOiWRg=;
	h=To:Subject:From:Message-Id:Date; b=L+d7tqZIV432sTXI3PaFZdMO/L1uH1nN6YFSC79pozZowe4HyzeY6c3yUxsP9WAK6jT/YMRXIv3C+kznt6caTc8pj51CZU7tEU80KOlcVJGLX0DTscOCE49YrMg8qW/WURQulJXnYCqLno48xp6h6jqCMzvwn8MYbClccb+2wxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUYXGpVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUYXGpVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1254C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754164193;
	bh=ZCINiWwqyv4c6gfFaB8SW9J/rds6QFcnmXC0wLOiWRg=;
	h=To:Subject:From:Date:From;
	b=WUYXGpVCBX8W1uQUlzOg/T/fcAUi/pXLtSp4Bqs8ALE5/1CvjQpLJrZzyAm0z9e19
	 gKUFFp9qTwf8rc73KrzRuLVnY+qxSiH0mlBy4c12xmiqzxt/iaEfzpWxwWDNZXnR0V
	 5Bz8YEtNEtHCxt7nn4jP9a9S4gCi5PZG7B000xy94KqiYPcLNm6lZczxrpCBAtaLjS
	 1PCgTeDq/faqbFiUWzbWds16zAIk4QrAOkZJqyRHWn5uRbmJiWPplvGKKvuM6BJ6/R
	 T6Wyz0fENk93wd7T1fbOPBrYQrt8z9U5b+dAQ6ejyAsGAhEwTPuVFJxL7DjyENMMZJ
	 XOcOypJvsiCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF3C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416419357.2143.9928876504238804940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a962866750134ecd32a9fde21a895bfa4d0d409051e3106ad0a1ad39a4bdaf4d
Date: Sat, 02 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754164193
