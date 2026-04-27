Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C735F192
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777267054; cv=none; b=hbTVs/YC2r3jw+5DQU7ZSh3tHA3RgkR1vhEhOK5LIb6ZbnJIfvAsXQFuOBADse1beJNYfpIh/WCeam/4SJrS2ChSg92g9NYHNIeG/otd9XBZLRZuPXjVQhck1tw7AjNsMVr/CCQFO44rvo5fTYJX2z4G4BJhDG1xqT78CSXKYVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777267054; c=relaxed/simple;
	bh=Jr7Ma+I7UFYiY1Lh5cu8rvW8vHDQq5GUR33SnJqgkzE=;
	h=To:Subject:From:Message-Id:Date; b=mPiPgrx1pzbCZUwehcMwxF2EJgFjHFKSDCqSPsawsuehYyspcsi6piRLQLIHqiB6ew6k3vEFlWD/CIFgi9cPX39j3Z9srdpTiu059dGF7w6/YUIrE711jvIS4oejhEuRpYX7hrEfxI9HQRSCv/YtKXI+winm+d2eKFsBhFlTp4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGE+6QMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGE+6QMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C469AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777267053;
	bh=Jr7Ma+I7UFYiY1Lh5cu8rvW8vHDQq5GUR33SnJqgkzE=;
	h=To:Subject:From:Date:From;
	b=LGE+6QMnce9rojnj8HkzjKN75yi5UtDlY7YhUoRpdnR+E2tuRtk/JW6JFyy/XZNMA
	 dKl/fzQvI0FNYEQdxP4UZv5DW23vIX+Ez1IEmjP/syGL4mMJBZKFFS3c7n/YqlwAGM
	 owkTvTNLEWZRlyO49niQXVexPMmBRewXExHqSijj6hIzTZcG0XxD2AnJ2MyM7xk47I
	 hZrWrze22W+e78U2fvQohlULuqqOmCRxksB6lF84HirZaAytXEEuABMkE3BNk9fvZq
	 3MfhwMwKUWv6NVDh8x+HMe+zlKvzePVlUgLGf4wDVxmyHq/57Majqi4uuV48jwCQIw
	 42E/yb6SRs9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B109EFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726705369.1067.18114200879231635233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383d51429720fa9a8c0aadf3de9d5db816219f7df633f382c156fc0d18a7544c
Date: Mon, 27 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777267053
