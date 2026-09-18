Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661DA23E334
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789708234; cv=none; b=NwWnInyTKUKjfaNCkaOAexLLvi+XOvf7nOaRqh0hiIHFJ4E4akxKFckJvMjMcX0Avk2XgOZKc79tyhz21sVZ08CvFtyfp6n8v8shIRNwmLacho+GMgxqyri31VznwXIxj2FmYGnceUqICLVeKLlHf1nEyPJTFnUkAWnuJhHg/YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789708234; c=relaxed/simple;
	bh=EbUtSk1Lbi2zFPiuzwOW15+mei/plh1FgBTZXXBi2CQ=;
	h=To:Subject:From:Message-Id:Date; b=nX/8QToeLBF/bcsKAML35WD5tPBefR6RXxxjKF4ME34qz3oWLjAoyrJ893EDreVm0yb7iinGvaUBrUBspNm9wj51fy72mp2CgrUYUJygYxZn6t5XneRBZ9Ydp9MzVE/J/wZ3YlXTTc8Q8tAdUZMWhGB97TPm7MxpFDHaDvSnBXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlYgCuAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlYgCuAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90CFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789708233;
	bh=EbUtSk1Lbi2zFPiuzwOW15+mei/plh1FgBTZXXBi2CQ=;
	h=To:Subject:From:Date:From;
	b=VlYgCuAR+cpADIWdFfzPVnSBlQ6E5S+6PcXZ/1J24cdOXsI6SAejfWeSAX9i4EmQF
	 8U1Jt5PcTCVIb1SJLUrz7JMY4O9XIIUvwN+O47pNV+VO+nQUBUoKN0JbzYbld0PvnM
	 lJMzmmpYVIfUGzYV/1dMagZR+WqPZVYIJ7na1jwguqieXVbdfnRB3GBIm9cXKEv9Nx
	 N0Oeli2ufOwcC74Q+kD7VOyQTqncZ8vEzEahqw8yM/bEaO5P+fkFzlp5VsjBIZczkX
	 d0mOaoDoXeS3ed1OQi4+S4rS7UFIJ73U/RBwKfR9+ki71E4j5zeqVymvbutmnwrL69
	 B07d+i3x1LHPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01F7C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970823368.8304.8024554801409929385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3a644f9f723049529dfb5010a8fa027a9b6180a038388602b0161846cb3c36
Date: Fri, 18 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789708233
