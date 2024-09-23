Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A01197A9B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727098554; cv=none; b=Lc28s+APR2l4jvD3dwxKfaOqagoacspI8op3uDA7x7hUBgAsw0BI45HqfEWLIaoz2JlxkWLcrvTzVxXgsb5CyO8L53hwsCCoUvYB/7Pzace9qUfZ10PjhtmwdNMDNzmLWe6irOlK4b2Be+Ha4u+1Fpsr8yMFy3fpaC5uc6NkcHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727098554; c=relaxed/simple;
	bh=YdL6LdZjoEGtxOPxJK5JMG6obtnPHWwAGBrPy6EtiV8=;
	h=To:Subject:From:Message-Id:Date; b=aVsMpwTGU099+hEeszfv9Dx9Dzh4tvy5MEVERYijQtqnobrenjcIUqzWmUjXI9+AbFPltpEWjurXcaY823CCmRR9pC4IPni2kmUBuW5YK3UgPwM6v1uDVtITX4U84Fx7SU9EpO2IPq8AnwIu5iSSs3YcctHzQSmOo5QQ6UtP1Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCEcxafI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCEcxafI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B6C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727098553;
	bh=YdL6LdZjoEGtxOPxJK5JMG6obtnPHWwAGBrPy6EtiV8=;
	h=To:Subject:From:Date:From;
	b=SCEcxafI63COqVz6I2PaGSUXSfdmFTajEdIsVnOsH/wABiuwIqhLKsW/Nu9Elynso
	 qzJcwsLNLz2dcJbQC+lDFzjD0nC/DUdQofPHJW8TQ0QWPFSkI/ZiJBC7wlA4k3OR5u
	 hzP3akHxIC7dXM8Pl+/2kl/eqdWEcuA0BLRQeRkB5xOp66naoh1JX+XvaOKCVzbDk9
	 sr7Leuj9DOW+taoyHKYQ6NIZBjJQgIRVzY0FYUfS354AuSkWsRBev6VuoO/D05oYUG
	 YMSMORXLxJALLR2BWr/XznFKSb6+h8kY+gLquo01NgUkOQJZkW+RCuLKtVSVfWFtlJ
	 3f5FF+zjI/mtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B92CF9C69
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709855358.10118.13663352603422527184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f27153a8516fa7b70ca0c0cdaeb36df80f4dc587cf8ca02f2d3cbac6cea5618
Date: Mon, 23 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727098553
