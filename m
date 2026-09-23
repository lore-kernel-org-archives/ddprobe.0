Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465A5361DC1
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790129434; cv=none; b=tUxGKu2/DfyRbo8HWcPUVCeEUEpAchSREgZOR9uIu4AHUZwUhKZs6G8tE+PG374w9SoF4cFPDDOLXhH2bLe6BzMltesY80hFPo8HjsmmOF65Xo3CWnEFtoYQpFVrUN8JWrIpuVJ75meEU2QTYczw+8yJaFzBTFUvst18SRh0FQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790129434; c=relaxed/simple;
	bh=g+WZY9qIPBQWP/xGsuxSpunoUm7E7hGAncBtG8jvdn4=;
	h=To:Subject:From:Message-Id:Date; b=lTfYMo3MuLfxjM6Bd07v4Wc1B3cPD51RIV1wWI6KB3Y/IryQfvcR8zuMhF/z5MXhx6wCF/e/LZaA3kYY29q9EjcfmJ8P/1oHZ6X/u0FKVcSl/NtE/LAM1EImb/vDEQqfsTvhYuU5Z3C8uDb3Bxy40BGJF8WQ1QDuThpOk8+tLww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7oi1UL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7oi1UL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF222C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790129433;
	bh=g+WZY9qIPBQWP/xGsuxSpunoUm7E7hGAncBtG8jvdn4=;
	h=To:Subject:From:Date:From;
	b=F7oi1UL+d309Wh7YcNAHwmqb0oPLnAyymr5jEq59z+UfhRUk7DFmnWb0vi3p0m7ag
	 tBcQ6GtvGF0ADalb+fF60o17DGu2UikQxTU64c0jt0BHqZWkcvkaBPXwuya0goS2HV
	 fOKHXIJ2VolYhz173L91zJyYUF9JDAvG6SRgqe6JOMw9i21z3Oiazww7dtNp/7qkqd
	 KY1JDHuXaV8Zh5b+TYRkWFdCtqEaeZtcW+MdfJnGvWxZYxsgk+ZsUYcHkQgTLcV40x
	 N5JTUv2fPKNq0rJfoPj1GLhFzGMV6UdlUNKj9q0+2hQ9vjQqQHc96+bq/nOj/7x6fa
	 hlYfFK1/IDRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB25C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012943369.22755.11972835930431402640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5d4bccdadca048f7320a842257c4396b9535157afdc50ab416882c409a25d2
Date: Wed, 23 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790129433
