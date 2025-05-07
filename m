Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285E4242913
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746618594; cv=none; b=NspLr2vMJvNOqUovggheZWpP8vX8NLV6yUWZlxLCMlJVP+MH2riDYQDlFBYYs6h21rGAkUZRphMgDoxXFYk/LwM8PcOdmbsUjrQPnwBYXKHFVAnNJ+HDSCBhcKGOXn44aQgLNc4f+w4q2qzNhANVelggYqe8BQndOgDvwD4dHLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746618594; c=relaxed/simple;
	bh=enIRm+HYgp3/3u4nwbR29oFtZ7CKZG5OfioiXIu6Tfc=;
	h=To:Subject:From:Message-Id:Date; b=i4GPI3t/I8txEPmixaIyR1RkP8R8gjK9sPgkb/GDX9t0BVs/OuJnaHZDSaDC7xutD3aVYEprbSiGO/zi7IVov4QiYkCX+ioKN4MCe61ECvQ6IRVZ99Xtx51qYoNTpgIXK/apfrZjbD8cN9KWFm3Z2WOIwfOmEED+Ug4otZlK1Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l++2chYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l++2chYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCC3C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746618593;
	bh=enIRm+HYgp3/3u4nwbR29oFtZ7CKZG5OfioiXIu6Tfc=;
	h=To:Subject:From:Date:From;
	b=l++2chYH9crUGoN0ktAEEshD2RE4FdZjwfG9/LgRItZikC+6wI7ztR6W7oIGdLu1J
	 EEBkMt6jc9uTK1+MEAnEhYGYepbDw4f/jkeXjrlyUNaDbnhX3iqKhIzBU4/ZJM3DMC
	 pyjROqu3WmbkhZWwfo6LtpUXM8nf5mI5v1nPNvGP4U+LXzxxOPTArhYp0aZkGotgkC
	 CxbkrIQfhoOEAiYUyztlhjtXe7pmsPJFnxwm7nd/2v8sWtQLNrq+TgxXMhgzEZ9SwB
	 JJCYYrqvUMPr/qmsXWcbMKsM3dFp+21fqZVoloY0SNSi9nEEAt5HUBY0NTw0E9h66Q
	 9nZaXHibmn8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E681C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661859357.27870.1206815431694464007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f43e19f8c356109e9582e29a23e07aa46a93550dbc1606494f4d425a7c5347
Date: Wed, 07 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746618593
