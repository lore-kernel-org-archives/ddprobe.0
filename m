Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35517BA1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719802463; cv=none; b=AGv10QzgYShBWzc0krpyJBpADmSwMOZR6l8/AlXBKXD96CumdG2y35gMmNuIBECClqvYEr1/0+orDZmk2pQ9fMQiZOCijwXTlrJmjGP0gjpT3AcOAE65l+oXb4DaLbOlOX+lVu2Dj4ZhqBkrkFCgo0pBTL+gruz3KaH1EnCjmMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719802463; c=relaxed/simple;
	bh=cj4HnHWDPkKopLoz0ibOOmhZ6tkTLGPB76fz7XvRaGE=;
	h=To:Subject:From:Message-Id:Date; b=Ukz6gBrN8ybBRFlZzc6VSnNGV+h/QsYbfXDcN8k2A8YUy2LMy8WVUzhGq1zqW/y0TRD01XY1hfACvYeKqhvVU8txdzZ8dJO94hS1+CqZpkmS//4cbE5vwraggKziVotksHTRBec1jV4lNyLDRkpEntuxnniT3R4kOR7BC5pFodg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElKPUcmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElKPUcmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CB2C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719802462;
	bh=cj4HnHWDPkKopLoz0ibOOmhZ6tkTLGPB76fz7XvRaGE=;
	h=To:Subject:From:Date:From;
	b=ElKPUcmjhvQQAYhcyv1kwnN+H9/E/JbQ5+F5p3OJ1Xt8Q9G8kJ739n+E78+mdHV0v
	 5WNpamT4kwjt3qaSpkmtX8mMsUHwwU2qcUV/vOycue7mn8wW/ZY7Mt1nvtkA8v/pSJ
	 nv9MD5NuAzRDaEl1fMFvk57N+JTxP3UrnNK+SyUwNRd/atcT7EfLyuL+FMtSTHSTPp
	 Xd+MmARhX9KnGAVXXLmTRSFqlKJ2goPJCSi2plnef+EjoZPfK+dxpX0LJQpE15TjER
	 +xNhv+kQWF2+rt8b18L7SmITzu608Ti4oRW3QmEhKAGyyDhTmstcdivoPRSBfecTPx
	 S0/xfhuqIHw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF92FC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980246277.24478.5628837736607430614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47853a868c6952463e443e1cc399dda6c02147c47fc7445727ccca7e473b98a2
Date: Mon, 01 Jul 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719802462
