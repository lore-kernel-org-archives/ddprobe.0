Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446609475
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758530994; cv=none; b=SvIdQ2/3an/KBFoAn3l84kZ4Qty9bc/+V1W/1uU329FFG6oh4lGYry2AhHaW43snIs0GS9zIRlyi56LIcnXaGJQ70svFTPMDIWRCbsCTc8Q4EWwfXZ8uv13GxjiKPiOx7uooz6eUmCk1SXgKgxqOOsyV0zo0RQYz6RefWoaFWvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758530994; c=relaxed/simple;
	bh=8M9cQXe/1S04NlF8e0G65dFzHbMZQBG76cr5wnxkoyE=;
	h=To:Subject:From:Message-Id:Date; b=I9bENmUCkbsUBAnkk54Tx42F9j7V6QefrTTro9aOYHJXz3jkgroKcz+AXZQc3ATauxFAlez2oehUqrbOD1t1wTjnMrHySpZCMsnOmGIMmdnjAXI6Itm5Ab19cRMMpMZxbGs5B5IV2PJgvd37xXKkcPDQIfjEOUlyHxv9G8K9MTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3bWL6aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3bWL6aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEBC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758530993;
	bh=8M9cQXe/1S04NlF8e0G65dFzHbMZQBG76cr5wnxkoyE=;
	h=To:Subject:From:Date:From;
	b=B3bWL6aPiavDV0v/niLI4gLz8t5Z4LkZV8piZH+usinw6r+KNMAz8slXcW/1YrGae
	 HTZhv4/GZ0PIIL2SGCx9ZWcO8Y77HWMUmpVn1oFTDETF+7omE1/B1FTrdp/CoUtKdr
	 onwzMffh7oaKU/+4jmwu4E/X/uVWWm4loEtRj56HbCDOKi98iKgORZggJoJF548AdN
	 ZKRj2HM4KVVVg1pKhXF9ZyWZdV+V+y2YryrzM+Wo3gSf40SsAHSYXRv7KkRWkKRq3s
	 1r8FTtH0og91gf4mZy+55COE0eOZIIHTOL14++EI9Q+5EahzajZEuf7ot1Vkx+B6X1
	 b+Hc/EOysljOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853099358.24424.9530429952073443479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9f6e3587e5a6b2e0907f5fb98ff644e0d54b7c0f6cc9edfa2df6b5cf070c13
Date: Mon, 22 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758530993
