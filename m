Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F909175A5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755909594; cv=none; b=A+JVixDi+ch//Yw+o7iUmgSS6qGLKdi+pNS0tj0sjDO1fysr/AlMANLzkNCvHRkm8jGKi+EOSMPxdwg2LCGvOrBYJ9qHpCpZqbu2bYX3a8VdgRtnJanPiN7n+MRx9q2sYr5YYf2Yqj0YkyX4EH8yviHB2r4C7nCYyU6KlZHVoLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755909594; c=relaxed/simple;
	bh=N8yH+KwSKuTC7G+yay2tP+WMp00t3ZZVSMsbQSLz6qE=;
	h=To:Subject:From:Message-Id:Date; b=H/A4WnyL4Vh/uurLyVLgbmtH9etIYEN1uF6m+a1CTX+AxfWH/mnUd+u4w6Ml8JynUBXVzUiPT5zCzNUcIBNoWtegIQIa5/FgtpkfaIxMLv+Ju6bWVs0LIhg2hrwRgPEXOOwaHiTv8aJBuGus6mhA/PzLbUmNbVla6xskrRwuPWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGHrqMNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGHrqMNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F02EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755909593;
	bh=N8yH+KwSKuTC7G+yay2tP+WMp00t3ZZVSMsbQSLz6qE=;
	h=To:Subject:From:Date:From;
	b=JGHrqMNnUhugwMsQqBmKFwzN6X8z2CmE2BlapSUP/Y3rpyX68SWsBvhIKbw5IKp6c
	 dZ3xIx6sgbb5/1rqvIvDgUuBxRelMQOEIewZK2Fs4d23OxbcDg0oEzqQLkinXK2o+t
	 zf+b3YGj0y7QITWWyxPP49g0tzdcGG8skdyd4cSHvbB2gsVLFTSDYav+0Vn9O8GvC3
	 PyhTOEvRBiD72a0sPIueXYHRFu0JHcOMH1+Ya2CaFNFlYG7RZ5WR1fed0X35l1EzG8
	 qUoZEA+t3yO8fvIRlBchrsWLN8VoDsDkzvyHPNmwS3tpjMgFNchY7N5rwVTZY+b1sM
	 EEzgx9Ldq26sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF8CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590959357.5921.12109875851026266944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae6105f4c8085a82dcf386c415276a7ff9a0c530dbc74b0166cedc023b5c345
Date: Sat, 23 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755909593
