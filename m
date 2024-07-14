Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE2A10E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720938623; cv=none; b=fJUEXWzHXQ6HQVKOWX2ZZaiJb7cSGH8DjfZHr8uw5ggVg8zpX/TAZE4jcVzJcZvf/zFJI4V5Qa1gFYx1+QLpsPmbRZK8L0OpUEtUxpHThQjTbKhC+tzbV4DA3hhdAl+5R+eWsiLcOW1kFskaWPhQchcpRl9ShFMgBhVvuuE8sqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720938623; c=relaxed/simple;
	bh=dw1lQZqtUuTSUMXHcLQW7O7trTT07uYPNeU2II6qjOg=;
	h=To:Subject:From:Message-Id:Date; b=CV+Xxsi0EC440u2yVnB5eJ92dciiFS4fOph2wNH0yVyIDqF6/SthqBGIXr+E5D7un8+j/2+uDFaeyOALl+6RXq/HG4l83iDAwAkkCL3veRUhmZiBFdJhsG7MyrBX2S3FXrl8/+OYRLDH0XMrElplU2mZrMWnohubgWX9LT7aPco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9ZAumVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9ZAumVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF616C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720938622;
	bh=dw1lQZqtUuTSUMXHcLQW7O7trTT07uYPNeU2II6qjOg=;
	h=To:Subject:From:Date:From;
	b=q9ZAumVBAQcuKBedmzZHt5ErKwAr/5SlkxrU3dWFBKlG/DUAP91wIznGMysSFrZOK
	 NupU3til16oPIYiVfc7kOqYSMtnxX3jhrODehjt8TS0Cel7U4jFeofhk5fZbAJa9+h
	 QrYk2bihwxcgilHalONe9rLlRD4VEPZAmEwD1TdUf1bhqyJTRebt7ly1V5KR+CEdJt
	 /3DDTfLWk39k0nE54+HrtcJH8bE50Uf7xXYdn2s4kSpDnOT5UaZO6q3Ak5z87YqKsh
	 xDTAJ/WzbMSe9bgJTZODYx0GdgE25m/5m9vBnHNnoOcpbmHKW5ioHTuhH6LzIGPd5v
	 sc5lYGl/1ChqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8CBC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093862275.11823.11691910927617658904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6946a401097c0ad09769d1bdc133f26bf84eb9ef00b3f0101c86baa32e02dd06
Date: Sun, 14 Jul 2024 06:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720938622
