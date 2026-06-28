Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4904922097
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782687514; cv=none; b=gT6+IqZye1V6FF6Y9Yw1YwwqS4DrE3lpIk2RGHzEBT+n+A7Og5yYfbhh2dvBkjqDSKEw5nJC37l7/vxQXsgdO+4Xuw6l/74w1SK54IjOY/yN5zI02VCJbbJcpDpmxnVDJZnVQvjji2DCT86ZErBmZbWpAMEnBt+TAFU4rH9DWPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782687514; c=relaxed/simple;
	bh=CahGuUUhe656datfoIp7rttxdTAlLRyvl+EfoViZbeY=;
	h=To:Subject:From:Message-Id:Date; b=JaDM7Nq+d5prpIFrtGArBR1xGMZcBFEvA9T3oBOrA+xlmXtm6clGbXbZu/Z4q3iL424wnxayeQRWdUtkBhN6CF1jp+B4nOoOY7ylZ/PsDE7S9iFevf/SnWTn0QAhQFzXZ/BuY/DLdI35NhJ6hEmyM183qHgDAt9GFSl5KWXInvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alXcSXt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alXcSXt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C60C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782687513;
	bh=CahGuUUhe656datfoIp7rttxdTAlLRyvl+EfoViZbeY=;
	h=To:Subject:From:Date:From;
	b=alXcSXt/O3BrlKE+JaJu3+hLw5YaETGEKRB1h4aRZToebYNtwElzQLTgaf31xZYpB
	 hOzhQez1K4psKL2hTpevU7NmCTSmbA0uAXhFcNKWvMS7Cmtm0NLK2zUe7wcRf5ZXwQ
	 tzP/CCzD77986+i/lKdNRX2/zduYwt+B+152YiiZyFwfGLouaYRAtBU9XmsRstK8gh
	 fziajP2iBhPHPQQay3e5mdbZxRpUeVs/sQK0wV5tpyZKznqlOPahB2ygzCo0hZJMa6
	 EWclfuiOwEoXAYcaqQU57NyOl6AI+/mkWRWrvqhGRJ2uy/2u1V2hPiUCmVbCuBX4Ok
	 hiHpX38w3GUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268751368.21924.6379853851680889783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3026704c88ff335ae5a77344b8f003b6adda1f9ca3f22f7a738c239efa1aca
Date: Sun, 28 Jun 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782687513
