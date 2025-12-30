Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910D2701C4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767134634; cv=none; b=qUOZBvR/UOl+5l6SzeYvrxr+7l+WlXYxtgZOV1Hk+JC/Ocvr9xs6hblrCBsh557RpzQF3hdy/2Rp9UQACXtYCJMfkl0kvCqldKouAtNTUkMreyNHZPbKd6ZcQA0LZP2Hb/KgZ41xQSMhVTE7FRNoDLgEzodi6xf1YGRr1XY07Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767134634; c=relaxed/simple;
	bh=0sz4RY2j8VVxdCQfxXy9Iu1BDYkPQBaktqw8IQSU0PQ=;
	h=To:Subject:From:Message-Id:Date; b=WBaUh0F7GXrLPZgsVnYZiBTEaTP73vXSW4sZf8NHwA557rWszL9qD4ZFW401C/tJIy9LYMR3AzZPwsK7Cg+XpTvRtLHS8cSrm47ulA+hok1x8DK1oHLzeyAmK2HC7FwAu07nrPnk/+TOzwAx5uMSnDEy2fFr3aHG49CKusLtipA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIMUVQpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIMUVQpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767134633;
	bh=0sz4RY2j8VVxdCQfxXy9Iu1BDYkPQBaktqw8IQSU0PQ=;
	h=To:Subject:From:Date:From;
	b=ZIMUVQpYQtgLerBXOD0OkbG3Z95mH7B1TWcL6as0swZEYesWD2NM8G7f5SSry2tf0
	 eIMY17YP8ft99Ek1xPW0Key/N9bDAKLhM9SjVZccLVD/9/NF2itorTqYkLPeVkSgCG
	 dQ796651p6b4nTnAlPP1eCWqltm1Smqt2lexY5Rc4Gp34JhY5dVL9sFG+q5dLTMmAr
	 qG3daCokZ9mpOQMWJvuiWoWMh6AQptDL0iuzW27CyrbhBk5si0OAQ0Flv3oikuCwPp
	 AiB2lPV1Ei3SDYFixYehOR/2i/dTlMyI++xO1QqaBO7Y78vAqpHjLjI3FLDQoNqlUi
	 N36xjCIq0ig0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012FEE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713463358.15648.7410589881383689882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34246f2252dcc589411773cce9e53cba433065bc15800c915f6c5294efb9f7a4
Date: Tue, 30 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767134633
