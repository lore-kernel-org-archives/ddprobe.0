Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE653A1CD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718917824; cv=none; b=VVOiQN4TypdVBTnuMk4stqL+zzwE/86GUqSX50IyqNCw4xq+SCj6+Gw7Gf9MkbJge+NCAGN9qG5VWLnlEhpTu35s8rm0e0Ifm3eXbzyy6WT4mAeLB6PijRso0a/f90VubNDYoyXZ/L3FNPsOzsMNGu9lvCFq6qE07pvrZLQV5aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718917824; c=relaxed/simple;
	bh=5mywDM9ok5UiYEXnDnBcxF5rk6INplxuqQRIbcIXy5I=;
	h=To:Subject:From:Message-Id:Date; b=PL42dfGqcm/GCmpFsjxV8WHDyxmILMHFEY0/Fg1LBM4DfUeb8hcQIllifAFzNwYgVWyPlBRiAg7kpVhn8HoM3ivEBbBkbuy0cMUm5p4GL62IP4AnNUSMGIsW613Ls7Wd1ki3Joj97YdD8Y7l06A4k02Qr7b26dBqGmz8gS1YABo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlOKafVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlOKafVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD1CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718917822;
	bh=5mywDM9ok5UiYEXnDnBcxF5rk6INplxuqQRIbcIXy5I=;
	h=To:Subject:From:Date:From;
	b=jlOKafVrG3k17h3qDspoRDBdIkLqWP9RjnSwhkFV2PZYJYAMUULOolzEDSQqCCNzA
	 ZoOvhwVp3RMOLNDn6p7tkbcZ4N1MRWd/zogD/24QWEaxwj83/LOF+b3+r3XjCWS5P3
	 XmbPLaxMUETEUCAfjFAhpzhq9pJXUdHrE71UiUeOlGfvIxa8paTMZeOJcB8Ci2hqs+
	 15Htwk3zcumS7Xc1nS3sy7X/4wYvDC4WcyLA3V9ku7HeYJbB7P6gfEUcpD/L42OdVF
	 zLbDgOnhVFPTRF2JxZlFv3NzKOGU7kRrIQSqgGIEhYnohbzbMFJ1rElGn/sw++lAW9
	 iorQzbq3WV6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1A0C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891782279.16113.15229398288221301030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767ce3270f371128d1f09b692be5fcaaa984d8a459e7f299c24aaf92b3661e80
Date: Thu, 20 Jun 2024 21:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718917822
