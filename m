Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2604C18871F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754674194; cv=none; b=iOEWkP6BObK9tdd4ZYP9V+NPm/OIWPOpDssHNSVuTQ3V1+UXjsHQBt5ZpyP+n5M5jHkJdv9ZMjFrs9elAe72RP+WxWdZdoYNYIzEX21S5oI0AzvNwsQuXuGHo+2vpvFWiI2wC8r7lmiQVyi0TL49Ko58h+JqQ2X9/n409+cA8zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754674194; c=relaxed/simple;
	bh=I6y1QFftsu0ors9Vh8EK3QBMgrwfYMEUXrTICthiQnc=;
	h=To:Subject:From:Message-Id:Date; b=jsCYN8YuoNMPRlg/NtlhXC+Ic43kE4GRm4N0zwlPNnpAl/YnVp9y9Q1J3UNIrCujPZpDDTf2dnKRc1yKUYEnGLPagLI8DjwEgi+OewMNzw0eMYcrexS6z2XynPiXPtstUNiO483BqUcNlyMDn7p964brgdAO+FvXcdSodme/kvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/htO3Ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/htO3Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754674193;
	bh=I6y1QFftsu0ors9Vh8EK3QBMgrwfYMEUXrTICthiQnc=;
	h=To:Subject:From:Date:From;
	b=k/htO3Ru/e/leVRy9mXFmtTl37t6dxvM847Lwn/XJDmLuBdI1xOYquNBSdAyVqWMv
	 v87yFEtsUMYwgJu7/3Vd0bgMOoyBr64QWOf52YMnC2oPuznPvyszhkYTb39XAllXI8
	 zjc+UuEzFWI4VNwc0WfOevVefXUFJRNlWL12YOobrvZpDQMXKAYfWs8uG7fmZjAi5Y
	 AHfiOihDkNXezIrqzfRf11V9GHxkb780hN8OpPmP4yv/qZbbI0qmrIXZ2nEun0q4dA
	 pvj9Or1jvaxzfBvWfzsgugAqVMv817/JvfU3ItuFc/HJaGsAjFE5i3+ZxQKWTvWya8
	 uGW/pzTu4QqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F584C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467419357.14113.2752630809678571079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4992a31b92530cd4f57282ca3f670a5473655443a78f9efbc411f8c52ed0384
Date: Fri, 08 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754674193
