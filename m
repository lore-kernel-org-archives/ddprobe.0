Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771C39DBFA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778707234; cv=none; b=sBM1EGFdyXJwZmolBIuB68378gG1bx3oHq4A6USV/b2An7SZ8uoMd9yeJfQ6bBZUGYM+DY+DdBqPzo3O6oM0aubt0BqipL/LjCGy1B8mABv72V+I49WPnK4bYO/5KX/Polvr0216Wa4M4OJPBrgkHMbgvXpJyTJqcqcqfKRXNqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778707234; c=relaxed/simple;
	bh=LzKXC7MtpVtFSvzhp/x2IdHqH2fxF1J1VKIwQADpxWg=;
	h=To:Subject:From:Message-Id:Date; b=LxOgEpindf8+CLGoYbFmdnlj8WqYYGO6hf5hplGJmQ1eeY7RBAlucD/aPTIJ3diGCbQxnZ5SrbXPZ/uFCx0fcRefrc/t2jOo4jNMLn6rR7YwODm2ThlKdbG3Volibx6nLYFGte/dhmeMmfX2vbn8KLVaAo+/ei+hBXFTAbrBIYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McExAr4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McExAr4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C624DC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778707233;
	bh=LzKXC7MtpVtFSvzhp/x2IdHqH2fxF1J1VKIwQADpxWg=;
	h=To:Subject:From:Date:From;
	b=McExAr4ms5RnWIvGcemIV3LEXGvsZg0VKvMKuAD13pPvQnsyOHZE30BCaO5x9g08W
	 hqHP8tMK+DyIn+jGS8Vnd3duqFsDIirXnehEJv1uCLEDdHbXOnv8qq4y+Q7JznmPCL
	 ycf5vKxuAyPiHJ2saFPI8D6u5jZwxpckbVOKSPPRi87xyZYq5XnXSuuLuRBwwcNJbQ
	 6cAI1tvfVvinG7O99EwfpM5wvs9+tmxZrCf5OBmR+GdbU/XW7f1yqYVmojxG2iXcRq
	 VNQOvYj9v+IwgUTz2Um9NUrsoGJD6ysfePpMp4m/ldCuAoU2HgYtpLWNZNgBWrM5ol
	 9wWC2w9X7ClLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B0CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870723369.12154.5541143977618156908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e7fa1f057822b4833d1c1daaaf1a8393d08680fd3258d3fc7a9f2134be808c
Date: Wed, 13 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778707233
