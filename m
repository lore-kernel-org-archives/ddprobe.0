Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C81D6187
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758925194; cv=none; b=qJPt9iRTQ1z9Nf74IBlTlYDhAJnxTkTWuFKmYelxkRD/IlPMuY6FpjbwLnLllawuyqIv0QZIDvWQutwmVPQDuq0TGwK1Kcu0AFVx40Y59j41xd7xWAn9cVEULL9hLirXGpHsYrZhCEq0LVPhjvVC8Fe+EMghgWr6L4FVVrjTNBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758925194; c=relaxed/simple;
	bh=JP4Kt34/QwO4yt7MCNQR4T25O66+B3BzKERdx0SCWVw=;
	h=To:Subject:From:Message-Id:Date; b=MXjlVJnIJ3gKKf0FHpKMiek0PWqT1ss95vc0sdL0fMkRxAH49jq4nE2unbea6c6uS6iMGW0FHik6TWe2VxNp69RBjDkvYFGvYPRZsKeobSmTY4vv92/PkO+pLc/o6gvmVMSvr2eszuJAZ9DDM5/w8SB9GSbsYTS9TvUdn32TxBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0D37wPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0D37wPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA90CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758925193;
	bh=JP4Kt34/QwO4yt7MCNQR4T25O66+B3BzKERdx0SCWVw=;
	h=To:Subject:From:Date:From;
	b=J0D37wPUzifcbVXwVrMPu3Qk6/BLahwPMThNI2D7HIrYMMAdn2PWyqvLz/KRAbWmq
	 4uaBfs69kG3PPBES2Kxf/LSKjRS/Jq56rOfGdON/qen+uTgHzwfNhbDWbc9OZah0w1
	 IJwr7ycGqqsWjxwksB18oxkidLcjQx50dKjRI03eGUppTLsdApqYmrZ3X50YKxnaKz
	 WY395yqYFqflaX6H7ita33CdGAefzko03B8FhZKdn6o/t0XHHaX4aBDI4ll+iJu5rH
	 cVUgxbkZtKu3tIBXfiSs+1CD2eCQt8j7EXK6GFSBsM7N4Pmzc37En7kzByGV/qkMId
	 GH9AFjEG6VKIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C6CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892519360.5618.7368060527509778660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a947d6bfc1dbb7a74116d90dade8232e137e55729a1f85ab74d7f963d5f0868
Date: Fri, 26 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758925193
