Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEA3262FD3
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746479393; cv=none; b=powg1Nrv5z5rxSUah+5HCQz9rd8uJ+C5XbLJ2HJSYGTqzkFq4m9NfA5MyuQV28PXKUIgBTu4yAk+5H10pQkLeESNdqIjjcSA7H/CS7z/kZSJJeIsb29X+pP2sF+icBWWue4DHTQHJ8J9b+hKr5BgU64kPyggEezs2hSTKT0FyFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746479393; c=relaxed/simple;
	bh=obQJVE9NQclz+OOcsa1/xMDuAmVszHyosLVG+5AXYfw=;
	h=To:Subject:From:Message-Id:Date; b=dW/FRFkEWgSd9Js8qQwJTMP91dmJxAzdSHxWRkd7vxNRVwYLQTvYBsjapY9LpUEyztf/+BKMI5vnAgQtgUGJ3R+JOUnPD45RXqd+gJv8zGUls88m0EejPGnu0EPQNDVhxpuWZ083yHy3ZAU9L8uqBdgZSyz4AxbnI+b4l66D6zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vl3+silp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vl3+silp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA40C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746479393;
	bh=obQJVE9NQclz+OOcsa1/xMDuAmVszHyosLVG+5AXYfw=;
	h=To:Subject:From:Date:From;
	b=Vl3+silpn5sXU84s6/V9KX6W7Pzz0tB33mhbLmXt9Wh09JLSDyykAWlhdJDD3gW8t
	 pRrwTNemcwWMSqNDfcl+gagxedXDMKO8aC7xInYgbPnctROBoTR34m05FBKkc4WKuq
	 aSEit0yct5X/wlOhPMQ5krkGSnVUvH7qMke+d4VjlHUcDw9h37ZPRZq3zVd0hTkwpk
	 Bw2Uk2w6nwAIVk9cKMV0sMf2xnK+gQ/DQZ5KN63OpTKK/6EFi75i7aQDuKUWCXa0jz
	 DEHIiLSOQ01jcJRl0XHB4EqvpjplIqiA/+3E/1eRax2GDlXKhT07/3PfrTN7bptsw4
	 UZexqAF+95UeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FFC3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647939357.22320.12259792927402146668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0046473f4e78a21cd4bb1ae9eaa26e708478df8b18e31d2ca9586a40c510351
Date: Mon, 05 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746479393
