Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE3B1F099C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757872794; cv=none; b=BCkICR7/3JOGfRCkTCZPXlkJhiVwJrIyoulbgOj04crq3Az09kSHRl9Ab7mo9ahADS+9lrwpfqZoC4JjezuB0T3dl0OvU501huYyf7s8cC79C8VklD3Z+SBBIdPsBnhvz47s/18faMi1Z+RMRYYU6K4S5Z2fVD3SNJ1Cw/k480U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757872794; c=relaxed/simple;
	bh=ai1PHAdLjtd24269WcJsN10HUmM0c5VgfaxQsrbKYX0=;
	h=To:Subject:From:Message-Id:Date; b=l2qpOmRnGLktXjK7HGjZ2DaZ7YvcdYP2WXHxrwtx0oGJtKbtM8AChCkIiBWB8NLI9yqBF//EQ3fLBZGg7FIY5XXthwrHWqeBk7UsZKef/eqjT/rCg0dZOhV0E2pMRX6WyUTmYwQqZCyC4FyfJ6am7fOJSptSkdCqWN/Z54DXe8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQihzg3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQihzg3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A97C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757872793;
	bh=ai1PHAdLjtd24269WcJsN10HUmM0c5VgfaxQsrbKYX0=;
	h=To:Subject:From:Date:From;
	b=KQihzg3O1ZpahSac6ozIGuqysO8vb7UYlYu0lMQH3eQpRgJSJNjRiiEghcBYG0WkM
	 axcbe6I9iu2NyYDgYXsL6evU1sb8YmyAP/gNP21SFzS7Au479j6fkwzP+FMuPuRWV4
	 X4HzM0uoRvenCG6Vb/3Y5iyKlEkONT2sFROrDCN7mYoPdAtEPBfuY2sYfBykp+VB0e
	 v66lKkPSOXSGpu2qV1pfjuBn+8lp+eGwt9i/A1kkLJnsx91gvjbsnt+mIXHNew5zEO
	 jMTjrM6IGDY4zU0/dyrb9mTI2k3QAY5VfmnbJ6DE+5hTFRYA0raX06QsyJnMx4/GL2
	 sLrRPHbmzgFyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB2CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787279358.26880.17152764159471122038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac9cc45f8a5e402ce2127460b292477c4685c107621d393314e74248786eeea
Date: Sun, 14 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757872793
