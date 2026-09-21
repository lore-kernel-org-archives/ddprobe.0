Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BF733DEC2
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790015434; cv=none; b=VGF/6vKgU7E20aTdBnSVHkKDMaPUeZmZWiTEgY6XqWYkDzekAwOhyFNGmskfVh6NoxjzO3e78TVSPCckWKqaJXI4fEH1ea0OF8zglbfbKs7saAN2LVygNYtHXvPcXeX4DHAEXw9RHYhC0iVRPbVAdVGrTJU9ZmB8eAkrFSLJNow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790015434; c=relaxed/simple;
	bh=nm64AuiKZRLnCH94sSsxFwN3laJOO2U1cloo6+QymgU=;
	h=To:Subject:From:Message-Id:Date; b=YwFQOty6dF3oK+0Wvs7prDbDkjmmqwCqsagAuP96I3HhrHaCX06JYOlvyfOyiqHI0gMmtGhpFjObzExkOk5JcvWEnoWDphWuxp+d5pEjclsdCRoXAgXLSaQNb+RST5TDw2IS/v95j0C/pveRyw4M+ARRn2jzTi8jK+C3umE/Rks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHzkeKq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHzkeKq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF03FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790015433;
	bh=nm64AuiKZRLnCH94sSsxFwN3laJOO2U1cloo6+QymgU=;
	h=To:Subject:From:Date:From;
	b=DHzkeKq3jwukGIMSXQp9Q/teoaFLZP+1Z97iwMMxXW6UQkZKgN0jTn2O3fgcK64/c
	 TtVVpC8A/r65c0yrcCUitmSDN9WAdS1IixcfjND3hut0W+Z3s5emOGEEWDkbsu+Sxc
	 rt/wZlYH6jMAtd+ykb+GON4mCE3RncxTCH/dvplBUQqop8eVAzqeWC8GOUZopEPw2I
	 7xniwYUYvL+B9ZJDd+3sNA6i7vspW9zn7RNGpAQdbW35CskH9BzuNmJ2r8/J27e3CQ
	 2KBuDYm6ALl7bm+MhZNHHvFLnU+7bQkCergwfiFeUTqLhE2qYQcdwJcV51hdnGWDs9
	 VreTGH+3PZRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71BBC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001543373.28005.2808244616868860915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4348dc919c757ac624a2de0cc49529ede38ba685a517aa36c6ff18e7189044a6
Date: Mon, 21 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790015433
