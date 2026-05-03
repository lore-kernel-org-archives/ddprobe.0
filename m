Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B833A5E64
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777843654; cv=none; b=eVpjAVSUq1LlkDZ9MCB90AwsaQsf2us7gLRx+u3nj/Am1s1i6MIamZktKvugrra/bX7hy4+Xu7QLmltgDPJZisb6uqmOpP+rxiWfXKIdcVjHU335Vs+SnGp4VcNrDGgRO8SzaLg5jWa7cPLsgT6Nzu7Llb98L+zXEF8i8hMd3cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777843654; c=relaxed/simple;
	bh=qP3/YILqC7IdY++QDS9+21H3ScSg1iTrJVApWmTXE+A=;
	h=To:Subject:From:Message-Id:Date; b=QxuEyZM7yVjd5LLqn0gTfLV8jJ5O7ymIkC130+zGJIBFG1l2KLz6TvZHOUF6ta4unXX8JARe08qlbHA2CTvqJ69OUsI/h9mVCVc1/LwotuvxFRSpOU1YEK/y1Sh9Np6ciE174F21FhEAJ8E9fr2VUJOUE9d583XnM/GgDialKDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5XPvand; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5XPvand"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD389C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777843653;
	bh=qP3/YILqC7IdY++QDS9+21H3ScSg1iTrJVApWmTXE+A=;
	h=To:Subject:From:Date:From;
	b=L5XPvandDl2DHyT+iLGvbOZlSnkDVMIikq3e7k7wwux5L5Ap9YmTd7ccoN8tezfnB
	 hWuqfH994DpPOsYeOXwaoG0sJS1/yetcLSL/UP8pW1kAMCjs6pv0bQrvt8oVqGTYMF
	 Q3YnqDH1+9g8U0f2v6iDxRFs2+Vyqqj8HAeD3kwfaa49aJztSZhv2QjfHGUFL27/O9
	 iQ7Zz0GSJoU0X6UvjG2eg135qFwXJh2Miywnu5+HjjAk9Dj2baQlejt45Bx9fko2q7
	 JfwXzo+5qWhrqDTUac77WxmfqnXdtQP5zKYfJahJ4dDGh3gcMyGOCCeeM4uCAAK4wJ
	 pmkovq2aj3kfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF11CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784365369.32192.13140953431517427133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f274250f905b8c74f9423b01d1884471c56da1ca87ab77514115bdee268441e8
Date: Sun, 03 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777843653
