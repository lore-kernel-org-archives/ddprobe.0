Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C767286425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773200694; cv=none; b=GXol2grtXxvCReW7LlvrQov1w2xkOnTcBnuCvK3QNxCPmODoNT5r3SXkBGVfs5SLdWzfefyhaXMOEXQtBtPAdkKkZ1EsSzBMFLk29r+IGNJX23uFRiV75NCxH3yOimURWxZLeJjgQkojCnYGSgdyYZ3r1OOfkLYgqHOhZxFQsdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773200694; c=relaxed/simple;
	bh=PT6SWcyqkD2t6FtjT9LWTkwKjD4aKQux4TJWiDCxz4A=;
	h=To:Subject:From:Message-Id:Date; b=mxW3DKFR7BMJkg/lsReknOTOyuAbzUVrcDvcm4u7Z+9JsBF7zS1NKISWnz/kcOYwgY2MU3UGGB8CH1U/jPr6QX+FOV1846nJt3c7mKbxA7Sutc30tKawV2dNTHKDmhCOBUkEchcal773YcjdA2FrCp0I1mTHDH3PjSZOhz/Z8tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+VycTRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+VycTRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF76C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773200693;
	bh=PT6SWcyqkD2t6FtjT9LWTkwKjD4aKQux4TJWiDCxz4A=;
	h=To:Subject:From:Date:From;
	b=Y+VycTRHHA8GDYVKb9TtH6XLHwY/1SEhN0HkDtga0dzCB+sS9gVeAv9iAxfWjvBwb
	 32NWf+/lEkBEfOWyVn87oJZXMnssSEhBVc15nYho/bNdQKLsjMW29U/UVWiUqcBvUg
	 hKmRqJ1QTfyPWDywpOqb6JkPV0DJSvgQkyfc3oOBZhhAhPTFGwC7wx0UWIcmcsbfH4
	 eBkyGcFjnXyZt7mTbqxA3xmXm1jbuB61KaiMG4TIIOsGRtbfWlZhL/uyQQbJKKPV5N
	 9/T/Azm/7W5Qkw6vUDNFRJYpJR/YYTzek2KvxQImUEHSRcGzfLA+hJHq6j2VJfCHw0
	 21zGXzfQ70cyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DAFD88EC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320069357.16868.6668521742788901426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1feaa355723eb07efb2d313317998fd4d9ddc82f0b52aa5b16e6245b1a57a9e
Date: Wed, 11 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773200693
