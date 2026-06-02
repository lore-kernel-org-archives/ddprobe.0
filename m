Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE3F1DF748
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780422874; cv=none; b=YMxXOx8fqMeFePyCHUs5k5iEqeiA947tYKW/2MhhrKk3sTfYjgCZtnQfsdNjIPle86iJqvpWnSRK+7jM2bSKAoJYQwE7+E7XzfjaCwSbTFUpEcljs0PUS7yPNOMQUONYB5TndVJ1XR9JVKYyBsTUZ83NoLGNKowqNhqkycMa7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780422874; c=relaxed/simple;
	bh=P1VL1IyQS0lQQiny0SFpruSiMRsSsniLcQ6E4b+ba64=;
	h=To:Subject:From:Message-Id:Date; b=a6n7NmG7wNyJGyjNVQAzcmMrZh+HClIY1G0YXwqVKbTA2QZJMGori9v8FcIWreZ7Z7bywgjxXIiSluC6V7EACCQKblxgngzkgMgRZmVmWS7SsSdWrY90YCb2qS1pd0dTuUHo06W2h0kZaF/jIdga/NN+D+UJ9aKt9pg0MaRVw6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGJlFjoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGJlFjoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C234BC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780422873;
	bh=P1VL1IyQS0lQQiny0SFpruSiMRsSsniLcQ6E4b+ba64=;
	h=To:Subject:From:Date:From;
	b=gGJlFjoekZiZYwBfK63H1ZJtDdiJY9WDN6PmhrWmfZCuAI38iWD7xb9fja2wQikok
	 U4Bj4TNgcz51onrnFUOksUV16SLJW5nUHJDsTGAh96iVGkzChJSbyI8tkR9vl2ifPg
	 6aNoDabJwsXcSQS9xIwVQ2WLPk5z1wSJrTdEgro+IWlbxSZGPXcZ1gAmQMsRuuwiIw
	 d1GHadIP/tnaa3ocC7ARo/gVhjqx6R7vOYLjpHW+g9Bm9hxPCWsGkvkwdfJcU1vNE9
	 VcGJLk5zRsdEN2o2ghd5bWWi4jOP8CuWtQxbXPfB4FdxsukmaZEWkaHCHeh+l8910F
	 E08UnHg8fygLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AFACD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042287368.17098.631974700109686157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5331e8172b9caddcca38a5d79882aad03d744eec5d3157e10c5b861105ad5abd
Date: Tue, 02 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780422873
