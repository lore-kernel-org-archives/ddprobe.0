Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA4320B7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744411794; cv=none; b=GicpWRGIshrBFfB6L0kKZ5vLDUBQY9ugJ77QYv+BhtwKj+dmvcEwnTwgZTd1seYEpcuzedvuAAqNk0ReF3+ksdnVkSjB1MTPuPLr0S9AnsTUmxw+2MH5PMMZZxblPNKzy3zqpIXoGZpDxHhus9kyfSa/T3svKUyzW8sYINjTDYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744411794; c=relaxed/simple;
	bh=btGJY3iR2LgL8mIuzkiYO96kNmRMjW/1+oPvHCmLONo=;
	h=To:Subject:From:Message-Id:Date; b=MI2lfO5xto+SSQHJNz0MyJEk9TIBJG1hdMUK0JWZGzbRZpCOKD5bamPsJ7c6nekx/hUqC+qLUvP+ZwUBx1jsW5uzqxRoSYPekiiCp6m64wbQGSeeTXmDoBZufMQAKxvCEMPwF41RtbDLq6gwzEu7UwFDNRqO7acA6MSeubw4X88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDv9slVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDv9slVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A232DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744411793;
	bh=btGJY3iR2LgL8mIuzkiYO96kNmRMjW/1+oPvHCmLONo=;
	h=To:Subject:From:Date:From;
	b=vDv9slVk25nOl89NJ7h6MjuXO+QmyDfor6ldqFjAAub/QxkNJSiUoA8KqCUp3Ea6/
	 ZIMaR0YxGVB7GFG/wY+8syT+hdRy5vKBEQ4wPJr7Vj0v3K6jzd32PLrGuxbekFiDi1
	 Hz58adsCwP+Iec6euIKa+Z/A536QP+SLNp+bXkbJivamdlmVirIesLlelUJx9XCCzD
	 hjntaVNsiPQxMii6SAycmFgXb7C/kmwUN6Lds6Ov2DgGOo7P/JrloqOwj/0FJAVtwj
	 X3hkGZAwFn5MSgbCFoL3ukmISzckclWbRT6sUG3l5QI2aYh8GzFtChOgY6itjHa5tq
	 yV3ib0DH3LOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EEC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441179357.12739.13288672542716450012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61bba2d612dbd31bc643e92966ff82158267f6def8344f184f3a0057fc1c454
Date: Fri, 11 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744411793
