Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5E41A23AC
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757241594; cv=none; b=deyfMdDn9ter3pPW1DrXaRpIgIaoHwRrHCsw1Nm8V/jQsbCYCjWC6WlbKIOQBXU3hX7PQ3VbQ4ZfZf11VCQAb7bOFAyvYXrXwqxDxKuYq4ZnUmqGDLws8nI9yNAvCE96D+s8dNGCxwk/I8cReKMRcpCieL549s/vD40C8JeNKx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757241594; c=relaxed/simple;
	bh=D79lw6sHpOhHxKva3PQ/js8DRfT6P4uh6tgT8HPLprs=;
	h=To:Subject:From:Message-Id:Date; b=bVOQ66RDhSkStsk+FPWD7K3+wYv61DcmR3CWqCYZhOtiQRHME3zGKSYf2cANpI9vga9ZDXkSFsUAaE7R8ENhNtJv+2MRwU7Z+v3YMuyAJUv6WzQ/rMNGT5epfNrWX2erGXvcI0NJId4iUKj46klDdkIvyr3uW7iHJvQnMZIhHcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhVnGLCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhVnGLCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43ECC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757241593;
	bh=D79lw6sHpOhHxKva3PQ/js8DRfT6P4uh6tgT8HPLprs=;
	h=To:Subject:From:Date:From;
	b=DhVnGLCVKsRYJJlTW1kkLYS7gPfQyvuCsidTzE7TK4D+IeWxbbHrDiwp0g4wuKwvn
	 bdH5BhYrEat+bvAlY4Sw6F6NJDvAQeMVmpiTBB9jyvAk6RJyvS88Nr9P6Jwoy/mclc
	 +/EPJtrCAbDrHjUCi4tmCfF6Nq8hL37gUeUcD9o96W3FOYyIRiK+M2R+uroB5hXpmZ
	 Jp1EhBilgSbWt2W/xVEmV9EzlaCg0ALbcDTreTK/SDc7wERcEFbRi1WqYrD/zvi/KY
	 FW+0AIhE07TghEakOdf4V9RuEF7gM6FVWJE6MWT66D/f4eLkmHjKQQ+/mhCzeYg9oS
	 R7Q0G04GE3IqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92321CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724159357.6490.10306145093461512089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ada3d91a446363b55a2a0516d095cd6d0170c874e182696ce5507c7c40f14b0
Date: Sun, 07 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757241593
