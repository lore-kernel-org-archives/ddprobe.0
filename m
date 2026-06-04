Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0740234214A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780601674; cv=none; b=Z9QOrQx1t5Z/8uTkH8ecALCob1bV5GCKfaC/MO5eFyYfBUWYYXSNtSZP8g8Hw3CqNnKjaHYX6N3HtU70HuM5Clpe1AOcSRcIy/4UBIjU7zCgg8zv9tdlVuG+Y/qzkh2pzLNXQKOJihWdmP6MmwpeXoN2knMCn0AwuEwNun4rgMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780601674; c=relaxed/simple;
	bh=ulD2lg8XC5ZMkrDHlv+YXHRVNL3QzkrF8oM5YZVck08=;
	h=To:Subject:From:Message-Id:Date; b=QSnq8BGuDvLhIG+kCotz+TRqdrQyoJjWAZk6LQK20Ffpb5QN+v8QRTgmJThECwnC1eOJnNkm03Hk3GuecYs/E/2aRl/eBMue1guIcnjTKavr8EUnCToi6lM+kGA63a6pyYjuS1EzHG8StcA2SKMaYcCzqHDk5Nv4Xj/knl9d8Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dt0rAM/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dt0rAM/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96D5C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780601673;
	bh=ulD2lg8XC5ZMkrDHlv+YXHRVNL3QzkrF8oM5YZVck08=;
	h=To:Subject:From:Date:From;
	b=Dt0rAM/RKmFJMRDKTFjiTfttIZx+8AirefpSJS7+CDKgu6FVJCaU0u2V2s3wd3LBg
	 SrcE37lIBOog9Zaan7C3+QeTBD+F+6uHkjuEHgEWMgA9ZQPtFWNlvAuPw0e8Egk+Vo
	 aW1Bc/xsZnvCfPLIdVzhR5cQ71M9LTxRSKzsb6WbtR/b31FCneSh8QTFT78o9hBMvo
	 RPYmjpWrCTluR5kah5AHwSB8aHNlQoZDiMRkOxGjMd18KQpi9CUDz7fBMTxExpcwx6
	 yoPpTQu6wb7nwlJPekk5en1ZUN/nFp5PRtDUNeS8OGeDA00rmNoIf239xcyJl7c7AJ
	 mPQFkLw67FLjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30FCD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060167368.14182.13432059616034109114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eeee7d25ec4f1c9a5cfe2f06fe7fd64e13db1cd4c3ce804eb8f27b6bfedf3e3
Date: Thu, 04 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780601673
