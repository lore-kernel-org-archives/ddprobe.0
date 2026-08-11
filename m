Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5864C233952
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786453234; cv=none; b=Q7oU7RAleXW+i9nr7LVyyOsw0S85gkatA2Bfr9yRaNewT0RhFUdyQqlpy/lsd0PRSPkZHAxteyjdF5S8AvLVfErdQCV7wO7Phq3BymvHku/AeN5qdXakK7aAKSscSFZ/KAY+3X/E12RAZE6c7TNC8SchzDtz4SjjoLCMGYuNqxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786453234; c=relaxed/simple;
	bh=SNJ7a9u8uaPdh0ADrFS2QQ/sdM3e9NAdDeyuWu6suWE=;
	h=To:Subject:From:Message-Id:Date; b=YPs/ccXZHvncsl2/Ue2ZlfoONnxOMcIaY1MDHCKnz66QyG2jEajUGa0j6TNcVQiB0D99AAwUy1BwXyr9z4fOmfIhGoG8ac4waS0J9k6mlBnn7BP7vukGGpzikolrK0D9JJPN6fW75MFW6AtN2CCu89v+zPlllUp6jQfgT58Sdx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGDsECW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGDsECW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF10BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786453233;
	bh=SNJ7a9u8uaPdh0ADrFS2QQ/sdM3e9NAdDeyuWu6suWE=;
	h=To:Subject:From:Date:From;
	b=AGDsECW7yNjUSVkXT8i0NEQxqaC/3X4eAWq8DQdeX69smYp0B1Wi04Vh/lIWzrAQ4
	 8PQ17x5IOSTxDk1fonmcQnqeMbOElhEXERcEyV75MVgc5tnweHBZUXuhYqH6f994OX
	 viD6Hz8yTLGdrNrNm6OGTBaExCggDPdWLomK5AqIc6JIzY4K3xDcm/Q+RsDSGjUXQb
	 jMEQ8C5Y4hVUDSGb9igAlEmB+jylB2qLFM7mK77NzvINqcfdVFUAbTd7Qf9ZgSPjtU
	 Mpl4gOP+euXgAWHPCUDuicy1WNYy2em2vw9s1MT12TjwYtvZIVFzlATWvJD757ka9h
	 FfVDggX+Xf/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF351C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645323370.14533.1442885320953851890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dc4f8def61bcfb628d087d37c2426a9fb13c771123ea4f4416396d9f33ef48
Date: Tue, 11 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786453233
