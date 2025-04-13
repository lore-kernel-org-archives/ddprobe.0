Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564A6196
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744525194; cv=none; b=YD4wPycTycJU+Ce4hvr3kkiYzl35EKOx4fSMU8YH/5elJYBoTxAoXVkrkXb6yYVpwd0n+7bOY55qyroUbrSwRG8bgvBZBQqf7wrNGJXhVHhmCgRRvUJTDKnW9kJUn5L4UMJ1baBQBPqOYKRgi/ObeQrHbj+udtS0ubIOKu/bfEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744525194; c=relaxed/simple;
	bh=vHTM9bX3m4cxpjSYU1xEDcr7XSsDpNIo0Y38xQaaO+U=;
	h=To:Subject:From:Message-Id:Date; b=CdAGvLohyPqof5xc9aIhTSXbmWMyP2Ww0GqecbIOpNCNdPfP/GZ/bMf2QrE6BQ3aOnd5nq6HJQIB5i+oFeaiNNbhDKBifm3KOFJKR/noWw4/hqy4b3eAXIYYXXtyrdr7OteQTnUstyOrDh8fJJyxZkIjJClQoeCHwb2BrLhsbFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3o92ra8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3o92ra8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F5DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744525193;
	bh=vHTM9bX3m4cxpjSYU1xEDcr7XSsDpNIo0Y38xQaaO+U=;
	h=To:Subject:From:Date:From;
	b=X3o92ra8H2ieQ/oVLJDsT+RcZekngpIK2Wfk1/qZz0achjUJWc1duqv0aRUVDo5MA
	 7RPeBZUuz0+405n4x5vQRBKRxBCPQfmzmcSB4eHjs+o8n74076c0i7QZT8D3IydxW5
	 ru3kXK0RVgF9bx0VCrTPtbtDRI7YDEq4AK2UJyW0YS2vgPJWigr9edo04x8ZnVWlQZ
	 r8aLW2VoozfkhaQDsPsa4Hdoliff1rTYH1zr8OO37H+rH77CP05VM7pyUxODg5LTqE
	 u7at+21Cd6lHGIFuaPAdX60hVoY+XQGyDxPFRBHnto6pKb50OoGCPg3kbQdq27Q5e0
	 aZqnMpe38kWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB1CC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452519361.14020.3947804289103573869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80501f5977b8e52e248b3fecd77b9b55648c16294945a99bfb2c9b51cf291012
Date: Sun, 13 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744525193
