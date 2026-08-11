Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6588D365A13
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786474234; cv=none; b=t4la+Qmyouu0xoQW5oovgG9/0Gre5c4iW1oyfGXBpeRwTmRoPH+anVtI5/2Xs8tJLpw4dcYgMSnL/t7A5NSpKiACsFEMoVUryMQZx1/KILbRdSTWwh2T3trGm3mCpj938UAazkGaby2nGS+1G0FI5O3ntB/L9ItygVTQP4DQitY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786474234; c=relaxed/simple;
	bh=q4ud9X5x6g/enr4vFs6nvWe4MqdRg1Tv7ezK0tRfUTU=;
	h=To:Subject:From:Message-Id:Date; b=t7Cq346L2MxtsQQ6F6CAymksOX8ZPNx5UnAJOo+mNYPrYwJmMsIGCw89zRsOiXsb2Rty5AYPuGkMEZzVXM5UnjFgW4IRHW0iVKOVz1c/M/VnLVpM9d6zk1luteb9RIct1o02qvkIap9uHY0UanPhUCZPGcnw+xZy4Ac7EC54CQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed5SrHzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed5SrHzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE456C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786474233;
	bh=q4ud9X5x6g/enr4vFs6nvWe4MqdRg1Tv7ezK0tRfUTU=;
	h=To:Subject:From:Date:From;
	b=ed5SrHzYdI6KMPijrnfWXNQszCcTGfxYhJLey5Jr2ud2n/wKR6YopXU1gIX4C0p0R
	 RKVdLpz/GWVKkdm7oBzQt9um5ob81PGz53I8J2aPFQFOnnLcLFmqE+w8xxz6Jj2dKK
	 9+h/l2rKyU8istJAuC2wihKowl84GAarNxK0uBDq8YnxMG+BycDm1a8XQHgu9nL4DV
	 YPLryXMa9UL/snvJUP3n8jmDg3Gleg7hbq1BscOpXgBv3QlR1bkgJXkWi0h8vWNoCX
	 ++4RU0vBnliIKopAx9yMh+qNm5YO8T2n4qHATtgcw+ywuG7yymHLQSNDjAOOvXqcai
	 mzPO5DYFXP4pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA821C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647423368.5181.7188218782600004723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50cc5a7550be238bf4775a43a5b17a3ea35aaae25f1cbb89dbf25c3a764d719
Date: Tue, 11 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786474233
