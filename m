Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C6B1F12F8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764222174; cv=none; b=R0sdAM4oXDemd0fkKm+/NzbLBRdsimvsg1iRDSYSP5MrR9XFMXCHNKY+A9iGwUJosq3BijlrIl7pAmpzRAlWdYpda+lOn/rEjGLviY1Gt0SxywOwxQKHkwVlv4DhP4FJu8LwukTjbk3CquRvICpeGPhJDU2WtHYEJIEDjJSTzEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764222174; c=relaxed/simple;
	bh=xGmx3dxRYOg1dRnEzmuJTWbUrzMk5xfswrsC7/sm+f0=;
	h=To:Subject:From:Message-Id:Date; b=r7h3/zChus8a3uzdqUO6M5I2Jenx3HTSU/ahhKBNrz3GevkpfNlKRgOHtk9e/VaQNj2abV4mf8ctSnTysLW0boYeGyhCH5N0aBDDxMvBr1pipR7qWUxh9plylHUpdYXvlBQMA4kXtV8g/6zQp3tv5sVENYArJ4PwnKhlzawcrMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcLBljiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcLBljiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88CEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764222173;
	bh=xGmx3dxRYOg1dRnEzmuJTWbUrzMk5xfswrsC7/sm+f0=;
	h=To:Subject:From:Date:From;
	b=qcLBljiYuwM7Zr05rQGoyOzQ0Qwi2p7QY7VgDi5azob5+M1oE+Ngz1Uu8khG/5Gwc
	 TUG4Vr4bcN4ySaxAzhd0aNumxpj/ueSgwKiqIHvH4ypcg2XXEYyobXni0g3E1PX9ng
	 bEniF6qX8oPby9/SZVsrwhfNFGQoRKtDgm+pB2LWP4S7N6EVZf2XTJ395tLkWznro/
	 rfHDAfp+OJ1fyhJdOyo1k/we/sD10rsq3h57PfNUon+xP1IjwZMX46xrFGNPmgRpHw
	 1LOpLz82JCyxTfod/A6bPzd+lUfD8N2Y0XrSbcpQTmYOIa035WKO7s5vn34a0reX8U
	 +NcndrCaAsWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96662CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422217360.14443.5359341838137742335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc9e6108aa35c42ed111e8f23a4f24370d30ba44a8c4315a75999522d84b930
Date: Thu, 27 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764222173
