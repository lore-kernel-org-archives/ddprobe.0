Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700015E8B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787731834; cv=none; b=YrmmtyDzeys0uf+iWScy3mKS6HB1ETLljL4kQJKQ31yXrAJPBOwCEj9b5+wO33S0P1x5ze/g251ip5//ah54vlu4LXpEUa6sq6yeP9AA3NqmiSxeef2I/+rmMlU38ZNSwoQdnM6du6loUq0Kd8PsnFFgow+OiDWrgaTNbeKrOfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787731834; c=relaxed/simple;
	bh=TNp+7bPNsMph90LzR0BfpIYKss9UYCzIK5iYR7PPEbU=;
	h=To:Subject:From:Message-Id:Date; b=irdr835BMy3UPva1zGIqLTitB+vgyBhqynPZGkEZ9/Pg+bSAcxxY0qHQrovJYdK6IlcmbRAtsek+f8pRBHZs0vAgbV+Mdz6xsKnCDAuBQT8zzVTQ35CwFNDd9iknt36ZH79CWs4T7L+X+xRLIpRvbI69pmnoXSCiZgMmb5CDAsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGZIhJND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGZIhJND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECECC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787731833;
	bh=TNp+7bPNsMph90LzR0BfpIYKss9UYCzIK5iYR7PPEbU=;
	h=To:Subject:From:Date:From;
	b=OGZIhJNDV8xTMxwfvTihzseN8oZg4r3YajUB1KiIpy8wyqhQb2CpEIlJggZktltIY
	 qUyQoNJs0g2azOHOZOziHkifYniJuJAMFTQ+3bCgzbi7Zc5tvtY2pAz7u6uHXZtXNJ
	 ZfohQuStePxbIVK+iXkAMuWHW4UbrrsnhhSr9BAmFPkvheD08GUxCcU/jT0N8HcDa8
	 mRB8H0ZfqRdSnQEdsW7KWrffTK0mf8pn5weeGw97vYvshaSb7mzqCOZ+DFvvNgM1mr
	 IRyxwrUuLDq6kcYDClNcUtVowZz9MFRKrUwMX9Q8hZmtl7NpqpaXOhQxUDyqoyJyzX
	 uhE/JWn29HvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD6EC61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773183369.28127.7535682962834076729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8253143bd56a43d463e8207dd7b91cfadc09dbb3546819c4782827657a2290
Date: Wed, 26 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787731833
