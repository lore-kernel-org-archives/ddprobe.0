Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F0C77118
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717411523; cv=none; b=LvRO3CVm/Uth/unIxPKn0cUF1BdeRu/IwH1DXGVhoDJgijRZw0ydvd3yzQNEkc5An2hWm/o+pKGFuH0tWqEVESep41yan6gqMsE6midLXSggWH8j4RM11byj15kNdPziQqPs9x80v6UODYjuSBpexjRgTcClySNlyVTiosnAysk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717411523; c=relaxed/simple;
	bh=cvkB0f+r4xwDpOzPsktlWv/YwhWk6TgS4u5kfyqRPXE=;
	h=To:Subject:From:Message-Id:Date; b=P5jbizmvQBhcK5vVR9VMeC7E4vqlb9wY946Fx4IyJ0A0SzieeWbqJ1JheHUPNDt0TNUTqI4AnZWxMOg9WW1Z32FehrDZl1UdjcajLzWkDFNCm3VvVO7y9tVULVI1LPAdUHUICyOz2T5tkrFyBD5JGyz6kK7P3Mh7Zt6DzhdYlPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY9/PIO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY9/PIO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04A7C4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717411522;
	bh=cvkB0f+r4xwDpOzPsktlWv/YwhWk6TgS4u5kfyqRPXE=;
	h=To:Subject:From:Date:From;
	b=cY9/PIO0iqnLQfddwQY/OZYbEHfAVDOSeQSOuV5rFyIH1VM+Qzdwru3n1bwGUImS+
	 QYfJ/1vfrnyeZa6bD1l+TOHudd0i38UGim9ZZapd3EwLpW2t0WuiTBpO0vL0whIIu4
	 xLXGc4Pm1IUJYDzk0SxyyqSTLmqhV/ruisyyN0HllGJkKAiQ6leeebeC9fxOKDdAWC
	 ayx8RpWBrVYnrnwOcc/Mt106qVdKjny9c0y5pXC3pbJTSMx+k2bQAmcNmSUU/E0k6S
	 KhuEiLMwAav+vApKk957FreRZJTzvIKbzDt4A9nv+aFSsk5Zo3Gu7pUECJ72jLIMKb
	 MG4MM8Y/9Lmfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE636C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741152277.29487.15982693398129257646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db11ab52519562d86f1141112f05a090ffea9e6cf317c8a375d7b9149b457fb
Date: Mon, 03 Jun 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717411522
