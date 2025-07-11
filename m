Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FB3E555
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752196194; cv=none; b=ZhnMrbHoc9Vmj2wLX/fAuKNwSKp1QoOmz4Yt9HcIDAAEqZgPykc2a//ZSEmtBi+ZHrkKVNH7ckc7XZzhvr1GnxzV5doAfbR7sEYm4ifxDYtm8/349f3z0qLwNuwdolzXvsQgz+d8UvEgF5P6v4Ugpo5f1U+XGzy9Ln6NZPaSLjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752196194; c=relaxed/simple;
	bh=EWCfvLO+6eAEot1EyGyYyGo+4fj+mwMHstRz40FX2Pc=;
	h=To:Subject:From:Message-Id:Date; b=AJZjtw1lfbuFh3xocQQAZuMvH98DkhBzuA4epEVhW/BIaJFzFxYO/d7fkD2eya8YQU209LiXiarPww7EXWgo+DJwpGDES8jxrEWwO4mn8RNc0D+FmmPfUk+tgxsMkDN5f0g2zvNJOpUMf3lNeq9QTezUmcH+Ox3ZeGp0PYrf8g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkxc+WJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkxc+WJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EAAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752196193;
	bh=EWCfvLO+6eAEot1EyGyYyGo+4fj+mwMHstRz40FX2Pc=;
	h=To:Subject:From:Date:From;
	b=lkxc+WJEq+omYaRffLsnhzABEQDcCqitW3vGNxNqMiMIVOXpJ6mTDQysCJ5eZVcoy
	 t9rtXKkLVW1GM9t58IuOnzn9+LEQgbVrLonGAlr741rmVIpFz+SNpJK/ly08MmxSTx
	 /VdQeiRdauIRxcMda0WbpPTTeI6XKer1NXM/uRieO0qKckaONfsCescy8BTIPEgTAP
	 V050oLWV7mZehIe5anBMB2XSYRwY2Zvws+iLCxJsSrT6qEGfPpkSOlBdL7Dw/p/czs
	 p6sqs+oXWxJN0OhHue8LzuGHGR3C5ld/vcniVC+2G9eu6WlSfbt4X9xnVETjDRQk4r
	 7vIHKgJfQezcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94265C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219619358.14523.10609302698076842835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96df21ec80b5ddfe43eeb2f3834d602f4f9761a7a810b727fef2b419f9a58c8d
Date: Fri, 11 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752196193
