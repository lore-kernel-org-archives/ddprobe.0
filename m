Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EAD21257A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762637394; cv=none; b=tyBY66Kt5/6fczQrZXW42b7pOPDTjgfa3Em7zrKaoRae4ZZjOWa90CJDswUp+Aq/3U/nATLl7aEe22MwNTSt/apWv852w/q5XuLlgxOWxBCn/+0SfIREyK7JhfrMBA5KgPnlfPP5Lft4tbbtgaDHloGa+c6SJ2fUXFEQ/hXxZZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762637394; c=relaxed/simple;
	bh=Uh8Lnr0pY3YzN6my6xqbbG6Pte6rVqSW0l7ohpxUVyU=;
	h=To:Subject:From:Message-Id:Date; b=STULOU/2W5kU++KxoFr8cpE8HPtbzDrf8+k583wuER2xV3LZwNio8W4SOYCoMlUT0YkHhbylgVynxRUxsKfMz/b7uP9MCrGFFb0T3Cm3Y7URp1926H/dsjzFyPmor6pIe0JVrVgHeDzMtHeWyTbCMOOfnIquW2hMuZmONACpaPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJTy4/sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJTy4/sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0C3C19424
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762637393;
	bh=Uh8Lnr0pY3YzN6my6xqbbG6Pte6rVqSW0l7ohpxUVyU=;
	h=To:Subject:From:Date:From;
	b=bJTy4/sWR2N9dGRDgIyvJT+rWEIkmdkagHBEoEpbUIF/NgOen4z2V8AGWyEbxCn8G
	 i3tUkR9TVytLr3yoIqMBGgf9/wj9Ciu0X7oNPg4IOKRw3pq4r+38qAisIxNQhNgK9G
	 kOkg+9Rj9uzpdtA5NtqwAyUXCjN2M3QKl+A8Lf6SwZjcyVPFtxZetsy2oARQ60FVvS
	 CgEJEbhG4f/S1roOQJwdJRHbqzpyK+5Bm+GGbtL+EHdYKFU5RZt68d48c1MCADV8N6
	 LB30BwNC8PcE2/EPz5/uUS8dxFpc4dIu2dfTEPM+bjPjDOV3yNo1yNLAmaDXyGzWMu
	 iOdoqBkjCUcYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263739357.16917.2308433924189714235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ea0aaacf7397733ff7fc0fa8796f9689a6caa18d1f6c917ea56f83ae8fe2c7
Date: Sat, 08 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762637393
