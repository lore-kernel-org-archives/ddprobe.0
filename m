Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9CE1E1A3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766435634; cv=none; b=XEbUM5Bi5K2+VDIElmJKYlbnNGuDted5vL7561YgwnEW4FLfuUxI6f8epxczRvMXP4oEs1KJ1vg+fJSFeTWsSVl6+b1eaZhwIddo1QZCuLF/oDeWYCrnJ0Ws7XPLLRwhFzpS1pCHFLcHefk6a9O7W4HE5bqNsAcBNzuUOUd/Eq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766435634; c=relaxed/simple;
	bh=9gvyxj9xw6CoW6TeKrtpNqzxwCtL/mMhm1ZibyNIQiw=;
	h=To:Subject:From:Message-Id:Date; b=psp7iFwu0o0daIbXAobDY0aJZ3+oLaSZLSoT9FkDXbvLMEdmmDMgvGj8TaI8Flfc2kfPd7ysscjN06IafZ2Yvau8RF1xGgrKPDsQRxe8h9fSsBvQIhXmAa0osaTe3TUr+VwwUBItE3cN9vNyJHs+T5U/fdjkWoZu5QNw0qy2hEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtLWopxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtLWopxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCEC116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435633;
	bh=9gvyxj9xw6CoW6TeKrtpNqzxwCtL/mMhm1ZibyNIQiw=;
	h=To:Subject:From:Date:From;
	b=rtLWopxPOyGq56rtNdAJKeSeEjFReyUBcj8CJCsXujglL6KNF9BW0053jI4XYjNIR
	 oe5A6lV+FUcTZM+DiDt8Ax+UM5/3aykjvFTvWQBZx74ZLd6CRT2o+FNjEeKkNAIixD
	 jR0Ji4VcajwLiA06rQHvKPCNZkfbXbdeJjNewCmKA78DJdPr1DB7M335ptDkvOUr8v
	 HwzIUkNrfAm4DvHsfKXdRUWTjXSlDEiubvrt5LGYlD3u4drotDylLvDRYuarcDG7iZ
	 myDViFKhbYEVwFKsbuV7d+s0Zhhn77jkjxis/WvlBkIOim8NczYgw+VHYjr7R+D9Qp
	 I+TZMOcyl+GSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90406E6ADEF
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643563358.15513.1220803217453080615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f51423318113448e66bcfdc4085d7f70a7060c0beaa059782508a6afc20226
Date: Mon, 22 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766435633
