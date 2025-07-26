Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1430A2AF11
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753492194; cv=none; b=TQesFR7aKsn9VMtObNp4VDnmJNNO7D1j+qL5EQfYAGizOMi+PtapG/ZAzXgWiA+T157FlOyM5YZbTyJwqob+tLjHL2lZSV5sFdpb8C0Gu3o5eOTLH+1ZmJUTHpbd9t95mWLrx07R8xY0el0E6IFd92TL6EaXTtqAVrSbSXGKRhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753492194; c=relaxed/simple;
	bh=JredLH7zPp+4hxGPfExvgsLnh2PfIW9NuMnzi+yvZh8=;
	h=To:Subject:From:Message-Id:Date; b=DXjo41qYGNoOEYYHLE1/guUtoJnEhL9XE2nPgRxMVpQ441XOVJLnPlK4LLOIKALk/IHT9ppjNC8CBJyuaKaaUSsp//dENVNuKPHlYjVJr0eDV2XtJgjnf2Qvr/Iy75HBBAKgNPgL8cDBJvLuvbUbpgYmSP3rq8KhRXrwtGUS3eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4h29qC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4h29qC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E94BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753492193;
	bh=JredLH7zPp+4hxGPfExvgsLnh2PfIW9NuMnzi+yvZh8=;
	h=To:Subject:From:Date:From;
	b=C4h29qC8pIu3p+K6VS7tunZ4S64wobOB+AqvsQh9QLpEJuRcxpbKcQqn975ZG2AMS
	 EFe0h184dhnxLtV+mm/y0osBzbCX2NGKLHaahiZYmKxT91qTKoY+3yiSht99BUQGwq
	 Cjn/fSyFY4Obv07JXiF4y51gfYBmqVwafJvUv/6M1X2JjDfgvb7AO+NmcUwv+4tZsm
	 Ay49pku46S5rY5aXVlvvNhkd2KQT9vXmnfmcTD2aJTlp1pkADcJ101vz700BP14DLz
	 29PTtF2V68DmyFo3LzxOkgR4JodVeNDOjTSWf3pbmdaIxnOdInpZiqNnZgvVMu4l2r
	 xPSIRnvuBfWlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D9C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349219357.28290.4538786861332333165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ded8a78fc5902675e23495456c33924317229652dd61a404fed1e9f660e560
Date: Sat, 26 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753492193
