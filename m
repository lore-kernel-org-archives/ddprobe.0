Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A201AA787
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728075954; cv=none; b=spP9b1QXz0+oeL4gMmki88rI5tQ4AG9dzwMTAniXI1ExKZHC3AR1U5DlFWQLSUcxJVUdC6/Zwz+SfjNCveaa9x/NGV200uoDouWXaIsv6dXDqzAvEDaZ4UzENxPtsh7AycVfFS8lQJrwQBi6p6LMtKlvsks7KbBfvWtEhy91uUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728075954; c=relaxed/simple;
	bh=aNA/wOTDY+e0lVjh9eyhUvjTLeZNR3P+xL0/S1p3/9c=;
	h=To:Subject:From:Message-Id:Date; b=MrisYC+HLMYJwGyyGcoLuGJpnP1E8qNddQjzWcahPMWqe/BZM+A3NKIHcFuNzYI5zgVaEs3+WYXXL/A46N5oIMNiFYnCkCuX95/ue+Khx1vR8KiGtMs3O6I1IdYeuh4rSSd5DYeYYuwE82POvn//5eWbqYEmUfQDcHBuTPKg/HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0EklhLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0EklhLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB03CC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728075953;
	bh=aNA/wOTDY+e0lVjh9eyhUvjTLeZNR3P+xL0/S1p3/9c=;
	h=To:Subject:From:Date:From;
	b=t0EklhLTOcogn72f7iQ7l3+esvP6UiAQXZ2jFwX6fbbI3kqDw9OtgU9BUGLmPA3us
	 2LmIlJhvzjJMNwTDcr2J80hK6mqNQPksUmQo9d2+43YdsQUFMD6zoUlq7twRJ9fjU7
	 eDtqITUZyQBE/LCqwL7X4FxzfU9ZRj5ymaLo5AQnF/I5RY7jU+tfFWEHUeDIKc9cDJ
	 z0kJvNaJB/EEmHmhbt7ZSRbpagoflx++9/MHX18rK73ttXxP5+3tIGTCYttY6p8Nhn
	 qgVCRtCDUgwv3ULmDL7L9ytZ6zrKNjrHD8UuZ1kboiSMx5UdFtoyreEdinICeMsQ+9
	 GUmYp2CjUb00w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96148CF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807595360.31284.8810901368560171101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d264a6d9b7c47c02abd6edb9dfc7eb95b4ecbbb49897c83682c26059f21198
Date: Fri, 04 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728075953
