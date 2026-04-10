Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CC53D75DE
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775832454; cv=none; b=cRHxfioVEO4OicSKQnHKb/k3dBvxNSO6q0ysKWuf1zuC+3Hnyyr34mND4TLX12IKvszyJJGzk3gClWoIy6Wonu1h9Xa66PmuXYnxF9Y8FIrfYz34qKdy9ppy3mFzyUQ6B1lCdlZCW/GEKtJkaV0vtUMHPW1pLo9+UlxE+7ty/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775832454; c=relaxed/simple;
	bh=ZRGoq9agXB9+d8RbvSD3O0YmQv0smw19m0JGy8dRvos=;
	h=To:Subject:From:Message-Id:Date; b=e7/QNQns5fffvDW2ZPlH3VLG/WbTvnl8SFF7CykfYLyQ5qCoGeH5aIgojSpOuxMGKxXUnrPF632j4wrzYj8tuoSoo9FehKc3IoxuOiswbemaU/pxt1/tBMJbFrQkKfRayG/uFhyBQz6txS5AAwGNARZ186w8g0HOYaINuqqM0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knXjDIEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knXjDIEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A19C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775832453;
	bh=ZRGoq9agXB9+d8RbvSD3O0YmQv0smw19m0JGy8dRvos=;
	h=To:Subject:From:Date:From;
	b=knXjDIEKniM7pjJV6fV3m/3jq1bR1mgTHZ374rBio7kAy5aK1mV+UnpSv7BcwdMfh
	 ZhCXFD+RaRFChvy+bdh8bWdzs6UoVn/9EPgDyiw1Yie1LJHvuQYJTqUIDnCtKGyJ/B
	 1dkZcdSTy8h8twNTG+HvpdqdfuMYqtjmnq5m5EvfmrT2BIHApuZ0/CBPEaBq7YdH3D
	 QyTvCA6+EaaGIh9cnd/0ShY5Fo95/fMQfEctOViC5uBxW4ziTQa0XBURksomdKj7YI
	 eX4in4sNyO+4KHFwwTh1yR77Q2Cy5aKQ/RI2rDCaLjv+b9JSwBN5r1i9d68IFj56Dl
	 m8V1kTKavsjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB414F459E0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583245369.12958.4430116987664879752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77766aea9421f2e3dce08323998104bde66ca2a43c34d20861564b381081a06
Date: Fri, 10 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775832453
