Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5410723C368
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782080794; cv=none; b=QnOZ+BqXAFWW4feXr7M3kOZiTZiWjCfRYCsenxOTS62SxKLyhConjTdBqPv3kc1kBvXwUpeAiPI3mut41YPcaRvSLZjEcWfsgwInQG0clvA5Ol1KXgAjlZsq4aACJL2SrSsMunK1yDPwWDYgkLkU2x+bc+41smATMtpLDLfG7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782080794; c=relaxed/simple;
	bh=Vfc2uVNgkT9USJNKWo8GSn4zM6yTDwH8mPWcteu3ZxM=;
	h=To:Subject:From:Message-Id:Date; b=NpJjvisLdXf7Mby0J2FrCab+eXlY+zG4S9hMnOLzFi8mC77lShvY0UHps6ft7MKtkw90gfhJayav9FVA7XnnRftr4GtXq1uFieKJDoX/3eay6IvQhKbk/sg4H4KYyHQtFuodg9HHtJmqQqSNklzclSCuic1bdS7EXb77a8oJkuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWy+iGrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWy+iGrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDB3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782080793;
	bh=Vfc2uVNgkT9USJNKWo8GSn4zM6yTDwH8mPWcteu3ZxM=;
	h=To:Subject:From:Date:From;
	b=DWy+iGrs+niO6ON9z0rN3J/TFYvTFZARLT6p1DT2dzFAxWjJVRVAagKNuUHloQkTV
	 qoiPM75cr+QRT/uNPa8nZpKzD+3M3lrCSL+9mLBPR+f/j96lUIE8wZaAMX32fdARKM
	 7QOLdUEYPncwhxGziiz4XW00O54aii83xOWM4hcppOu/Q8kPhViFlvZfP++HZ0pNxJ
	 X4Jdvn0scVG7A1i7tX+IxVv6mvSK+Rw2Z28vn+ySFjaTkdR5YULJOCeLEpzKkVjuKQ
	 Yx4N67HI40vYe4c5Yvp4ric+CEN+2g8KjkI6WQJauEnAb6ubytCToQosQtzkFTERSH
	 jvMSlOk9TpxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B128FCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208079369.26271.2062251711949422329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b03915fce6acdb8728bfffcfcea6a69c17bbf1a9e1ece3d801dfaf6f9037ce
Date: Sun, 21 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782080793
