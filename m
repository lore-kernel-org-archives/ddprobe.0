Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D64115B106
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717164263; cv=none; b=C7V96cUR/Nlk6mKKZWJ9LNzC/gIVjpfbUY39uARQHFzDaGwZjiHsy/QQ43z31AEJiqy0mTgFzvu1oqZe1f0T0Li1ZHEqHEys4AVI5mz0U12e+vX/EaPkwtAS9ISq+Zmf9hONa6WuJUxkkkYFmdNlGTwqME0ANzSMnOSXL7etr4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717164263; c=relaxed/simple;
	bh=4BHMPJeIB9Y5TRS1VWkVDZYYE4/Odzh0ygxOmsm1sOM=;
	h=To:Subject:From:Message-Id:Date; b=n2FfoCOTVH2WgLm2ApfUY2qbaBnzcA5VQ2mBUUzbVw/kVI6gxAjb5TiGPo1RIrr1hZyPIDeMdp3ug5R4uhFRPX2cdEmsiDKMv7JAToofhVd+LMbYgbZX+PUth+EycZgKhADbQ0KwUB+bKVQMo1eIVKW9aTXMuYaopMHIqmSJKcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9ZXNP/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9ZXNP/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50F2C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717164262;
	bh=4BHMPJeIB9Y5TRS1VWkVDZYYE4/Odzh0ygxOmsm1sOM=;
	h=To:Subject:From:Date:From;
	b=B9ZXNP/91UchPEN8v5F/Fcrsn9d1AovZQbDEzOk8DusFC6nHux7g02f+xMON/wFbl
	 nsw/W4LSvTKLlm5PKJMzq0oDEoWJ3+LJ0hcwrFwO9NdMfC2neJU7RM2HyaeRvNKVdi
	 ZLzIEtpH/tz5cCLMqF/PK+ckIsSD8SGy3/HYf6LShkxfayVCh48ilGHlnUFhg42dE/
	 lE2UJWUuJsLErLX5lh29VE+X0JTDRZ9dsV0oJ1joJpOwPkt+esV4B2o6SPRhqaFPP5
	 LnAR7x7WQ7XXhfyW0PjW5lUmIuhaztxrgHIBTAaHNWvOtBYl5o9Co+8GFxnrTe6iEf
	 CUb7IleIDqDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB91CC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716426279.8728.14997883205281083771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67d2d097e1e1e8b75b161f2d7dad637488932844afffc2a3cf0fce28bb8e766
Date: Fri, 31 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717164262
