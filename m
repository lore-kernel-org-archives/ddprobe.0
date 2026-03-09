Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13372010EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773032094; cv=none; b=FStXP480Gr6eV6bwunStP0uZbIDnnz0u+HM+e1dVDl6YuCfAaiafkpqs/943KrAywLUFlD3pxc5N2WskPLw/9pKzZqWu2mJsCWlsmR6ysGBUu9MS7B9WujM30M1zkW2a1thRd7ChTZBXxgf98Ro1yp4jQG6Cxl/UBbjV4zQX9Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773032094; c=relaxed/simple;
	bh=Bzvyn44MRrM6jWPL3tS7QfsAQghkdKhkONsgHos1uk0=;
	h=To:Subject:From:Message-Id:Date; b=a970fUm+qiiUOxYJNc3nxHDW33fBwwN8XbgXxsUFIHemBlCOohJJQoXei7YXiPIQ3dl7J7Hd5HfY+vmj5yAAuppgmP++Ophc4rRB34Y4nhRVq+deY7OWy2KrlQIHlLrNXhkk2u/H6dub+5taGjC2F09z2TO0w1Sd+q7rbTpExuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKMkQ3Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKMkQ3Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1080C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773032093;
	bh=Bzvyn44MRrM6jWPL3tS7QfsAQghkdKhkONsgHos1uk0=;
	h=To:Subject:From:Date:From;
	b=VKMkQ3PmtgQZse4ZHV635jtgRqIWzaJK/z3vOhjd/+0FPZUKeebzV0lH/h6UTKUpY
	 ya0VFgx1ePIpFbwdW0pzTkA0v0JhwlWNe6Tz4tnSMCothoQ+iQillWNg6W3fhCl5JT
	 ROllUYNnSdcATymxGlh4ZPDcx3JXmKaPI4Uh8SeYGSP8XEOWn31UG1QRLrs0vxVC2r
	 z0+ZjVGGBQc3H2dO/Qi7TL8VkN0Rg7wsn5B8u1DySoKWHEzgKoefKXQxRt62B36ZUc
	 STatOjgj6eF3/80J7uzYwm3da3WShJvbfvBpfPxIfmeSzHeXxnv2xZEJU++NF0mnp1
	 hLScjJfJgPsdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90004EA8554
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303209358.2789.13601496084799447893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fda3c8fe8a76633f1824fb7a4ca296b466384f256039e637af779c4052727c6
Date: Mon, 09 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773032093
