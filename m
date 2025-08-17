Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42442AAF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755406794; cv=none; b=p0nlALmZyFK00CLNj7l7rySRKqtPtNPrgxDvFeP61DdPWkQqly9UBcKREfZkW8ri68chm6+1ufBUlyF6VmgOj2vZDE/bi5paQfwYhFrGU1wjlHf7eXnVWoP1IM7ZqjMlk0FYWQ9buynb7fbLAxNXAO+X0wcbdxfWkME/9bKBlKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755406794; c=relaxed/simple;
	bh=rYv/WOf7ybz52czz2dG0/wOk0WjsC0RNG6az0x0amP8=;
	h=To:Subject:From:Message-Id:Date; b=X2q21yXYl52AU5OM73hNjnRjvqW2pDJSHdO/AbtIIJaJsMbOZSok4yQDnLxpkJk5nEef8HXIS0eme6qMgKRAO/wn/6TiH9UwilLYTddAW7aPaBb5+EaO6dnLtVMkSxH1wQDIvah5Qm6oenA2nN9FiwlEiMPDoOcN+IBEo9H8eOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rr715r9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rr715r9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755406793;
	bh=rYv/WOf7ybz52czz2dG0/wOk0WjsC0RNG6az0x0amP8=;
	h=To:Subject:From:Date:From;
	b=Rr715r9LeWpyUpVrvRzgJWolBc3gAKbYM5ldA7I20j2znmgjqGF59td/soRm7A7YJ
	 lQFR3neMv8z67hTxpOqwunl2WIBsJHaQ+N5K9TLzYzErpH2DPSWDwFXQLfY1GBR72I
	 1NVYGMS7i6LcieoSYQYTi+8idyLYURK4C2YdYqyUyuxZ+4+wVM9koIhJZAq6yrRecu
	 pd7XhaXpIGi4ivKPACYWC3Oe5EE1NBuqTnEmQrkq7ntmBXtnkwj+fA1aibdT7kuqpN
	 yJ3pNkwbsSJECoQKnn5cXxChtaCzdzcbwGuPTIyXZ4MUEALGY9vFCOcOFlktW1r7fs
	 +EYTzxFlOnmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94769CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540679357.5349.15862579425522211012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e7bd98fdf0c74505f893d9f2d5292ee91c2b9ce9a324cf75adb09ccf17052c
Date: Sun, 17 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755406793
