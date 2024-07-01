Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617E22F29
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719876923; cv=none; b=tmz7K21DTdaD4YFhen26Xnfl8XRpSPve7XWwytmF3f/qUs9LDuwIq0m5dw8owKnj3l+9zAAR8e/y/eg9QnlkvALzJU0mMii/PM4vI1jWPSpg0nLBFiRrr3seW70QXgyOnzss0dCNojN51UFuT8jik3+CrUcabXq8Wc1hHhnUmac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719876923; c=relaxed/simple;
	bh=+b9JgOPHbf4Agtys9Y52KhMZeBlWFEJQM74lK1drrLs=;
	h=To:Subject:From:Message-Id:Date; b=IzcflL6INL6ES6bwmEgkjJGEzmUJqTrjNYlg65XdLoc/1n/n2+I4VpHhG1taeoCNyGD2g4XcX6jSqw4AK5NYIcXeAdMjg8tWG7wONuqVzY4upNNMqrK7TLV5iZJg2PP68MnfL/RK75DrQGiI7hjVW4jPxegLL8+Gn55pFvfrexk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7ZlKprI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7ZlKprI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F71C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719876922;
	bh=+b9JgOPHbf4Agtys9Y52KhMZeBlWFEJQM74lK1drrLs=;
	h=To:Subject:From:Date:From;
	b=e7ZlKprIV+nJODix4DFiNIAIxeLdxRxjuaW0hWtpgHyZRQ7Vi3dwLJqTkOC6Smdu2
	 5fP6dm6M/8TwNIVjA5LJhzR3JWYY5EDVtpqdVOz37Flh8LuOh2fbDgfeFbvri/scVu
	 TKaMAcNVyR5LVKfpoGpnnM8EhXhUxmeQYj6ewZfwLiSpxe2LPWgHLxni0uQ+TyDeHN
	 N9H8+x8zBMrRWQcVFCd9ldD1UvB34yiCfmsZpWtJEGWbp2vJXHHkFq7tUeiP3djnIr
	 8ESAQ7Vu3vzoK9B1OQ0OgNG5JJHvMsFzSvDKK0Xm0ZD3h8x0RH5m9ygNKKVvY8vZQL
	 9MZdhousv6dlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FDAC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987692280.27462.12654834219632954656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef521f729e60fe37cbcd66915b7d34e0c76bc47b55291e1b70e3d55e260a6af5
Date: Mon, 01 Jul 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719876922
