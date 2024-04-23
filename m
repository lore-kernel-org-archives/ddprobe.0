Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660AE1F94C
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713851423; cv=none; b=oIIrVhTuktXLtPN2Z4SiqDKNQVhuS/nro6sqzVzT+CCPY6roTqyFkQdYIwK7VukdPRJ13Uv0xyBco/R4E/KME9/VD2pyytY+dzO9lGMRtTQ3P7J0lkQmdDdvY3J2a5zoivnfIJJea4QYd6DXjqU0bisUX319XsqPwDlqCy7DAEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713851423; c=relaxed/simple;
	bh=6yYCRZYNmyZUT7bKcXuTji1Ah4Z1qgooOvbew5uCwOM=;
	h=To:Subject:From:Message-Id:Date; b=EJvkyQakhsJ+H+kCgans42aEgjgARGEyh/Tq6a0g5K/ZXBv9gYCMSzGi5CZeCtLOlHnX7BqVS8093XMZvKsSMzQWaxvZrj15JMjloIntCAkb77yzPRLOhCyDJzumHta9Wl01I00Onk3U6tlrOszIejIfl0xqUkR92zhP6WqGePc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2IZgXBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2IZgXBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7855C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713851422;
	bh=6yYCRZYNmyZUT7bKcXuTji1Ah4Z1qgooOvbew5uCwOM=;
	h=To:Subject:From:Date:From;
	b=f2IZgXBVg1gGlrSwth/HNyKGV1hT8b8y5A0AVVGhzy0EVVyrsHatQrwjEyPeyNw0T
	 6pI6sF+PuB97GTMlB3qTo8vCPeC+7Xpo1+AaaeA2qe5C7G7CVn5fIoQfk2TM54+slw
	 hzLAXKXANg608l2UWFOfAJChTUJ2sd9KEXlYUpThGq5jtiWLIXnFl0tkW+ZzGAxu31
	 m8bomFP45mxCpYu9vonjIyW9k62riIQGWTp3WOEiwo3ZgTZ3spzagieZJMwRbfDsTR
	 yiY55Zw9uUB1yXY66eTXjsubd5JsJI1m7o/jJN5RjjPmrf6Oa+FsGbn6Xsaoo63aXC
	 wE7C0DI6AQFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2505C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385142275.30166.11747261917300988599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a72976b6660c6f0393214b05404cf41bc6cb08a1e198fd078cb9a6961a695a
Date: Tue, 23 Apr 2024 05:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713851422
