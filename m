Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEB736606E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781913394; cv=none; b=srBa0Qfv0U1yQgGrJeFmFb0R6vPnTS3RI77Y6Dlm12witrBsOlr4zDT18/lJDCFi1MHKxpZOaqYH1J/AqfW/zWNzfDqDE97Dh5pHomL/tWCiuLXeNaO0EKqiB0gEOu+liDUONd5D2Rq9Tu0fgNLYnNpEj6uYb/fMoXk+Li8aE3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781913394; c=relaxed/simple;
	bh=S2EYvxY3QQTIlTaTy6TwrSruULCv6iFwylQGl/UeSag=;
	h=To:Subject:From:Message-Id:Date; b=nopIXmsjUlYd4OyPUoeLEeiWaHS/Is1envgSrqe3WJMajEu2bzp/LABNqp/xrP8RA0qHSeFkPT+it1zNubWmOIWAGKVI3WTIpiyuJ8RjtAQYkteXXeBApU31F8JxWZJlMuoD6dDuav1NxZQAolJcPlWjwdke7gWfoxHkGcyAQ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4iX/I4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4iX/I4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A64C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781913393;
	bh=S2EYvxY3QQTIlTaTy6TwrSruULCv6iFwylQGl/UeSag=;
	h=To:Subject:From:Date:From;
	b=e4iX/I4QG1PlXPD+0Isq0mhflHfOEbtPBjB8m0M3cAwz9lYl2U7BJZeBmvfZ0JN9T
	 cZ15U8aIZ3YUzOnXcPI/mr+Dg068YvrQp2Z0PErcA3/yRDkbZXwMot+jl3ZtDazRgR
	 RwHXMXrLN3ivZn5lMZN2GfVU9ZRydIk982iK4EMhuAWPyQTAJ1CPxR/CCD04dwlpMj
	 5Tj80RzPBx6qUyLs07mOswa9bLiGp7ynj6Tg+OGs9loUo8rNhuCo0xsdtuyhel4J5H
	 qX+oXgqOvSkGirAV19JKWPlOBaPpq/Yo5u3Lng1yEm9EuXQRw8Q3XLv8AjVxJ60u4G
	 NLlWANW4qBbsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB109CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191339369.20235.4003922566608833847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1424e999c66c6eef5582e7ee1aa5df8ef895ebdc1bd81443ea8e541f1305f8e
Date: Fri, 19 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781913393
