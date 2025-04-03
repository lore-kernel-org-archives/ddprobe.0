Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF152907
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743640194; cv=none; b=cJevybtaqrP+TxYGge3WH7ybvRj1l/OOd9v0ds4ddBFYV+DyNq1LOO/HpDAZi0vz32rO6lkstfFRS4VHTVMn7beOFFqlMgl9SPPxgmL68I56486wnYW2cVa/PxcZVJ+Po2XRq+SAlZq8Uu0/CNum2EJMm0QTmeudfihpy6hajCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743640194; c=relaxed/simple;
	bh=WR0kZj4tpEMZrsFkxBqmclxEQPY80fANDuIJ3/eb/rU=;
	h=To:Subject:From:Message-Id:Date; b=vA59WTe3zMU/L5NOmTBE1BHsafYVXw+B+8nGuaf6HFrByGqJPcjvMZg3L/zoQIb0HSuETu6yjD7HgtgsngysWkftyPi0NlNM15XFdzzsb5bUvX7LphkuBmJk0c0VDq6h4Q1vUnEzrfreuHk5d4YIkdEribGRGy/qBlbcDv3+yXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuy6ztup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuy6ztup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C4CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743640193;
	bh=WR0kZj4tpEMZrsFkxBqmclxEQPY80fANDuIJ3/eb/rU=;
	h=To:Subject:From:Date:From;
	b=iuy6ztupjNt2I+GbxEgHD3AnHArxAiOp1ZZA8VdawtJNVztv2I5TtmlDCrDjXi+rU
	 15WRiVy57UKRcYR0zLVyxnOlvY5BzOPFp5zM4/6R78O5ufkEQkB4mH3iKqkB6KpSji
	 yoLZFt8DEp4F+84Wft84kZf/bmN0pniTNErMzp9myOW7uJFg/anDlu+QQUA0WcIiJZ
	 sDN6tpHuh7DcIZCweLkPc1zV60YYw8/aXp/x0I82tJcdgVkynrmGV8lNSUM62RseOE
	 oE6YFMbIr6qtmIOIXl57mUgYpbe4iV5c+EBSFTwcvTpLOFzYHxN8bnvet6ys57TwZj
	 FOa/bAoJTP+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E69AC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364019360.820.9610176531745335029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7be6c15ff2b1b4a14d7cfc0703933018d749820fd777ca739484f7da76f8801
Date: Thu, 03 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743640193
