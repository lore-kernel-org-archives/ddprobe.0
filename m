Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE81B3937
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745707794; cv=none; b=ShE8LSSSnptPUtST0WxiXWSR5vkLOIHiUPgy+36ppeVY0CNpB64BSOxlaU3IFUs8eIvu3MJHaB9/L2kpbQgW6NXVOCHk+RAyn6BA96B7TdqIcOr4IWbr2wYoI4BaSpWg3ch2Bt8dHR+Azr98RqI1biDNQt7JORdS5Pzk7Z+T3c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745707794; c=relaxed/simple;
	bh=z6UeyyjTm8S5zDZL7LQgcHeE6odJzPu9sUUv6cRTC3I=;
	h=To:Subject:From:Message-Id:Date; b=HjYxGNiOUGuwuAqh7nliX4p2L6e6C8NaesOwtYu9zbp7UxRAazeOFfogMPmrQrqaddV7hIMWqalYJoc8Et9N9df/xCp/NEWFlYP12ewAVHaoQAkIKfQ++yIlqNsA2+iyv+T9smVjkjXntZ7QjmApB8Z+6ip8mxhY5uy51jMZ12U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZwTfz+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZwTfz+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745707793;
	bh=z6UeyyjTm8S5zDZL7LQgcHeE6odJzPu9sUUv6cRTC3I=;
	h=To:Subject:From:Date:From;
	b=EZwTfz+xD4MdzfCJaeUvTtWFxWDM2DnhL3e1BnPGv9XLIRd8qdt0GgK/9oIXmxZby
	 U47QalmQaPmmCAAkj6ttUHf0CeFx1oT0nJ1CDX+otHJTYS57NiRyahqzVntIt2ojJC
	 WueEvtJ7JLhkVekKc4PwypWeVUwuL2pYoN533zA5593xjAHeDKzu4Lrq1rXHCiPuYM
	 swQdBPun5kFA+ZGaYQONxkVbWF/9JN7600UWw6MsHuHH4/4oy8eg7Sq2Z5Luvqt0u1
	 d7ytFVlRIFcjrRrMpCw8t+BCk2gsXgn6+JilEIAkREq+pY8en+37fo3pcqe9tYnT3z
	 /7ALHSGbJ4Gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CEC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570779360.671.8236796331083626260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1fc79042e20508766aa488b4a9155119126ecaac9b6f40a211e1572457f494
Date: Sat, 26 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745707793
