Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520F733939D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791306634; cv=none; b=TTkF3pLy1kIJtq6rW+q4wdO1RssUJ9M3dUIqHiZOaNv/9Kmtp9XbUAx5swDaPbFugPNPUlu8QhdaHRf37NmDZtKabeVsJeFwW4ZHB1CCk+pj850NnFnHX9BcP16ySG4Myo7I3TUqbi24R6rsUOp+TXj1UaIbYcjq6cfxFdj51dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791306634; c=relaxed/simple;
	bh=DNrMvOy6ze5nGwemNi5ADgJOuw/Ql4F3EnbpPlP2/W4=;
	h=To:Subject:From:Message-Id:Date; b=KmuVli9q3aoHaxZp7i9JxMGhgbxHHyAsO55dUanKHUq0AQ9JL9M7YyrBfK+BttsmMkbX3x6Bg6r+EIArAErXVzCDh64uYKLMWX0h0qqjiTV+3BKO9mLEyGeHuzYgsDDKG/3PelqW/sy2DM11ZpTZLBbboiDypD0K4RfJWq/Atvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO6MvD9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO6MvD9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF553C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791306633;
	bh=DNrMvOy6ze5nGwemNi5ADgJOuw/Ql4F3EnbpPlP2/W4=;
	h=To:Subject:From:Date:From;
	b=NO6MvD9/lcgOBLwGkyteDuZXAr+Sg//ICxcIyEjsCpetfzmjPGmovIhJmk4TknZAO
	 d2z60CUXeAumI7h0M52j65ixlWNYnYHWH6ixMXKn4A6Bj/foijxXTeCWHRv7Ecrgsr
	 VjjvdtyTJa9AxdDKFalbUyQJ/gCZhDn/AWCaliuXoEyI6S/bZh3YOFWWM2uRnwzJMs
	 +rrNp2o3c9IGdcEmADEu1ExtFvA0k/cTqwWAPMitw+fP9qmUtADJYSIaqDMn3LqlmS
	 3an54FZOpT2olarN/MTJ0ZiQGt481Ul0uiSG8tOIVE/u5aERfV6KHXwk8aq39RjUGm
	 Wu3ep2bv9N6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F6CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130663368.724.8214587885566878043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eaba830b274b318185f1d9df8e65292ed3aab21565f2b656f5f64222731c082
Date: Tue, 06 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791306633
