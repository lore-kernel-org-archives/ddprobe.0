Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B761847B
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734318354; cv=none; b=OPwSnH0RXhBhBqPNYCFgBdw30Z0y0K1mM32bviXOiZqLJNXZhAmct62uqKcjnxHe8dHvmcxw9LXYXOcNh2uCsg6UuohFsoKsPlu0nP1jF21a1yUdj9fTAilg26VamUx5YoKVNhQxGtLN9b+H78bO3F9dnMgb/y+oZkaVMPMNKsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734318354; c=relaxed/simple;
	bh=NrKLHp8GHFuWKIeRWYoHq6gWDNPzyFs0xjWxq2wCMOE=;
	h=To:Subject:From:Message-Id:Date; b=McPO/ifNwEBvTuQ+GcT7FfPfdkfy1ppjUh2P7xxarO5A+U6fU5SFmQ7dk653b1vxK647puWlSmFU3HP4WKr9pt9yubvjvYyuzwKqKHg2y47wR7+Q7w8DImJ6T7eIaScVerUjoSfdxQ75uEdCkIdqQmYrS7sUigudhgvtgJarbfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq7tM5c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq7tM5c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87FBC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734318353;
	bh=NrKLHp8GHFuWKIeRWYoHq6gWDNPzyFs0xjWxq2wCMOE=;
	h=To:Subject:From:Date:From;
	b=Vq7tM5c2JkthZKQJsTecF0GkJiWdB8Ttom+Z7hTt28rEVrwCijYhwHudbK54ld8jK
	 uTfmEF1lQpjTvTw9r95lO9CNl5kEiJxk5kSQzbf7YHggAd6qoajHCZ8ZUug2AByzwH
	 kfgiil1vrN1IMKVWWxdGUafxlwLMhIl9u4sw78guB4+0HMeu5eUH5vHNMSFMQzbiAo
	 osyHfIxOWCc5X6vGJ4ep1XPx2hWG0SUCJdPCQeeDTF+ndZFBwOkFCscR4fmz5taA7V
	 ysKEuUfzCYMuE45zT3ppi/8yBSv+kk7FjHR36FaJAWcQIjgEbV3M429IRH9zNPSCX/
	 14iL5UwHYV9Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B7BE7716A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431835359.28929.4967634973605304483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967c313ae43eb10c240d271686ac53d1f817b9f5d175e3bc7ef27bc55bd9cb7a
Date: Mon, 16 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734318353
