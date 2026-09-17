Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D36A3DA7C5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789626034; cv=none; b=s9qDXk1U6U4FPJru4Ho0HZpBm50TlHJbubUSfgFfpAAe7xzPKYde1nDb/h9BtdhaVy3W5BslWHHOW2CwQMeDNu5RymfK6de3r+4bPqqQ6nJLK1pzCjWnc6vgtRIEuAI5Izw+favzMkiU0+kC6/B6oo0hqjKkB5VrEJf/2oz7dPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789626034; c=relaxed/simple;
	bh=zaoB0+B3WZD0gMSW9oXtItu4lkL6Gni+sBUKCeZ5XgQ=;
	h=To:Subject:From:Message-Id:Date; b=LpI+P6M9lba+r6l80tMrlIzTN3ZiAcjVA4dZQc3QRETct0A7+m4nwW8FesVc5C9Q3J/r6Zyji6ZUYefr+Jj27mHWFkOX5hUdFSNM5CnCYkXtblvfQiqNndntMcJxuP5UkuOqOz+V6tM92fk7M24zK3bjsMVHAqBE+n0N8dK70Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T++4aa97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T++4aa97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789626033;
	bh=zaoB0+B3WZD0gMSW9oXtItu4lkL6Gni+sBUKCeZ5XgQ=;
	h=To:Subject:From:Date:From;
	b=T++4aa97bu8XxKNMUPwrN+f2IfXGM8fUa2S4zYczBFeAVUbxlrGDAVL0qfGYzt9LW
	 tctp0cl8jM4+OTkJUZTJWeDbaYBs/GXZUTqKbauISyag/4OQsh44vrwjC6LnA9iAHW
	 kUvJLtKGrzJqtSTxiYQTAi7cTzB0p9XgdqqHL5NqjOVqBaeScbn1nFh/wgDpkL03w4
	 x/jgBoLfIPJa4OckT/7BFzO/J7wwhQSkxtIpSUWRTc1aIpDt7u/wlOfq7yoT9UXYON
	 ZSgEAMEiGuwMBL4UhcexltPdVaFkqlj4QhYruIceCet+RqYRsCufMh0mJupm+3/OGd
	 /4W0nVOe9U3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FA3C982CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962603372.21415.5767357248687556543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7830dcf3c039aadba65da9851057dbf04593fbf00c3d7991005175047233f06
Date: Thu, 17 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789626033
