Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364B434404B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770783294; cv=none; b=j9odVwDEjdyM5gGmEcNsoyX2wjDDxtpd05ZTY3t7EC/w85KRmsl++N3z7sWyq1sKgLrlg92w1EWrlU8bnoAWRok+0Dpg1iwjtI0Uz1zW8BFCPnvXPLOitVnOU4XEo0l8DqHje6667spuqSs/m2HQz+6ftk8xbiBPkGKxYBZAHms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770783294; c=relaxed/simple;
	bh=4pPfDJ63Azg/0BJ5uzdO8f3IkZJ0ID/P16GUvbJbbek=;
	h=To:Subject:From:Message-Id:Date; b=qXd/5EP99T3YZ/4CZ5fGKFBnuOEXyeVPl3hflP4WGBFVpuUSzz9HbzY9bFr84g2HPkO+CG6fDHowtQqHYSgZUBlkcotHPiFtW0gkuO9uRY/rlPaJF898MAdImIYWRSpCKP+KxauHsebk8CqSuNYSHHdDBCk4mCW5DyGhGgzTkLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDqiheaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDqiheaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16E1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770783293;
	bh=4pPfDJ63Azg/0BJ5uzdO8f3IkZJ0ID/P16GUvbJbbek=;
	h=To:Subject:From:Date:From;
	b=GDqiheaMvgWOmFiHf/+56Xu/awAm0osHW2uNO+IVwFEvze0Uwe9CsHQkShlauizlV
	 yyuKxKw5qii54u80yGhmjNQy2k/65cmPyDU24Nasd9UMy5gGfDFcKZvCBTP5oEzZXf
	 Twwe+yCMMKLmmrCQ1UmQ9oBSFuqBAiXPaFRmM27dKe7kBy4FumP3PHV1hePjG+kjgV
	 n8jZS9eN5dXspcJtUjj5wMEx2CHAREw+uxC5b1Fo8/tUheCWFn+wtiF8RmpwIRP+cv
	 6neoR6AOFDQpz30WLk9aYk8U36vo+fsDZDyfzdwl7YV2M1fSfCfQFnj1BXPvLYzjgb
	 +IhFEOw3IxguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC52BEB5961
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078329365.32237.2948510818281654851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef8f0468e59fe5b3c458d39d68cd7dd9470ca88bfd5e4e956e655edc363d9dd
Date: Wed, 11 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770783293
