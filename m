Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274FF157493
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761017394; cv=none; b=pqxOtdFHNW7GqkatFAxq6M7rtv5DkQ9ZFhWRAF7pn+dbyWaXIexDfn+TCAIhoy6FSN49JNo3Cn+u8crSgLF1ogTTjYixjuxovBiSvP3BL+VlslUPefGDB1Qiryy85uNLqPxhy6Has2/jV73S4uXjIpRAze0Z29dN3zyJaw5JKCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761017394; c=relaxed/simple;
	bh=z34aBdGEuw9y1wfhQSSvzCY32JBtt9rdAZrAZAZx7SU=;
	h=To:Subject:From:Message-Id:Date; b=fPKJNFa94c+Kfemm3JmEzGdePS8KRp7EJ7imiSAxORgJY6Z1m64mqkU6617o8FGMDb4FuxMkl27R+qKaiHk0PDVsZ0DhNbhtLuGFDo+pb4Fm9cvxpji836DsoVyTwq9+TGxgDMD5R0SfN5UWs0s1yMWxY73y3qTYtz3QnlZBEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0oNJFPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0oNJFPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E3AC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761017393;
	bh=z34aBdGEuw9y1wfhQSSvzCY32JBtt9rdAZrAZAZx7SU=;
	h=To:Subject:From:Date:From;
	b=e0oNJFPwCDAi2pBfWkaerAsYzEPQAIN4XpMor0Hw7V07OIVSrcAxvKbn0b1Sw9SrH
	 cVQ2gNWzwo2X8A7F+lGMqzFpz8TnmNZPKly08qxtqNu71qNNRSe259PcQN1IRiCAyC
	 N/buYVItfAxUpO+cgB1/pdZog9hled9msn40rZ0HwgzgxmZCqQ+G0NgjFG26PL0Fsa
	 AONp3rK/+GibBesRfi+Wm659mAWGUjVOmDeilsypps6QonzJ5Uv01Icl+/U/3vQEkk
	 9fUowSVH20vfyJqJHP04w7/2dozE9cGCjPkIykbDfwzJNQjovLMWDeUEuPgQUfUJR1
	 xRWmr9hQ1iV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADFCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101739359.15728.8780510225395732188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4cc97e5eca2fadbd0d9bcdfcad41c4f60e15f76ae7619105336d2188d688fb
Date: Tue, 21 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761017393
