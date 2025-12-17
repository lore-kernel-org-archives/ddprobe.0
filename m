Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2695E37A3FC
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765985634; cv=none; b=pMS2RmlbtneOGiUoF5uuC7jNZJyHniid0A4ckFuwyRGY8eARsH3F4ci4vq0ZI5PPttkufQNV40QN6rekFGCxAfXlB3+kwVrW14KCdIs9XcyS4xlBeuFqjB6AYJlcX6zbnjkeyQ/HgFMJ5LG+UEOF2TpASacsVXjO4BY0PFZpkhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765985634; c=relaxed/simple;
	bh=leFIpm1IbVGgUX4lKZrswAycBup9sJY8QkdBPp17n9A=;
	h=To:Subject:From:Message-Id:Date; b=gL+dSGqf5wSz5MCJ7UXbHLXB4k+EM5iMGWdE6qbt72wipWzJ4LK+EOS+n1+Y4Kd1km5tX2HEBzz8ibAMuRy9IWlodoKQkuzKOig0tW9T8dNB800846Hdn3Fkmtfb2Xm9i3q9+R7/bRhFxzlBHSCyrUwXXuB3FW8dbmpBJuBQByw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT5PR6JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT5PR6JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07DCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765985633;
	bh=leFIpm1IbVGgUX4lKZrswAycBup9sJY8QkdBPp17n9A=;
	h=To:Subject:From:Date:From;
	b=pT5PR6JFpZefLWv1HjCFuPjmYRLo1GyB7R00plGtpKhBm9QVSGeAj1SUvRKqtMwm3
	 UatUQLzcn54dBtdv0zFHWQY57+m2YxSM1jDsoOK5R81ax1J2/WSdKF85LC0/HK8z+T
	 KjbfrdQN3fVnjWmsNaAp1wa57rfhAV+BqjWz7VYNQ0q6nkNWv4DYyA1GZcOiRpPLTs
	 rvGo5a0fN9nl+WZJU0uM5xJKI4omAMxbg1d6mjU+lpuJRhmSUXL9IeL5TEgwZ7GYBn
	 8WyDC/XCYB+prkoGBgzQBN7MbuT4jSN1vb0UFf1cVF/JvwhPILUkcNv+gDGSti6bZo
	 lVR77L6oURTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D160D65C66
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598563363.2816.9597211660782805274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f354976d5acc1b8cca7a0121627c930a6622b6ff8cbccb9df72e7fd628ebd221
Date: Wed, 17 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765985633
