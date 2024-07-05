Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656A018AF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720193723; cv=none; b=mjMhtx9+IuWRh9FMxHAkmtH5Yx0IzozcjyHEU/D3uXQ5IZKvMF5MbCbxdJnBTALAYZxiFUp3SJiEb4ZzVWu0zm2o0Yw+mYz5n3sihGMcVBD0/vQbFE9kDHp7PjntT7+YZEol2/ypciVameQ05XgT2dH1pQojwfnkZ3+LH6swcxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720193723; c=relaxed/simple;
	bh=QBk3pRf7wE9GZyQWGh7KO00ixYaMOjvihUOeQkmUTPw=;
	h=To:Subject:From:Message-Id:Date; b=hOTbZrIgDJ0s14o/i0QbfKjAEUtrfpv9EGuCoQVvqXQpUJW//UtO/BAf4BcIPosGla+xSkzD3x04TcO0EsOWanb0qcawHAaNnxYs1B1Jlbeiw42ymAIrpmidAE7XGn0VOQdV8ULkzdCD1RMkki6LivcemgD2RP8TtoygLn5Lx9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO12Q2wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO12Q2wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7302C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720193722;
	bh=QBk3pRf7wE9GZyQWGh7KO00ixYaMOjvihUOeQkmUTPw=;
	h=To:Subject:From:Date:From;
	b=NO12Q2wGQsJVnSDBVDa9X1LJOCpTUymvu56CPa1XCgmaG2XPZrWL7AgSROeEF5N+1
	 rt/SR2RfZrEeoxV7rAGFs6rnrnjo548G5gVqJlvq6wZWwWX0JMVvICzIusG7Ve3lFE
	 6vee/BlnfnHzgvRFPOSckVolZBn/yXIT1TErQAYc63iqQxWl1piCa6B7JIOYJPXzy3
	 KgL7bSU9yyi9vWNJ8NfM1N31gVwMl7ScFdnfv5KgTOwGeyYNx42mvO5OKeO65xRPV8
	 Nk+UbxwhwEU8a9rD/D6LbLWwy19uolWmDO2jZmRzoq1HWI1bgUbc7YA9e9NpYO33gc
	 Mjp2aJIZF11+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E49C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019372281.24765.13667923251132155948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d802874e831a1768288193a18101c0443fece496bc5d09f349b6ed2ddc16b206
Date: Fri, 05 Jul 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720193722
