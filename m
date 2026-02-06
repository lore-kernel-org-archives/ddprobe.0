Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF272FD7A3
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770422034; cv=none; b=r7Svlqfh1DIcwLXyP0A4JXg1FXbdKd1fqsxmYwP/joLd3w7Vj4lCzAqeFhiXBiEQxY0Wv/l6Kt7pWu3fBvfsXrcxfDOgDRSl+Al1qF4p3rX6WdZAnc6nrXQHhxFuDSh9SMiC3OPhh2/R+CPOzqXFaYk0Ml5o/NOWAuu0LkZ2aaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770422034; c=relaxed/simple;
	bh=oQzBTWT8Cginn/YXYgGDs3KtWUg+ZoV/2TnzCgSgDNY=;
	h=To:Subject:From:Message-Id:Date; b=QI2t2I5yfqV07Tf1KmNfI+y/ktBlYUJy1VkPPhkGdr8VyZAc7+wjxCeGi3pfpSuCHqTmrznGpTcyhKEo+v7uWIHaOaaP+CiP+qpJu/UNMafiB5SFstJj5MXwJxMebd7CK0DPO4cyRGHldg7eJsS8LDC0WLWUB2JJmQsg++kueu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqyPgq1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqyPgq1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC36C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770422033;
	bh=oQzBTWT8Cginn/YXYgGDs3KtWUg+ZoV/2TnzCgSgDNY=;
	h=To:Subject:From:Date:From;
	b=qqyPgq1pPM28SynV2PRLK24a+s2mnjzQKyqfFA9eE+8y8aL+v+yexR79Y8FAwjYyl
	 7n8VVEgSBwPanOcSpYG53+Gluwn+uy1U6LcfaOgIR7t374AClJcw8TP1hrRQKTEWC8
	 ykaCvnYYXhBiCr6wLGr87AX8XPZu2LWX4HORqI5kpQR6L8e9zW9Ux7kMJpV/GTJrfe
	 /D26Q6A8UiKeK8mXS61kCa0do/k5Bt7U/SL+Rtj/+YMz+3b6xreGDk0wmT599cOLXt
	 u7CvLcYXvim3upm8ZkuOzJFRT9UMfqFgTBVASKIfmho3xCrj9jQnU0TDVlDAEJL3Ol
	 uYDzysyxZRWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D95EE6B6B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042203365.11056.9115198299079684562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfaeee6b3d6c1c193d3b9b24eaa022d3f071453bb775826f89ef266644085961
Date: Fri, 06 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770422033
