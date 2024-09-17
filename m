Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45630A29
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726611954; cv=none; b=CsvlxvMq9s+1pZRxI48VefVGaZaKHdRbR5gCgEIYCAF0OchMnkwQQOJ9ahVJVQn+4dT21Vn5fjrk/xNo1paEdOvSzOpilSxFBqrqihko7xdtbnd0a9nJSKVobkCgY/KHWiyaL8rHTLZ5wj4zsOKCYHP4VJx7bCnXzKb/F7AidY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726611954; c=relaxed/simple;
	bh=pRzyGKdJLHba0GG2xHtrav4Vm23ph899DMrn3A5GQjE=;
	h=To:Subject:From:Message-Id:Date; b=cWHOvyVBsYFQPLgeh4kuJXrK7mKEyZI5PD8ip9hjT5RrD2PnutY6kpLAqziDrbly9u5LSv4Pfk16Nl9H1/b+VzfCyYz1/wDkJv1riPD7eB3OirqDiNUhd5NHoMjiZtZN29VMpCmJYoJF0d9kayVV3VHI3VZzIQsvMExsjPEHk10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzOqioHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzOqioHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B627FC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726611953;
	bh=pRzyGKdJLHba0GG2xHtrav4Vm23ph899DMrn3A5GQjE=;
	h=To:Subject:From:Date:From;
	b=OzOqioHON+u6n2/yeD2r73x32kWxaAi72ailXFCW9d+SkbKkPv1l02+lk0rUU3S+f
	 R2Wxp9Sn1XOQXFdrP3HQ698MusbyXF7CMj1bE40kWpjuunQ43lPu+swM/IUTOSTqBy
	 q7Cu6xiyATtdE0lYyEr62ObcOuEqYZYsnq0I62Okt8GxfTMCXAY0U+xpBuhmltpzfC
	 LDThouRdltac5qWxK7A9BVQK+NKtPkO9pnLa1TxJw6llKKW8cOJSeangjEUEnuwoNs
	 jrsxRZx6UYo5sZdB5v6P/yZirGcvWXeIsbcFGIiIstOcKJYeXOkNmKrKpppyb+DHWx
	 /BoE4IPwI+cAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A030BCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661195364.24437.17280637690794016063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bfc8fcfe3726dfcacded9cac4c153bb03e63b75aa0bfd82f26e08fa2ba24cd
Date: Tue, 17 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726611953
