Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B43231A4A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736750154; cv=none; b=kHD5BjCk40L93vT5D6S6eM5muLa4z6cuGucD69pXJWlhvSiHNv7OhZCOqJqD748Rd0zPu6jECeLL+SpZxmCB2tKZ2IE4DJnEjfSUNv0v7Oy55I421NDfUExKdUzS6QHtkkwF2xGiRLAz6bgiFg30SyvgOXJx0BPv2JbVy0kOjIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736750154; c=relaxed/simple;
	bh=BPr/eiXdN7fpjCwKAP8bbM+hoG9e2GnTXO87/7UiMdY=;
	h=To:Subject:From:Message-Id:Date; b=tTSQ/0bn5eC/17xCtUSlCukMaPTJWo4imvyIP2joQfuHgEAu265puN1z9cCCw7u58UMkTAQfkgPuIQRdDzaO7shaHLJWWcC+WfF75L49PTouGxGgopwe01EtxSICJqhag3tY5hlr9+T+7zWEESzC5gaihZo7dRkOqQrE8RXWZTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMObd/Js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMObd/Js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF5EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736750153;
	bh=BPr/eiXdN7fpjCwKAP8bbM+hoG9e2GnTXO87/7UiMdY=;
	h=To:Subject:From:Date:From;
	b=UMObd/Js+9w0JEhIzIEjBOwOtmOShZ1UzKIrgaDCtSDpocJ185ff5biN3rWR6gySg
	 fOrux8rLS0Cn3v4LY1SC2nrHCId+Etpz8pfc3rTKFOASn2Juqw8kg7H2GSHSgBeG/7
	 OlsL6Pq3jkFkiSA1XpI7u1AAXLzvsRrGL7XxFw/7dd3wXJh6YZqAXiYdbW3ufR5BrE
	 IaGr3AK8ZhzJEj8e9ZbHvPIfY14/bd6SMsJYVbnE4aZqdO3UJaW0SemT2hhoJ0kTul
	 UzsZ3iQQabItg5I6XJojKaFMwEme6m7yrqonrJR32dt6E1s8+w3fQ3sN1yC2kkUiot
	 ua77Qnxyx2MBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA1E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675015358.19882.4165349518106407484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2b3eb817f2abe28d56321c3be584889cbcf7016132471244c21aa41feb72d6
Date: Mon, 13 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736750153
