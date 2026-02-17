Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1974F339B41
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331094; cv=none; b=df/BhvP9npMRPMynwNa3+5dX8rZWmhbG4IuRlFNLbkR79TJ3dxsnY8MupLMO0kMAjQ2UQGt/Xad96/SICFFYy+yGNWS2+SxyArGHgcSJA+EdvrrxMML/CXmoRvR3CgoTbPLW+fBj3+W42bydU2axSnn2bT4iKv7PPV/gg+ir9HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331094; c=relaxed/simple;
	bh=1SUWP1lc9BTYJXN+9BZP9vlH87qXFXxaBJcaxD+OBJU=;
	h=To:Subject:From:Message-Id:Date; b=nOdc8eRZAtshqa2k14gYYFE3PIvAiQUkpeDfxykaGgeCM5VAPKNMVK1k9P0AqmEFFTP2oxT7dqRkXPvZRr4GgpHWqrIhTu6Qm9Hq3rZDGGZXeHQq3wDypMtxoc61vAWVtb2kc9aer1TQxD+gsfmVR6fjRZq46D3icKBKvFwb3iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtsAY2AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtsAY2AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1862C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771331093;
	bh=1SUWP1lc9BTYJXN+9BZP9vlH87qXFXxaBJcaxD+OBJU=;
	h=To:Subject:From:Date:From;
	b=QtsAY2AOqRgX2wM1LzXWyenMiw9iWsdSxi+sgL7U/tYJij/utMvcSLPqaRxJUL9Fk
	 xbt9neRSyESZjDAGsBxYQiFRK8L9DKoajp2X1eLXJ8COrrwBlIEYtImX6v7YqajIKl
	 fRq5l3bcxEtwYmzIkMjEoJcVF+byivxepxz4Q28Tdde7nt71CSV1VgDRjpPyevdroe
	 1YZLwE6ZXB0ovlu67M9YQ8RImINIXYsoYVJcMfgijLt5AgEg7oc7cMemzpMgEmB60k
	 803SRSKcsofJnrGmCHEX8xYicxCmqFx38NqhNsMp38gPrrdmsGmMulSYiC8pZIEo4+
	 SRUKbhSUL7cbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A36E6817C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133109358.1622.6277437583944934783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be719df5206e5ce6ca66dba643b0280240ac4264d58883d553ba34d274ffd065
Date: Tue, 17 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771331093
