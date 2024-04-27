Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467B1653
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714209143; cv=none; b=hO+4WREzuQqbyv8h+NvNrU2oicIV/K//ZpDKrbiCKvVQbHwVa/N2cnIvsm8QRiWr9SRhAVxJjWJHFYKn/Z5gtj60tfq99QOUHO+d5Fx57THnVfXyEUQAJJsn+uJSIi/M/XdZMytkuPnMX9vxPnQCe9E8PSUcVqpONZ64+9gOT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714209143; c=relaxed/simple;
	bh=ouAuJuLAMS4GzK69aKfvTrrd0y1yH0WxRTbLTeicLHw=;
	h=To:Subject:From:Message-Id:Date; b=Sa/gGPdZZAB1zmFhzL7eLGlZmIT9mEUoQR0wwy8kbkuetmkuKhZvQ0yNLMS95Z1wnz50qTJJAo94HNtuKpT+jJUE77WTOsxgDJ12DXDp5p/QkrTDGHYSSSfaXelB6o/YeK5/y6TB6HO0JUZYq1jUQzcsIEgxBsJbH9g41iSO+fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdKBQ62D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdKBQ62D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D619BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714209142;
	bh=ouAuJuLAMS4GzK69aKfvTrrd0y1yH0WxRTbLTeicLHw=;
	h=To:Subject:From:Date:From;
	b=YdKBQ62DKhdeY4v6q+XpwRBGegeXynyaIrc3wUHGKsLIU8WrpN/PTbh0A60qNg/Cl
	 KyYzOmufOBvNbCyUDeBk9UH03oVW2g62jxQ47o2nOPUHFg/Ruz8U3HI09849we5ixT
	 R9UnMa0cPjCR6GO2an5pxRFjgAe+ZAEIp9xOcF3sdsd9b4/ejevM2O1If6sa4+ydN5
	 0R0QowEwx+CIeIhr/CHrKel/3g5EI+1caN83a9oThQJFSlv6i8ASvP6et8QgWRGEqP
	 vybtYpVlA0zyYVqcZj4GDvAJVyJds9jjHfVCEoAD2lIJFzRK+D54BZ0K4C5qNh9FTY
	 U+05F49yU5yAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B1C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420914275.28136.1296756078663990006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b1a1173e32e3d7d1ed6b6b134b6eab7eefe11b6e53d7559264cf1181a616e4
Date: Sat, 27 Apr 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714209142
