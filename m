Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B667212EF1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728049554; cv=none; b=r8pZXtMWInzvvf1paZkRzJA5brApb/Cyf0NW05dtKSbeCjFE1rpBTVuZ6cMoLiGbBgaoHbLjt8ioYDYXT+kspEfwKYYIzyrV8kO5G9QbnFr582ooc/qe3N20lMZw71OSnK7NAtq6a/r3nIYZQLkPZMMU6MLUYFGfbtrUzvDvUXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728049554; c=relaxed/simple;
	bh=uUKe/cWbPhG0XWMG/onPTOtcWsuQg6G+hq0EixFllg4=;
	h=To:Subject:From:Message-Id:Date; b=ujrp09nP7w4ufJuWkSl9wrWYopOl7Za4zj/sjWVsGEc+Ev7wzUePZi3Brgupe699M/JTU5C5vtsbdwJ82oJ4uGSVCVUc/YpDEoxkIa9ww9u/jd/bn4Jjjf3ao/K2KPK4HrO6BHBwbM234s0xbgzc6VS1/x6Fr9k190rzM0073GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFbGHqGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFbGHqGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF3BC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728049553;
	bh=uUKe/cWbPhG0XWMG/onPTOtcWsuQg6G+hq0EixFllg4=;
	h=To:Subject:From:Date:From;
	b=MFbGHqGZo8YNK4F24/0Mp3OWyUP1iDDdqfsqIy2bkk8zsmOHqL1ypy8jJHzMzBwDa
	 25EZE23vr4HV7gehtWlrlPglkTCxKHJuelJPeQIunmEDb7LHGPJ8UOn9jIY9TL1ASv
	 oGLno1ypLIJ7cEaZaekQ1JoLL9zPLLwercu9sPtxHg6BkzirwRI5fiKIvLz9jYZhMR
	 blcBqf+xKqYqy7BjgeuomWEmgk0POyaoe8oJSVY+vPQZhP9RNauccq9k1w5yg8fOEV
	 axJ+li/Me5ouLkhzePETXX0L+ZU4n8Yh1qZAUkmwSbkFJ2JO0dOV6EyTIKB8o120Jm
	 /vNpZyYo2GmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952DECFA77E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804955360.6168.15794772937170280950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0d93d2a5c2b592a86de0ad5024fbc62c6695a241e6fa10155ace980cdb3960
Date: Fri, 04 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728049553
