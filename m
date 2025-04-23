Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E927CCE1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745417995; cv=none; b=UpafzZNWn1jky/ZlxH6D6aGBg/kV4TPJMTzPqKfINXqzsufbNlgZpku1hax5V5qoZEwqX/cRuxXBz/d7bRPvc+bNQkbEaIVpiKd2CUhpMOn+R+4naDqRI2uOCn5uuiu+IB16gKBkYFc0JFbNzvqz+TVEDC1uOuSBnMJgIRRYNmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745417995; c=relaxed/simple;
	bh=jlEAvPDIM25qdQR1eUR9GOeZLSVzFWZva0HA2iHRX44=;
	h=To:Subject:From:Message-Id:Date; b=RkpJQmE9dKp6LuVtzSK7mMrdv/c1atq3JUKSlm2y4cZyU6l4zUZlEUvrEltMoIA+TLtWSJ1A59dICjQmw/S/SS3bIAxboeRYRzkAGCL6inljCW319CwgpBqChTzW5PGb0hphTTNoUwgSYge+VonIGW/7WxjPktR8hNhNZ9Z77Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffdlnSdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffdlnSdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745417993;
	bh=jlEAvPDIM25qdQR1eUR9GOeZLSVzFWZva0HA2iHRX44=;
	h=To:Subject:From:Date:From;
	b=ffdlnSdUsRnp+KX+LWxgSlB00K9dBrOuezZq9vBcdOEiOi55k2cYl9JsT83x2Mu8+
	 ND+vzaWVdUezUcVsCEJ/qC02Zi0A0mG3uHOWOxbRfw1myv/INWMTlX29RGhQwYKfr0
	 VeoL1G16RkA0Us4TSmDoFMQZ/gkbYHFQc3oRY4A1OeBKJmO8+RRX0g+y+B+ZBmGY8L
	 Pu0jSzeczb29vYZMF6m1aHw8vym748vvPx8LLXNeXrtmRTF7UD/dE8DFjy157H7f+n
	 U1xCylc3xWk/LEJlcCQ7VK9Olg+JSHha47yFLhrRP1ijYhHbIPE4yeo4vG/nn49xh6
	 3oE3dGfa59SjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E5C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541799357.22570.13754054503785617589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b147b3bde520444b2209a83828860e44b04d056c537ef5a2da1a389289cf3e7
Date: Wed, 23 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745417993
