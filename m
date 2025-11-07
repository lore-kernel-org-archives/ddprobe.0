Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A871307AFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762544994; cv=none; b=WqMjx7cpdwmh/zepMxFOaWLWo1gzQ62m7z6sX1wRQHd5+huS8mthXkctatyuvAXcsf/DRUVMq+V4jCAXW5FrZp3B9vMcaBVarwGFh4Yjui92pmhHh5hOxt2tzH8mVvb3VCvWV6se2NhyntiBreP3/8SLIxB/zjm2NEuV8ytDshA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762544994; c=relaxed/simple;
	bh=oupnHPud6xHM3WfzZxoHWo/mjBQ8/b1Fi4edz0bPoBo=;
	h=To:Subject:From:Message-Id:Date; b=knDvw/edfOXgrEo8JGhbdv1o+PCCDS2T9rOd5zgRpQb15fQjy95G1r7JP+PYuJRDDxGzl+QeBEZs91bziF1Q701ATlO7cRssethTRRrxrNu9+nUbnTsrKQvyctO0Rn/JJAAnttHXeMj644ZFNJV0Yjwa38r8Pfuc5QHQdv2HiyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0g2M4Qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0g2M4Qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D5C19423
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762544993;
	bh=oupnHPud6xHM3WfzZxoHWo/mjBQ8/b1Fi4edz0bPoBo=;
	h=To:Subject:From:Date:From;
	b=c0g2M4Qh/AmXpZ2RTuK+pAjC2BkUsu4LavrgYvn/Xn7ERJv1InW4wKvfOkvKkyOjm
	 2P/DGiCMlx4nIX6r0jGBK+A6EYxjIXGyWd2W3u5hmbWd70Lw2n0yNoxyjKvvpvN7cS
	 UelIajf42dH9DbLNkoNbDu0TfKlVvTebPPk/hl/m5wyYmtpHWcyMpL2nw0laj0FWhj
	 6DxfDZ2G9EFXVCcNpt1402zRJH0+ftbJcr0ghWIDAqtqKLhX4Od8eKiJh5+/dndSBJ
	 gaKqRKpcW7EGK4g3NfZBV845HYXJX6Ik+DzglKnJhb+3EXJqm3VJlZbbN4ut3qWCSM
	 HsrhahGfrbWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90910CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254499358.30224.9611906965451064703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb9c5f2ee49caf6e0d01e23259c612a8c2c85e4272f6e46d312507192541050
Date: Fri, 07 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762544993
