Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208DD3164B0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770719634; cv=none; b=r+vs0sT38/H05VxL05jJP15W7LMmcbmHqfVjId3uKoWD2eWHUTBiY1nqah21Vi0U97vnovzEefnfsaMKDeXpzOLC4oM/ZOoaGK9i9f6LAvrmCNNcCtg6mBjzkDqPt+31rTZRkyQoNGKc6Sj2Bl0eaSHXzu3jTCoPN2L6M77yYyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770719634; c=relaxed/simple;
	bh=muRgHY11BhzCVto1ySB21HUaDdJO2NW5l/fglhvFlFU=;
	h=To:Subject:From:Message-Id:Date; b=XKAXn7jWxGETLIVGpF+KA9Zvhn/7RasIhDRyK7+tuopXQlvhKogPr+yEcU5GzBBc/ve+7vfni02wFCR0e5YI5/SojDdxQ8AooJXUCByZXhfiE7SDfGc7SceYtHs3euPppMzaU5hOeCwfxFfnFpOS1EKz/e9X6qHy8BzwJDwxMQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJsEJn+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJsEJn+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6B7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770719633;
	bh=muRgHY11BhzCVto1ySB21HUaDdJO2NW5l/fglhvFlFU=;
	h=To:Subject:From:Date:From;
	b=ZJsEJn+azx3B85HuU/JgXWLNZEm+GTwpf06DOPXSXo2QIY/dxyndRD5MMR5gYF5g4
	 N5tzySV4JOBjnemI9HdJklfX9jCY6PEWS2KpuEnGmynyBkrl4jIYjllZbgAcIFHu7s
	 N/eGhzLb190Bav+aWYgLvCIko33xJzaKlpKHWQD9Rx6St9jAcgDNSs+jv1rCvneF3Y
	 XwT+bpvY689DPeuj9HdR/KrsK3KmhvSJh+D3sageDBV4E82ryhlPhYf/4JdZUzoC+d
	 x3JAF3xUQnws2mIVBoxHQxN7DJl1KcKFBIZL7fNVLzxiIZNTu0JJVWvpnqXnEyAFCF
	 pTsFGpmOOmFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E517EA3F35
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071963363.22950.3038571659821922231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71606debbd2ce7c98105af31752150187e6df9db7c3da5099310c88c9dc85a23
Date: Tue, 10 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770719633
