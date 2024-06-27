Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6373914295
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719458603; cv=none; b=L9LCTrtszT4ueohfklPi2WQgwtLbgO2CaG377umk6p3x3mxKxOfcuxxVG9kIVomfgvuW1mKpqi46wG8Hg8/oIkM9oJVY6ToDdxx+KtU0GKaK1gzfyATD1KYzPWbnNmoBBFCrtrQarQzUF3HYdW5GsoKpLn61HrSeY7x+6YwbDrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719458603; c=relaxed/simple;
	bh=SGFS7zw6D2XmKOkPfqYGmJ5EjuLlLp6TctDcQvQQE9g=;
	h=To:Subject:From:Message-Id:Date; b=c++ueA7ML6aflrxucDynMV4ixqm39qepcIKxddwm3N8mfaCW5Oca/SPeoyiGCkdVrxWtX4uLlpptukjF0u3FuRP1i6ycYwu7Eog1ec4uiUXTWb3U3g0Ge8rr0247HyiJ0igDHmF6mfNw1b5/Lbse7GHj63ihMqmUpnR2to37vPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeEkC+Jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeEkC+Jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5929C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719458602;
	bh=SGFS7zw6D2XmKOkPfqYGmJ5EjuLlLp6TctDcQvQQE9g=;
	h=To:Subject:From:Date:From;
	b=SeEkC+Jk1zDewKpF9jKs49ZP7pgDp1feXvzBBJip9KWBEK4ahStpjATqsIAYCPpyk
	 odFc6uvZp+cUafboCPsDcalS4KUxrVZHoOV2/LcCsgyNS0TllLbyKbDs41FhNAKNUR
	 Tf8c3Prx4wNXCkus9zIdm6ft3tWGhaZPK0nHwEfzR0Pzy09bulcZY1eqNq6iDnuRXd
	 3hKBMv0l8xRQRgz0LqBcqO2439YA3Z43UJHlEy1hqx7Vc8WjolI+H78hn7/wYlWXZw
	 mItVPn2qVvyyWUHJm45kP5hB0t2NZF0ql9L0+WkGCLaRj0q0kiiPX6xmsixSkGSy+0
	 j3jixgLK2BWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED8CC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945860277.18271.9038224085031455492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb20885585fa5dce815858b71aeaad087b32848a51ce04eb72f71c632900f6dc
Date: Thu, 27 Jun 2024 03:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719458602
