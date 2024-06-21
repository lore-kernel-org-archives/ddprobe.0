Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353091741D3
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718970143; cv=none; b=PRyYkuLy47f/0zNT1DX7ggSECm8CQf/VwnzID0KEAF6zS694n9gfmV4DZSnMkFqljoN+a/Mkqo6dIRsW6RaupKh0Zp24rtJ99sUTSNrCZ/2lIk/4DQoMDDgT7FhJxIZFQOEhtxh0GXyxGLby99GfyqfEs4826bfvMOey+bjiNlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718970143; c=relaxed/simple;
	bh=AgepS4r7HqZZu5V1RqUPSZZ32FTFvN7wAyMcdtEGurE=;
	h=To:Subject:From:Message-Id:Date; b=bXw/Rbqd1fAQv0XTSCIal6cfmTq6cmioxHiKF1Brgerp1Kmss6P0GL68SwQEtQ7faUZAun29CoIXDWtzST/HFdkfPgBf4rVwfBaGj4slOW9oaTQ7TWpqGejozsH+A8C13sjpjrgC6WFIhWIqgSsxRofz0/glIJF00ww2Rl1nyr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1YqixYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1YqixYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C834EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718970142;
	bh=AgepS4r7HqZZu5V1RqUPSZZ32FTFvN7wAyMcdtEGurE=;
	h=To:Subject:From:Date:From;
	b=s1YqixYMLWm0DOq0u5MqhwfHlr7VYfjbPZVcrIZQ3buQSJENtQQIsWm9seWrPI0wz
	 t9xnvMWbTRETe2iksoRL3WIQ2z/pY3bc2Up4VtFctz41ZzlMWelRptRHIft4rWapbM
	 I8OApRm6L9Trj0E+3AJ0Nm6gzw+ZBUABB16n0jPjklzQ1JVcUSlqKfIRiNb0ruDuZ8
	 I2SiOBOMAYGgwRmxi+DpgdSyEhi15sylacSHfUohnPBI3TqKaNIPYuKb8AbbiFoMmI
	 EJvvkkUJO5Ymd501UsTvrKy7iHyYiQxN7BnXe3jEb8q9EpfJ7st5bH8iJ4Gr1qaCrw
	 DmuVzC62OJ9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1ABC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897014275.23568.15979763276873001951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85458b40ea9c1746a9531b3f38d99bcd2d1de85c8712966f47b4376b3d9aebc
Date: Fri, 21 Jun 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718970142
