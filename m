Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B79ED2FB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759541394; cv=none; b=slNi6dZ8hbRVGW/AQWSV6rrj0s/S1i7TZOYXarwQWmdM9ALknqCVNiI7jPXLOkUh1/LPuhVYkY73gSuFXT1f+wfLEtKKpkTXlsC9tSBdkwLoxLzp3kl/J2WLegWeYH7wCSyhYRygcYwNUdApWz+RzQxa4fPmp0KmmpYMNgkbhrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759541394; c=relaxed/simple;
	bh=sz9pYlS0XUVbm0DQ21tVN1BMKVb02zDyda8qZmfFJBE=;
	h=To:Subject:From:Message-Id:Date; b=aqlxSyLGm3k0T8AVHjk7PH4yAtK87Z/XtFh4BVYMTyiWQ0t7oaSDvsTcMDwFhJD9DNRWckfVay6auhHJG2WW6+x0VgPsX/gTN0KJlVnqGHzlhfOhjeRUQH66ZJkWfigUgHonp87Pl4L1j7uftMOpOaoYB3zbI5+R2HffFmut0Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pivBwF/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pivBwF/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6781C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759541393;
	bh=sz9pYlS0XUVbm0DQ21tVN1BMKVb02zDyda8qZmfFJBE=;
	h=To:Subject:From:Date:From;
	b=pivBwF/yA0l9kFgZna5+/nwrEODEMw+FXfdqCH4s1kF+9Zk5hj0TW4XRtBpPC85WX
	 ZaqWva2p7dmf5fgd/YRI2D7iKfJsVVIlWlckSY7mxb4D/4gcGJ5U+Ry6Ed4TTX2nVY
	 w5WExyEpPoy2BsKsTbmFLfmzlAZKd4Jw9OWxI7IdaocjUSqoz8Cvuanw5GyXgww7Ij
	 R521RNzTZurVwjmEoubqCaXS0oO5BFHVynr6ovaxaX94K8CU5j7GoO4ihbkRhXLPtO
	 qMIOfB29fWER+IDLmIhiAo/734uJZ0T8zvBuNY8IgLrcHnjH07zg+25LkPHlt9CSjW
	 vFk9v56eM/znA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95222CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954139357.32473.10362486189420427794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af5c958e01b9c3b6354f6d4249c42b99890eae9ee6b5e5450e67df06170c218
Date: Sat, 04 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759541393
