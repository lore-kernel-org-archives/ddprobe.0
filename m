Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F96B3EB116
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784795974; cv=none; b=SE4hNnzfeEV5Lx8MHbVg0BH43K8uSf7NUImJEas2Isg+euoOjq9BNFDRmpHu6e64IutKsWhogp1/Rr+HKESikoFGUI4IP1FVVxu9MzcK2SeIDAfIFaW2trU8iB69pxQ+MdsC4Vy/s/3e+YXfELinYhG0vI76rQdP67ebpMWxQsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784795974; c=relaxed/simple;
	bh=p9tFVJ9T96xI3s8Fx1R2yg4HPzCvPhfdJ21Hj5AHGQ8=;
	h=To:Subject:From:Message-Id:Date; b=N0d9XGMdhKRvltTCe2zl11FcYBFUSO47504eVDFVmorTvcEAvMIDhxGMt+VA1ADXTu90SXvUVWjJyWBM2tJ4oDzupMW1N3GYmaNeVstlL+w1DNsJHmuG6XeMR17WU+LKaG+IS7x9toGa6rKfMJomT7CyGA0JYyhCUQDHRkNgs70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYkfoUHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYkfoUHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC14EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784795973;
	bh=p9tFVJ9T96xI3s8Fx1R2yg4HPzCvPhfdJ21Hj5AHGQ8=;
	h=To:Subject:From:Date:From;
	b=NYkfoUHbqS5M/fZ6+TSXHIXGxxg12tltPnG3Biw12ZFjfiZE6+PtqVyoN1g3kNE+y
	 r7Jb9duw5AfS72+yUZMPnXcOil0M3tbWlnMMyj6VpGh/F9bEQBhx+n34aE5qd4qndf
	 umUYy2wM11GlWWZ8KsZvzgeDRxZK5BCZk9iklHlg/jgN4ATeIxAFHfYRNob50a1DWF
	 2MLsIE41PVhw0E+rNFvZA3hCXS4LZsqVHqWjHSYiWItOT2fcw9bPZyHQXjQp0C9UQf
	 IMRwKFr1Zvw1BPJPB/lCzDGmlzREdo0dWveeyHiicEAPWqLeIUYVNcBfMcL4Pvc6vd
	 k4Cg6qEsBYsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B4C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479597370.3074.10180189570945008988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f59daab8bca40bf25d830c168db928a4d31153ff88baf94dc9868df0a299fb
Date: Thu, 23 Jul 2026 08:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784795973
