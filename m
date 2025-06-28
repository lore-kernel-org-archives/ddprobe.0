Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B012B9BF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751080194; cv=none; b=LmMNl88pQal8ThJRJCfJhOQ+NaI3XPO1NhoahnC8Z9kc9kdoum/MHg0jUCtAZierNoCw6tiLhHUUiulbu+035Nb/SsFCnNeLL340PmpjNhIV7XX0wQFdgEcHQgNlFHFatblluz14dtr9rBWnoxKuUvFFb0eHmXTcWibfSrIFwGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751080194; c=relaxed/simple;
	bh=M4NfEhxn1gvC9ih3i73seZC16qdjZvLK6mB0EiMwsOw=;
	h=To:Subject:From:Message-Id:Date; b=KiRE4SmuKffdOPVdbztlV+Z8fumP7AuG1ICmaE7TKXZuz/+tEfqjfFc0PqNIWuXt0GHjEx9O+BlXDUOREhtIUDj6iktcKH9JiLHoGhcy8DRKDADe9DFv7OECsmv43aUOnkqbErhqCz12JCxspDyO2F+DPxpY5Vg8XwpuSqQho9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxLw4lIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxLw4lIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A29C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751080193;
	bh=M4NfEhxn1gvC9ih3i73seZC16qdjZvLK6mB0EiMwsOw=;
	h=To:Subject:From:Date:From;
	b=LxLw4lIXcYtCM9ZBG9wEOJLY6x2u5WAAAETTFBpC8citllBUqveXJ7haiOTdznFFC
	 KPsAeW+HEv3c9+xFtjCRYbcUYiFHQS5xzKNQY7uVjCsx5XnstS9nxAvaluQNmCSJJd
	 H6fEaGcTDV3p9s8/1NwrVxDeoMKfuMub81uTFEQyTdTZ1JWDMdxYgGQZeGc6yZ2APT
	 NSgrnVcfVAxM6fZzW5IoOvrispEe1/hV/wN8K2OUd02AHLlKIidQ4Sr6cs0UxiRgYQ
	 kNJ9i8ETtUX9RYQfGmoV6B2tQlMrY8dW3R282UvAJYuDKZe+nFjsFok5UpHkytrisO
	 WJg6NX0y8M1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C14C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108019359.7506.14790859831889137885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1404e433f213c0f5592898333af801928f33a2f0cbb8e361230e751717e5dedb
Date: Sat, 28 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751080193
