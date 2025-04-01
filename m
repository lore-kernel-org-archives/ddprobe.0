Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA52189F56
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743517194; cv=none; b=Ewr3ro2TSU9fJ8qw7fhJzdfFWiplohPnp290uiNZ+NjLV+1qJZva5p5nHxjaMtcVSG6i7eN2+1JD9KfFfNDVDCxiWGl9X6VOvzQQ5/3RLSJ6UU7JvGyggtcNV3IfkKNvawFsLcErPKIMgVg0K1mTGXXQyWxTlauJgjrpdI32wCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743517194; c=relaxed/simple;
	bh=1GI66lgQIwZCKgXTVVhbSq1msjfMjMStvf3MSTt8uUY=;
	h=To:Subject:From:Message-Id:Date; b=PR+6CVmDpu8D/Zte3P3CsH62CdG+kgVTMXGxqxUnOh2g26QzwBC2R6RVgdfj7S3wCNawGK0rpIvrojQS2ay1evgszHchF+NxarwBYgifUKpkDYYp1qeodpdH5NltdLxAgNtU7THLpf7aRovzrHk91Cc1fqg9d848EDY5H75X2i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADOgP+ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADOgP+ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4558C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743517193;
	bh=1GI66lgQIwZCKgXTVVhbSq1msjfMjMStvf3MSTt8uUY=;
	h=To:Subject:From:Date:From;
	b=ADOgP+ZIs/u4RgH+RjIBeoqOyex5uQ67fgdnvwG7lRpZb6j7+kB0Jlpp8k5eJphCW
	 QtqZQ7w5PXYuUxs0OPwRWWM/EZpss1C7wo0vTtdVgQoBH556zCtJkT9d9ybdO7seME
	 JLyyFavCEPuY64QkjavaH1HqicGzWMs1zA5jmZGO4kcStbEZW9EVwQ/01qEv6r95wa
	 rV685xiHWosn6ggPtVnGs/uXdx6ykA4Ae0NvWowOH8CbKPlPJkk1WKdPy3CIqYgDzW
	 mNQv7CkfEJ6cxHwmrx3S7nGVV+m8555dRhZRrs+knzndeDLWp44Keo8qCmguM23+K+
	 Noc8BVOmVYpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C1C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351719360.19591.3283381515374026566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ddd62d91359f342dfdb3e76173f70deedf82f40828db56d27328084e12c4f3
Date: Tue, 01 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743517193
