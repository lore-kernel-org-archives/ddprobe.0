Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B695280CD5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786077034; cv=none; b=Bw/Qry44j/hLShQG5A6gyrCcMozVRhFd9thH7WmeX0c52CJ01fIxvE/QZSAXcDL63JCd7/2xEVroQWBFL638X6+P0OmTcJdi/OW9KrgHONrCRgfpR+mNHbmuHC5xcTEj7Nn4nZKn20GtrlcgPNfXfBwbHONCdF6um8rRIEy+AnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786077034; c=relaxed/simple;
	bh=DdEY0V35es6J9ABbUgmkmnCaIECcpbXAYBhjKTeboCI=;
	h=To:Subject:From:Message-Id:Date; b=eAX5B30H8cH4mvIcygV/YL0NhZ9A6nnwyVBwZtTYBbId/FgmWfRNrzpn2QAJ3zQSKmDkfwFsAfwy7UyKywSrQcvvUZgNddRYNw36RggfDEIT+0/ieqQqxS+PfRPp1lzDRc5IgfW4669p5CD7X/1pTUW3Ni8u8jVTkdu2ZSy6WMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM36sAO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM36sAO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F78C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786077033;
	bh=DdEY0V35es6J9ABbUgmkmnCaIECcpbXAYBhjKTeboCI=;
	h=To:Subject:From:Date:From;
	b=YM36sAO9L0yD6irYVvGlgk21RQftmyOFaT2V1ky6fCEnLUsyfz3i9q4v3Egi3MnxH
	 EFYR8PdX5slrPaDvBtQNSB52ATnz+IsEcqJ+skkSngaOvOoAbxUjnPKbRbkt6AqB+3
	 5jUj/IYOeQiIMDMPTHLeGMFtiWdIlm0oZh4DdB/X/b/5nedT+rLZ80R1FFrctFr/C5
	 CiGaWitOKrUfkQxzehwU1wWITWc2CGRqgWvhm/IwXhAuIJZ2+FSrYSQe4fcJE1+/6k
	 J2C9loXclYAEWTBaXsy45Ep7GfDvH1i/LIp4rWMKJQbybzuhmP1L5SR5Gg2Fj/PN/y
	 F+OkCt//dWf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60D8C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607703370.28530.2642595139034568591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a92eeebf328e5533d2cc0ef5f0d39b916dd4669f218b7d976a4fabde2d47a8
Date: Fri, 07 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786077033
