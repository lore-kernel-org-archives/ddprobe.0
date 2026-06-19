Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C0312825
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781849794; cv=none; b=hpnMKjdGZIPqLRebbW0k7o/7TQM5WMC8zTodRUOebIhO4YzFdD5pV/7NYfStNiCfurTQ1+e6b9EYsW1w5Zir6XIj2zHs7EpqvaYiDvD5MMltMLfoWI8kTvb4s09lMKeEWTreSa6oo0wyszJbD+c2GZieaXzCH/Zn8kEXZdB0uN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781849794; c=relaxed/simple;
	bh=rNQ0O/G8dHd3lWANVbzPjkJxtGLtedbNuf7gCUx+waQ=;
	h=To:Subject:From:Message-Id:Date; b=OhZ4V88DWSRLjIQB7kWH/2soYtVl9T86kJD4rz6DM6iCsVCtz39cdieyqu5ha6T0iootSw8mnn7OFcj1WD7m0XWjf4bFNyvwKQ7RsKUoBZKtg0518Pjbpyz/ZHk5g5knmueRaCu67fdQbRomuyQ/nfd6JMsJl1/rOXqL9I00eUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM0riMxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM0riMxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F7CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781849793;
	bh=rNQ0O/G8dHd3lWANVbzPjkJxtGLtedbNuf7gCUx+waQ=;
	h=To:Subject:From:Date:From;
	b=UM0riMxVFC5nf72OtZrHRS2KdK3WU0uvIWvJbCk2isatkMorxYMSprvzLgeoEQg9L
	 8VC5AvQmtT6wYKfEq/nhN/61QrZCZqk9IvGIwAxNOR8Ytj638HI85pJ/Mrq/7vN3vg
	 cc4OtkeYI3Mrz9mcjgq3mVNN8M/mcnVVxdp7lWnaT5gwwxREJ1yk4xRtVZUHP9t76M
	 K+Pa07MDcLVwMC4EPmOVk9ZFjuejSnZG5yZixvfelmP7T2DbY8XZJFNcD7nvOmDzIM
	 pRdv0tetTfFOA7XyDaSNPHK9CuNqHBOnlhjZJQ71mxB3nqNUYt1Nf5hBqAi9zKyRab
	 N3kIHswEyLQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A84CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184979368.1909.5650081429804167432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42951865a516dc158c545bbd1f8d6b05d9ffec41b0712f97e94b818f08bd9bd4
Date: Fri, 19 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781849793
