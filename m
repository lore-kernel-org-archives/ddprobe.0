Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B701B86DB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720554383; cv=none; b=nAcJc3NhWLq+eptob8ZgJ8uhcvXwQAk6LlzR1gCl8kG6+vGvD+WGYIPy+xNo5JK5jmmPabpoJwWqLQvljd6HZmjLJE0mtgnNWYbFSW9FLBfqbSrt/k8yxPhf/CsnSak4aMqY0T+jYY0hCMFwrq9GLa8REsXcQ1hEGLcBVn+ksok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720554383; c=relaxed/simple;
	bh=AHn9JMoynD1Fu3eTBFNLSYqkpsyqosbSInBkCkVZvlc=;
	h=To:Subject:From:Message-Id:Date; b=ULPF5B/V7mYtRPoqE2GIEYWQxZFVfv6j8HE4pJonTKh25Gf3fae6+h/lnEn1AI/BxlKi+TiydV2K5+3MbS2oa6dNWygnixQSNDIGWteEil6pavsHHxl03VR9i4YJMdygLoNIUu6VdJDw48JPyBnT56Y9OZBGerVSHf9aOS/sqrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB9eKwbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB9eKwbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFD0C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720554382;
	bh=AHn9JMoynD1Fu3eTBFNLSYqkpsyqosbSInBkCkVZvlc=;
	h=To:Subject:From:Date:From;
	b=VB9eKwbzX9ounb+wzItZfOYr1qYsntYmV3HX56/T6x9m0piaY2HEvmmxDzbSdSovH
	 WZeCdmrrrlNEMK8EdoVCVaWBXRss9boCBERclY5YWLCFTlu+SOwiTLuTrk7EffXavU
	 ZTr7l33XQ19k6+O3TaQXhrZW3YqmEGQsy0SYokhodIZMdDFXah5YQO2/JvJAgI1++b
	 0oPScGtQhFzqGnYOjQngDideCR8tojXBWrlKDtxc1KneQPsbAUfBbuJoJt+J5k74Pi
	 c2rzI4oQUeSNGbSQKHbcPGps6BJfiyyCqiqQa5MvpUzNPt4SA7bd5M9fud1vJkvUP8
	 ye06mLMkX2l6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AF4C3DA42
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055438281.32755.17299433912595636310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c721516ad2fdda15a889fb44b54e4f242681b1e6ede062c5603eca8cd05c40c
Date: Tue, 09 Jul 2024 19:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720554382
