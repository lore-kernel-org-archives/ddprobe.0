Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5EE1DF73C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759041595; cv=none; b=u6yNQJo1fr8jXt1xrQcLiWA6gA1uStuJBcB9l+/NURfm1ce5Ved2REwukuDTtIm5CDod+Va2TemV7vuRUc3wjBmhuQfd9gQ/pZRWsOU+g90ArjuPUnZV4qA7WLQgVT5oUjUaKYrP6FlE/DdkYegugA+Vqe8e6Y4OyjZrPab/scg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759041595; c=relaxed/simple;
	bh=9gWC5xBcVauyXuPY91j1g7Hvkyeh+amXuegJbgoucX4=;
	h=To:Subject:From:Message-Id:Date; b=YXSD0Nyeo6kY47r81tLU0qh1uSjxoNegCGbOeee9bBGwuokBo3yt/nuzG0X3zMcxugeTG6m7hUTOFSJRmJLgt2k81mNB4Rm/8JbAYiHbY4Hp8FCqESUyJm2xh+0/xYIDDWy9V6Y3tHI31h+NTwJ185gCfWMF+zT1ktt1rk62jzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkaeV3PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkaeV3PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759041593;
	bh=9gWC5xBcVauyXuPY91j1g7Hvkyeh+amXuegJbgoucX4=;
	h=To:Subject:From:Date:From;
	b=XkaeV3PHjdVmlhbDrWXYevVt41OUn+ROy6WZMlTP7Dr9rSMb8TH6T9S6Z2wpaMvRv
	 vwX5QOH428qM+BVzTch7BfenULr8m7jDc6buc2xbzS6d1GvibhZCMimUN8iCQv7gxP
	 CnzydYaaQ1JkM4BPUU8WegvjBbvM3xhaq5G0wrwUGwXO0hsDpUXojCAIcINdY0mSOq
	 05uIz8hcuqy3ccseYaqxsEj7g3R6slqMzHenWCM3ZGW/eQlJ8P+G2kA207fO9rxJbX
	 uWVwTcLaE+XH7ji981Nfbonswl6d7pCj3PD9TL6txz+z5Bd9OvTWt2MK6DyIHl2NmL
	 KS/rhbroh651A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D3CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904159358.2838.14846731978180399138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ec8c17fa13e3b74cb222ac5697d868ff647819db6b0be10de4bea686cd402d
Date: Sun, 28 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759041593
