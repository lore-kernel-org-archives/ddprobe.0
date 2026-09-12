Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E049347FEC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789243234; cv=none; b=LJ3Hr8B4GQucJIZtMkRrslbMVmyh0jFlnJtlln0siHZqPOsJ87KyUbEAAM7yqu1W8je9+ikBrtvcZM33jja2Ziqpji6bZ6fVZQ8r8APfYduN1aD4Auq3045pQSHg0FjdKng9vLiG5Ja02lHayATXg5iVDtrUE8/6QKiArwwLi3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789243234; c=relaxed/simple;
	bh=1o2TmuLjrzWr3WqUMnWqlY8WKVBZYW4W2DEcmgpzeIA=;
	h=To:Subject:From:Message-Id:Date; b=lg6p4wqxv4u0z/d3qa3eOYhRMXPrpkTELGNXZ6UpHj6saOtloxH9W/98Afj+kHOC610mKgttlAz46J4lt6muGrTs1Ls1pY3kmbvZTw/ZUWgIQB9MXew88gYCW+hcQGqgJRYtMYd6jD+2Nk9dacCBqYPuJL3ARaCvOI8pzW7ccnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjB5e6QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjB5e6QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2691C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789243233;
	bh=1o2TmuLjrzWr3WqUMnWqlY8WKVBZYW4W2DEcmgpzeIA=;
	h=To:Subject:From:Date:From;
	b=fjB5e6QY0LmOyYdCwTdvoIvnOSIC7xxA5JtrrXFWP/IZJ33SPiWbKq0Y3NpMWb7ay
	 weqXjV3Nld69cLuzulptL/J24gZ0TAk6PwsMrH17YhFtXIOP7u+J8FfoiNGLExR9N5
	 tD8xTjZRbFS2WNe08Z25DmX8Yv26NoqeIkPzTLrtisB7hd+2RBWtUMSq0Y/x7jPWVQ
	 V4VglRwMbADNVTJB5vgGNz179I4FRexLLYd5lp8Y6MIpSB+2mhOFEpl1XnC8sV8QC0
	 ds9M5SIDc7gRy5TL67WCRyIgou6Zckgf9fcpIixLe2cMk7qY5wcL34dnqBhv6JACXG
	 NcUwaCiT6vc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF248C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924323368.6879.12676567180948133979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf4785c4227a54cf83f355078092c443efeb93c6938f76b92e4b11acf3c32a0
Date: Sat, 12 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789243233
