Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9481BC5C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761412193; cv=none; b=rl6iU+MrCEQRHE8+bQhvgSMb7wlYE+phjo2JytgkowbADT68Bxwpm8STY6/6wOSffbV0pyWgdcuZFBm7a+v8+m5h8xeZNkqw+PZVie1tKFTuUImr+8vNJhQx51IBHlAl6LIH7zGHqLQGO/B500JzBg2AXCn4FwSRMpSZyP7nAi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761412193; c=relaxed/simple;
	bh=nq6mNIFnJkHoYvZCMNC0uB4a7kDurlAGqgFP7HbjXvI=;
	h=To:Subject:From:Message-Id:Date; b=nJq7TOYgKvU8/80gVJpizeo4KEV95ILQbCIEageDl3g+pFSr+QtLZNkQN4gx9YXzvznX9lgNn/dWvP7G0/JUc3dm3o6Hwr68VT+ZIIvSla0ka+gGNqD22ouPOxNIH1IPnUOm0BE1JU0e7XCboXk8iA1au2kug0aF4+goX9zh63M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8kBeDbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8kBeDbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761412193;
	bh=nq6mNIFnJkHoYvZCMNC0uB4a7kDurlAGqgFP7HbjXvI=;
	h=To:Subject:From:Date:From;
	b=S8kBeDbrdnYgmK0pzxt/QnQ9N40IhU1x6trxgy5tdmdtLRmwKOfKPyo07wsnLJgrW
	 zrZM8CkmRdXdBH+ysBuxDFNjrRhsleH6PKcVuX1AJkjZtubyLB3u5I841rJrCq8GdD
	 gwTdriihCVcFbwBsIvBKjGEHFJw1bgq9fBU34aTgy8OesCz5Q3fhQr1W352xYsHsRk
	 pOhAf6iByKVamEyKIFZAPm1KbA7vIl7glLpxsaeBjKhpqQ2ST6+/fIyc4gCRD7m4pg
	 JgQBo9ACQ1pCdB5dFS2xnVmyVa5gtIUgfOfNFjIR0Aeac0HRxM5uTqfOw8L39s7EWJ
	 P+Nth3tmQbDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A16CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141219357.8916.15945380012095176059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce5444f7ce9859e74908acd0940045d875ace7ad9bb95b6c9cc790a6993b42b
Date: Sat, 25 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761412193
