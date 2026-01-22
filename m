Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164F4354AF8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769052234; cv=none; b=KQJxxi+IKFbQQnhgSjY6EPJLZF01c4ke6z8T442xOF37qJFw5LwqI5QkVG2R1m0pa10hn66d4vUReFtYZL02ct38GmX+tJBAz+F3QxvP/VJXxUDVKk4xYu2GG/LDExlYydVgVUnzpCPdxcxNNqMDoidGDNS//0C0VXiidMiQKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769052234; c=relaxed/simple;
	bh=ChbqBXk0jlUXKUU+SCeVxy91u37JQbAW/japKU7jMNw=;
	h=To:Subject:From:Message-Id:Date; b=EZDch3a6t2vva47lpWkcsF1+KRZ+ZsoSOzRW2Av476eyPpWim7dKOyiVtQ4plcpdwOxoqTYXjFek3EoaOm+W3sWOP/ZutS3uHPgW5/Sbq//5C3KautktsrQYlC46kLZXl3Qz2Vl+qosP7LkyFf/PYb5GDjaALAcLYpV0girH9W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNW6T9eh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNW6T9eh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CDC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769052233;
	bh=ChbqBXk0jlUXKUU+SCeVxy91u37JQbAW/japKU7jMNw=;
	h=To:Subject:From:Date:From;
	b=GNW6T9ehbRYVjM0n+LK1wWTRAfLVqUdCYkDDxdcet/uIx/524y6ifyOW3aTFrDcbx
	 THdalMoo1FLl6lw28nTZTDUM1ulyd/uOxfgO3ZsrfMJ0Jek/9eRKfbIBVg7Lo0ZG7O
	 d+ZjmGPue/NZw61RcfRHvSaHjKaPkFyKnzCMmKjY1Md8CrTJPtgmbRRqogBeZuEndv
	 WV2RpKjZdOpvS5IjkctXXMzBOcKqgIBNdv2G5aHpr4J40WiFGSDiQniwlenNf87CmN
	 xhHGgB2RkBTk+tjKXpn7s49oZt2VlUYHQulFRXBcX+4daryLEyF8BSylE9JkfS0Fet
	 MfS+SHO8w//9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95916C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905223359.28291.3606113579835322337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85475863f22338b9b25547296596ec3216ec1c0ffc8d779aee549a1707b4d3b
Date: Thu, 22 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769052233
