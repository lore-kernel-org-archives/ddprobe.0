Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02952140E5F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681094; cv=none; b=dABQcJJZvoEyPS8VPTginzklYbrQFd/uiZ00SoGJSFWSiEnpEJFD6lr20q0ISW4aa3+EewRLF8sJYrtwWjfU+O4lhwqidUcVBAcMiIZ8PVsT9BUO+lbqJ42nHMIXD1WIyMw4mQcFfOEsXtrpxar3It3BafG9rXS/6RvilJOv86M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681094; c=relaxed/simple;
	bh=JxRYuJya8BTvrlMjiwJaWPNi42M2/Z7klwGcft8TZZA=;
	h=To:Subject:From:Message-Id:Date; b=rXFbHtuhNbGD8BzG8Q8rHnA4Xcs9sDDIdhYlO1Pjiji1Ti4tNqb7/A1BLxjaXefChI8fWHMyldHrW5wPquYpIfdwbd2ragONpfndO8tOO8Sf/vIg9aSub58jpd8jgc8dr167oy8klk6sliWwPid7MEXQpqqBqkEbZc4cG8uueu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7blFhLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7blFhLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1307C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772681093;
	bh=JxRYuJya8BTvrlMjiwJaWPNi42M2/Z7klwGcft8TZZA=;
	h=To:Subject:From:Date:From;
	b=h7blFhLfdDDce4A53LifKWK3mmk3nCem+3xrYOCPlTE2WU3HtTOfbuY8fDScugihs
	 yucPBIyUXVXVnTOyy7cUYKWXii300sI0CQLOFaI6Dk5vPjIphHIMVLjTXGJgZd1TSR
	 9Q2S0BrQbNDccZBpXSn02n0Kbw+FvSDh40vl82Mf7c+VJWMTpWYgRo0zObirZDEwJV
	 nHz86b22xXYYRpBVP78FKvaFoqugM8cQLOkq4PjTKo8+XMIcCb72IxBz1laUka9wkf
	 Lgn3W6SjQiuGuwPrSIrk4y0qMRmA9ILGc5etz9IjsI7p/rj7ZZzfPCaBwvesUY9nw6
	 WiepTaHv//stw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120AEFCE5B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268109358.21484.10850705362956473083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21743c755ae65b4de33033fc24cfe8fd4782db25da1b7d873f9d7b4a3589d036
Date: Thu, 05 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772681093
