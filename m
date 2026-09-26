Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6622F30F95C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790445634; cv=none; b=K226/c5iKOPw+9onCE3qIMf267Ng9NL1ASnhpwOgnAdRyOgLGdZfDd3qb1flTIzELn1qQaSQw3QJvmrpdX1hWVopju6RFCSA/Nw4CtmDI4UoguBMn4t0ukA4dSnRXkZFqqY8OS+dsq54J7OPDNvmfDt0rEXCmLSB5RrNClsv7Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790445634; c=relaxed/simple;
	bh=US/Nw0Sd6bb256wC/BwY2ZO8TeV2lUjkWni3idUvzAc=;
	h=To:Subject:From:Message-Id:Date; b=V6+ieg/fU6kZFCRLsM84xNIat1vS5cyUZiiUiCHgPR3n+ZvwNq8ZrO7Q1Jzm1Rxa1y1vFikVPihLiUy5tabCrBU/VruLrgXAl0B5k+HQUYsLFsPU9t7hqhqE/2AHFi7dN/RVMvBKz3sPh30dqRrwci0iA+N+afDLx5dDhOPNI8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3FEgxsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3FEgxsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790445633;
	bh=US/Nw0Sd6bb256wC/BwY2ZO8TeV2lUjkWni3idUvzAc=;
	h=To:Subject:From:Date:From;
	b=l3FEgxsKshdzqRrpyU7EGg/nTfMUl3zJT8BGPS1fONt2TqDATtyZcEW8uPG74Uu4N
	 8GL+tgnvCgNyf4GXVb+zmbSFP7BwBw1YEbsPJKgiZaIekMvzIAyoinEXyVxFVY0bJ9
	 WfbpSTPI7yAgEDBMKuq0Sg/Mw3QblBYNiu0aKD15yYPtPef4QYsTzfjxaO0LHj4kWr
	 UPeXZpZ+Wi2od81ukOR0mSGXVno1xBK/lR9M0ZowOI6WK6EWAgDDyBdAxaxZDYZqLQ
	 Mzyj6s1rS2QmQ/ZA1Qdt6UcXyeg74xy3NZeYTxoSVeNxfnaeYMjVgcRJlnhb/+2Zpp
	 vbOfyVooeVSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF785C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044563369.17902.7373769060592582380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5aff468af1bc7fc285d82de4056809105415be510cc89e281af01b6aba67d4
Date: Sat, 26 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790445633
