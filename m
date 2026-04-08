Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBE01482E8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775623534; cv=none; b=KiB6MZ9Ea4MyeyPDw+m2vNJ3U7fMvQA2tM/j1iiR1czviLDGMkA8RvpsiNXq/ihePSi68GbN+7WIMbBDLrz6t5vIIqd64TT8VdvrQD9dpglukS/sB1gkjIigvV4aeBpj4YbJ+3J+kSdr8OVLB7Rchb+U5IiK3ZRRXQim5yUtSlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775623534; c=relaxed/simple;
	bh=8ZJi+C1MV/0GUI2lzOs4w3b72Z8AoZtdybrlOx4eF10=;
	h=To:Subject:From:Message-Id:Date; b=ABMaPW7EDtxtRCblVoyWivhLtoPC2MZChGlfVO9oIZYamvzwxVRgBybpgxjy7QzFUA30NtBzqTDx+CZKKSxl50VDgHjUNLwC1sNq51wVeuWwzwjxBY/JJW9BQOGX2h3anJWxnrggCz0LVLR4r9SE9AHRT/SV4fOKSyCCrOV8d24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWC8MMmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWC8MMmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5ABC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775623534;
	bh=8ZJi+C1MV/0GUI2lzOs4w3b72Z8AoZtdybrlOx4eF10=;
	h=To:Subject:From:Date:From;
	b=IWC8MMmfsILQg31nCmFfjqRLBCwD8tXRX5YVeHi3qdzbXHWpctjUhjkGsPYRFzIr5
	 8H5wcbvGxt/j3XJxVKqqcgmqzinSFssXkCiey8I+wYv5tVqYtXgfYwy2PpOQ8wjId0
	 Yl6LUtx7v6GOYVtB7C/T93cG/XuuNiB0jQolEDyjVragyz6qPWqUoiRR8gqn1fadZn
	 5zjv1xmGuf3DaEpE8/EKH87EoFCqKRPoAr42y1Xy+BimygjY+ofxZ9Z2TVP+Wca62n
	 N/dN9taNt8EWqatCuhqUQ5fsdiFGqZkKIsQ1sE/QgoLHplCOg+W+JYWCthPXTY09ch
	 IFN0JzFLhj0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D77FDFD5F70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562353380.30909.12867345732905205944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca0866d9f77b48c0fe99b1513e20dd29d0196225cf599b93d2a6340c480b0fd
Date: Wed, 08 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775623533
