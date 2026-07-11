Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DDB27FD74
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783757914; cv=none; b=jNvrVd3QdRzgCPzliHWXsutCvStJBbfTTYfahDMQf3XITaXdhFmpuP+FTBaT9Ze5bTFaY2WCP67I8A5gLSFRIzT67LTuG6x0lxrpHAa4a4xjCUfcOxM18NZmjm2K7SbCB5EWmj7HfVLg2HCdtAiOXW8Dhca08DdDpIeIE13JfS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783757914; c=relaxed/simple;
	bh=6zNhM7DUXAonhCTbF/1qg9GQIhuLeWgvF1PbrrESVd8=;
	h=To:Subject:From:Message-Id:Date; b=FFt3Zxx2VcVz9gpfFsjjJnSE+m2ulJvQrhkSQZ7GYQNo5xzbKnq8gJ4hORyv+yAi3RqZm9m4/hPsL/ygrqejJUYFJNNQI4qUYhicdJdkugEk2qk6wFcUVIQLrm22ONJSzrgZXEqiy1nP0To8DXoLNYyc65pl/U7xQAYy/k5Fmwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUYZGkCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUYZGkCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF5FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783757913;
	bh=6zNhM7DUXAonhCTbF/1qg9GQIhuLeWgvF1PbrrESVd8=;
	h=To:Subject:From:Date:From;
	b=QUYZGkCphSz/kjAb41tmSo4wSa3FcAVRo3a8pGVCprG8CwDc5lxMwdNtl2Nz3noXj
	 gi6R2j/Kr/gQf4/C3qmeL2RdNrTZu9VeMn9dpivJbYtu1MFfVmHV1WCqQVpYhRQaJB
	 43xPQEJHjOxOaX1UL8eBI1HvDVQkACmzYfTxUy9OrSgFn4C10R81SVwWdyNafbAy64
	 F+aCMLhHg8swQnb3fyoarOR8pZGPXB3z534lcHU2fjdI8VRdYKFFWYezUAC/bUe/2a
	 PC8q2holYXIgMkmTLzkVylbMdkTT+7l4x3RnPgYjUjWHGmzvbBnQqGW6GwXbMT2gex
	 MVEqGBszpLZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABED7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375791368.12669.14788447738132787256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a0896b212a0fd25752c5fa79c6b4679f68fffe155f3303997f064c8016a54
Date: Sat, 11 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783757913
