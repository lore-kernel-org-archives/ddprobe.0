Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673942EDD69
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779356434; cv=none; b=iZSWetLBEUKzmTsSTpQM7bMqYq1TB/hqrfKc/w1heARowRs1RJwf40fghZOOWF2+FZNo3eUlArMHVun5kqt6yfJMiXmEMPceqZSpO3Rir9Ea+cY4BI2etEybgqkXM8LP8tQaZE2E5uSBUqTNRrSjjX890vqe6ZfPxDY3Fog8ErE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779356434; c=relaxed/simple;
	bh=odTfcXdIqUok/AcWDvfy0YcphD1DicPUSkyWqFcFo7I=;
	h=To:Subject:From:Message-Id:Date; b=PlIiMHVRCV55LyA1JMR+r5FQusc8bQ6bqOXXPHuC0djl+VVD1BGqDgZlmvWAY/KFiJ0w/BoPk2+uSH2nbOjLAAmAtJFnlO7hZSVR5h32aD3SRg2CUZmdwGCgaR824XXq1Yk1NUdoLk6X/Bd+aSjag/4E8lR+IpJTyxDrIUjqLbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSP+cb8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSP+cb8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6094C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779356433;
	bh=odTfcXdIqUok/AcWDvfy0YcphD1DicPUSkyWqFcFo7I=;
	h=To:Subject:From:Date:From;
	b=uSP+cb8O7fsObaP2+uLEZwYpXmy7cvEKhKgH5egYYfF0j9QaKn22zkQsMEithy6QO
	 1u3rf4rhEoAPrbMim8c9F0gQnnthuWdztL8Y9pq9yIW0xQQbEmS70cHa7as+Mmr1tP
	 P/0+8d4olE2w8pHOpS7FxSoSkKhVt6billC5H0Atzoj6BwRK8YKilfJ1V90IwR6oYG
	 HMEbKvJNgCGi3HI9fPgi2WwNNLjO94/tUZETdx/cEZSf1AT39mMqtxDhF1FdkXN+jn
	 3uB+1+3cfgJPV+bPlmL16sWAT0cLVgEwwadH22EYUzAa/uoL3rZpXoGje4w84BpFx/
	 hm3dNSNA1447w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD20BCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935643369.14686.16988908274366593560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62178b4af2788dbbaffd8012ab9b530d2642033dd78bb12e9560488d2e68db1a
Date: Thu, 21 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779356433
