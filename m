Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4B76BFB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720548383; cv=none; b=EelzWNHjwQ+Qw0gD95T19kqbbZcvDakmJyXR5frvOdied2zzK0x0QcOQ8DgFT5ILGGQgw+1r/gipy7SifbSt9BZkv7g/5Qag9/o6zwWu9BbakyLiXWymOjV8xa0BcvJ4fUCFAYBkw+8Qcznor+zoVHTCaASyabeNUw2y7eDe5wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720548383; c=relaxed/simple;
	bh=xQOFU0ePQTK9vuNw7UXKvjZJT4K1adfL7O2vjZ3Ctk8=;
	h=To:Subject:From:Message-Id:Date; b=Vywq/JC2+Z3j/u8swQr/QHOgp+eqpm1bN4ThYUgyZlb8HpN6JprKLD+UZ+T4MQZy2HQuAfFgKqFC2J2wlDvQUKiQs+kiu3H0iIk1gAMAvfG2X5sSTMp19WVRnhbsWSrSsZPekMUzoztaClpkgqRhmb/5iZGgZGjYb0Zr1gfM6bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHEdXQez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHEdXQez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A95FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720548383;
	bh=xQOFU0ePQTK9vuNw7UXKvjZJT4K1adfL7O2vjZ3Ctk8=;
	h=To:Subject:From:Date:From;
	b=rHEdXQezMnC2XF8EjmOuTsy9BUqna+SUh7CUlzZAoxhGOoqCK2j1yj9XB7h2yBjDs
	 JmiYdmT2FJsXP4PbCzlwXKrz2+I3Sk0Yzux/hcOtBEQKNeFzBMCPm1FuYQoDqa2PRh
	 v3f7FzPRCN38Bxx4z6RmOEcjMOIpxGKSuiMXn37ETSF3T9/myjnl21tQOjQopZ2BXx
	 H1l+/1xb9oC9DPO4UD2EyptEYgXkVKXOyfadrDdgqrwgXMF98q4as1Xj0CGxGBESXR
	 1lQHJTMvwWFkF8H9hRK+9w8z9HM9SHlUrjq8DrxTHzItEmcHE5q1DviUK04FE/JV2W
	 QkKnEBjzQAj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7814C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054838286.5539.5343061845744306905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00786ff3ce97a44f66b502e51b14ea6f6fe2e44530d0228b482c7646d553d73b
Date: Tue, 09 Jul 2024 18:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720548382
