Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBA21A458
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751014194; cv=none; b=Xas3pznQHtip5TE38HipfDC4FV1SHP26oAGuBbLQKrcBm1Qnd8RoRBa1DoTxfdqlf2yzr33QHjSYbrz+yv2Dedea/iWyk4sV9sSccunXQ0KgL5cv9QZz8vaQkHfQFJn5vDP4DsbJUaIU51nVca638KcGF5MVEpOyCaC96pSzOo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751014194; c=relaxed/simple;
	bh=bv6+q7GCdHCxw0Z0lF7zUg+EyZm9UgbKSXGxiy0c/k4=;
	h=To:Subject:From:Message-Id:Date; b=OhBR7W4+ZbDbhTBO1ZAZPNGXC0RkEpqUS73O9N0DTOVuK/E6OJdQwiYx8+0uOpiYfYIoX8KLhKxlGb84Ox/6iNjz0Ma9aL5htzSv3npdugyPDDq6WFeEzMCHDni3REGXaAFEo3yabbFfSJ0mqsKq+N8MqqQp52+tGg8w/5mbPHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUC+mzmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUC+mzmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751014193;
	bh=bv6+q7GCdHCxw0Z0lF7zUg+EyZm9UgbKSXGxiy0c/k4=;
	h=To:Subject:From:Date:From;
	b=OUC+mzmIoFjRSBK2S1HZKwz+XQgpvhQJNC2fJhA17+yd+Q2HF6LjONKahX6s5MBB8
	 9MIeZcabaO3Zl+pySXGG39belKhwDej3a9wSB1l+87A0xhA+9Hj7VC5a/zXUPtVzoZ
	 xQjZpZKmaIXKQNzn9y+1gCj6G4eQ3iYi5HpeYs/IpxBzkYbIiv/wTO3Jg3fFcVqLPU
	 Ova/bQAHd1vGnfTqtr6BN/FGJ75vZvWivagkIoOfBX0gUX8HFZPt1K5LqSuKNB+6G6
	 GFLs+YXIfyuGm7seisJJwZDGOOLWFiYzJv2bth/uR94P55Q4sUElMYvVZXqH6FNYvL
	 N4uBh0yYgk5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90730C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101419358.19242.12111004584000905658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58a0290ac7e6fb1d2397a0bc5bd6381987c2b529980eaac6db99951400d1dfa
Date: Fri, 27 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751014193
