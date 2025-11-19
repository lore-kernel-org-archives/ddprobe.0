Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB832F90CA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763526715; cv=none; b=CnNTovJVDNwlesV/4FSavZSP2gRQu4Tg7G19ZNzGOZIawiUgtvLS4xGLnPFB2/u6f9OltwbiwvOqTuodaXmJZCuykwuO88OrVPvJ4/T7ce7HKQpBOC+TuiQNShHD0ULQsurbp37lRfaCTRqvEETeIjaujiUAWSUlSXLFOa6HgkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763526715; c=relaxed/simple;
	bh=Igi524kd2gqFZSmCbxeaRJblzXS0HLLg893OEniol6c=;
	h=To:Subject:From:Message-Id:Date; b=Q14NiHODB5KQ1AXLeTn2ZcgfIT47e5G5FVc4xDOqOIRbNilG36Z5nBfA2Topv5cznhE0wGsvKUSZWtZh6npqkObIs8zdZJhzaUJiMDWLg0TcCkuVkop7zPf2GsuPArEBjqZFZqd+NlJRAs4Q4c0lZ3qsv/i3wTkIAFbCKBpya+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxymPCG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxymPCG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4B7C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763526714;
	bh=Igi524kd2gqFZSmCbxeaRJblzXS0HLLg893OEniol6c=;
	h=To:Subject:From:Date:From;
	b=mxymPCG02zQm9Zb6z0dx6mlR5mnNH7ObfqUZgG2DEfF0ZtP9qf5bjSBCMGJBDL3/M
	 rpbdd/lNBOZZLyn+Y4iBd0WtWIvHjkt7iSvBBF15085Aq7ccPwzbGk9q+ZyNSpjXca
	 oYy4RFcW8hjW9KylkAiMz3snTV5vJDEhOMptIJFAND00jW6XXojgzI7Ub16C1XWSnK
	 WNa6b4tPz+tu8IUApxD5JfE/cfSRYz9FTpF+qxZw8hWqOnQFXhzcqoengujsiVOmwR
	 f/rdsmYuZ1Z4brFr1Ey83+bxiZNqAVYUjDrt19KUjpLYjvUO95jf8AiqaJaqDIGkyJ
	 /YK8Chx6OB0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268ECF256C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352671359.29458.4730563894965669770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602222f7778408d2da25a07c67e61270f8feb7b34676e9a8dc87b1d44c1ef34a
Date: Wed, 19 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763526713
