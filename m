Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F0B157E61
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720524383; cv=none; b=Qdn7W1SvZkYt8WNHoENtqDiShxXx41VwR4K21edEPaLf0hRHZM2+2kW6lUVVx+pUjuo1KZcfLP54TlxAzWirmTXsgWE4+y4tkC67grFrmLpBz1mhi3C38Otgr9/8t77CBjiPvrrlbCI3U9HGjPQHoqcCxrxVVfqR3kgPTVK6QaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720524383; c=relaxed/simple;
	bh=epn08WVTiAyVVXLQWj/82L2SYF8B8GUr+Gz7pXjFZhI=;
	h=To:Subject:From:Message-Id:Date; b=DNmfh1sNbdnIY1TGkfU9QyjnxysAnK/1IPLorb3XWcKPII89SoYIkXQ2jdWj/q1zyUTLk8by8uKNgH5v91zZ2kSwN1o6JRNHcxLyV2BA5HRRZ8eiNHanfY7itoQLhfn9+OO+fAORDN7M8c5cewOu2MkDVnl4hh/NuFxLCU2Xeq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKpfotfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKpfotfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA19C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720524382;
	bh=epn08WVTiAyVVXLQWj/82L2SYF8B8GUr+Gz7pXjFZhI=;
	h=To:Subject:From:Date:From;
	b=FKpfotfAhZmdBgwjvyDaeX8pEcPoA+8R+fW6vvAQtmJo9KUxAaGGbRUnXrd86UP0X
	 5IoG8jE0r4bawTFkrip+JAURkt83J85JgM+lXrWlj8oreDhg6OMIP2V/7bFlbrkPF4
	 jH+vErIANncJV90sGqn/Dl3vw+/qs4QpSsBHfshr+5HmgZjH64ywQDWxUSNN1jVc1J
	 hfdcS92AWDom+Chmm/TL8QXT7F0wVlbSkxJNatjxL+hib7Kj29q+trgx4F1c/YvQqd
	 lqq2Za3I4+lKEoiSWb3CGI8G4jKqy/Yf/u+oTrO/8qoEL3X0lW/9v1DeSco166bIb0
	 gBO6aKXZ98N2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C5EC3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052438279.16498.14194218514828898896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93770e6199ce34fde4f49f59fcf9fde361b0fcb5cd1da3bfe88d8c435b76ffea
Date: Tue, 09 Jul 2024 11:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720524382
