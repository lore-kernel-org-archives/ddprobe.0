Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF2B1A073F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520194; cv=none; b=n4NDDW6z/bAaQB8j3xJsvS4LnBBfZi0q9Kz29RvjdxguWR04lkBXVCndgA7dfPxR6lNxOU7KChKqmmRkMZVWEVZJgQJtrN04fMvc5wSlTfOOeyMYjMyvZnPJXgErfOiS8NvbWfL6rbYkYKuElfTIZ9WbkzJGoxyYSUdK55YFv5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520194; c=relaxed/simple;
	bh=UpuFYe9cqfs5WrYBFlgPKapd455BOjSjWjkhqDj6kVQ=;
	h=To:Subject:From:Message-Id:Date; b=WcwpJjFJPVvw4Y8vJyK6NNWecupxDk0qsLfa8HyHkA5ylwy6mzg3ITirg7RvMLoxBKNI9lfAZ9uVAoHgZGuQA4vWA6SxPF3MWIKsSp/2MR6j1Cpel3AHzl0zb9qScMyzNGREOnFJEbc/l348ty9u0/ko6rtdMIt4ZDxZWtSUqeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZDyA5Nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZDyA5Nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA328C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752520193;
	bh=UpuFYe9cqfs5WrYBFlgPKapd455BOjSjWjkhqDj6kVQ=;
	h=To:Subject:From:Date:From;
	b=rZDyA5Nlh29nohUQyJH3TIn+U+3rkWR5j818aR5EYPYREdTCKfez7DnVG71Qx1K1l
	 5ySTUQOQdTu1kO3a5Gzxq1DH0yd3lREevDNRCHOPQAFOIhu/vYLRsTWAnIG7J2YHSs
	 wfeOkhEJp+OSmKBu7ASM2DyBMTJ5Ug89wRccqWGOvq0+B2B+gb8Wa1UkWA4WCBX+Hb
	 smHmJsVjeQOYVTgJ552nEVZF0J+fCfLo/1geQLjd/U9iP+9RYhmY5vma1vxwMHF4QB
	 PQ5pYV0xwLAqVKn76O1lVNwz0SRstlFfu7vVI2wvrICtcr2KiUWvIAs24gMzob9Xnn
	 gUfkzjLqes7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C61C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252019359.2638.9417624166966916864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec50d27fe3a04ecc373d8b78d0832b0e035f63b68d107145e5246cd3049c911
Date: Mon, 14 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752520193
