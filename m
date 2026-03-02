Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3D29A2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772409894; cv=none; b=CKbreVv9UeXqOU6q9iZjFU+kMGmkeKGAkAf2IZ/XR+fDKJUMpNin0VYnKPc6b4YZR5fF/1m+YxLAwo8FEciASl5lj/KVZ6YP2BgWnVr90mhVewQhUbwj5BV6+jHeaMX5ka1e9F44d3lCQjlUzzAz1cznuDYLgqJWEpOrLV9wL7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772409894; c=relaxed/simple;
	bh=x2jfKNIa/rBvCQbCBRI6l8aP9O5Yj/j33AqC+wgPpU0=;
	h=To:Subject:From:Message-Id:Date; b=Qq1mfpv4VA1r3ce98JDc3moDwUL/Z5fxWSzE/DbK5An3rIUCCopF4NE2v4k5/alGvEB5Y0bB+cYy5ex7NTfDyvQydnuQ01sXhpFxLVfcEcWKewaKm0lKvOFWzY0SZAZdFe0NugW8VuuNDOfhEfsjGIylQexyHmxlSbLhzr8CXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6HE5HMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6HE5HMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABADC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772409893;
	bh=x2jfKNIa/rBvCQbCBRI6l8aP9O5Yj/j33AqC+wgPpU0=;
	h=To:Subject:From:Date:From;
	b=f6HE5HMxqgckogi4e9KKgt1XUzpHYFhO0uyKH7zWtjzcd5vvEevR200PM7Xe1/3eU
	 CQ/Fz4xAAJsvOAElxzA87a01eagGf3G8kvojxWS/dwVp4Jf3mr+KUocl+0DjYLWLNX
	 1+e+AidptL6I976onJ7A/kBuES5FHJkroy1zvRBUhyUMuqyZ9nXs6XvYCxV+mUtY5d
	 JjGqEnnAlsB0IKanWkxCT3bZ+ne/INN0G9sDKaL/xY5gkKIfljUBV1ryLIPcbsKltG
	 VEwO5YjJZ2gWrR0YgL1EWcp1OZRpJ5Dz4KlK14Ml4xicxOAWlpTkmzZiNpQnotvppA
	 2sFxhPIgS1wzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7299FD0072
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240989366.10218.9562341783080335977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dceb2c613a5782c22f70c3024de1b321c202eefcb5439b1fa9c1ccb1a9b165a
Date: Mon, 02 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772409893
