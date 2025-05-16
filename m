Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEA01D63DD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747357194; cv=none; b=td7Fv0Ay2hV9r8zOKj+hh62fX/m6SvBJMXudsXhPQqBQA4utWqsxyiRj0RLl7YTkhrzweZPVExhNa1l/s0l7ayKjcxSyR4d5cx6nm+EgJTCkKFox6dw+4zcQzDZ4uerBaoMOi9byv33j9bAMt15yaazzDI0T0LGJE1v0rK5iOqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747357194; c=relaxed/simple;
	bh=U8KXxYCP5SedGHuB4bCtbIPJBmzWQKZKKzo4PkYiHBw=;
	h=To:Subject:From:Message-Id:Date; b=getEKkn3q9hqkMWTSngpLCrB9uFZOSigiWoV53uralVU6LtGZuKs06dxKKrrI/pzz/w5hEGKUjwqSU9je8lvgY5A3/KiNz4tKlkLRbbgECZSeWwX/IUfVPhipv8VDuTlydnP1Otasc3FkUeZPCmiEU51XarDa36fmBU58FjaxIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZN6IEU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZN6IEU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC55C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747357193;
	bh=U8KXxYCP5SedGHuB4bCtbIPJBmzWQKZKKzo4PkYiHBw=;
	h=To:Subject:From:Date:From;
	b=uZN6IEU/MCdxNsfiXd3gYu+pkvjorqbowLZLzSUOZHjNi+SfgfozX8G9iL4FPo22i
	 cHsvHFoplHs0w/MnpXtNWjmqI3CHe/lmMr5Gc588tcp48tM8G0prJlvCgvlrzsciFy
	 G+0XKFuzWU+qxeUciILkFXmEQAoXKN1brHjtNWZs5hfTZyRBSgyo8g4Rn+iIGgjiMn
	 17dDnvlE6qWhls7dRQpWPG/5V4vvq8W2X6i1EQBQHoFrX+ymWFzWYIkoWyeWzl6sga
	 6WzTZQTelWRFf9gpRr38Kiz6/dWN0Bd5PzSa0lsRQX1Udi/NUMWkhiP02G3RlheJWC
	 jXfmaPhQ/ihzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FA9C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735719365.15277.16604292447924174229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a2c92b7e1a513ce1e1a3481f63f0899d9c811f72d27cc7aa02bed48798c89a
Date: Fri, 16 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747357193
