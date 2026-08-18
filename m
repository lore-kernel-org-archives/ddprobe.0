Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3315474F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787092834; cv=none; b=kFrxBRIZpWS55ncg+tkslJvOP+Izd2d/GkVnemb/RHwtHcBRcK79kOgqS17OucXDRmPmUtmp0ztRggJUX7yLnBcOugFF7HSJ2hEYkPbAiXanxBzZcG6fMflhVEy7pRhbI7rq61v6pgZ2V7e06ax7a6XbKyQ3Cw9RMz/TmIbsIcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787092834; c=relaxed/simple;
	bh=NR1T5bblU2VBRLMlIMc2g3o2LfMfuUqPgj4/9STtANU=;
	h=To:Subject:From:Message-Id:Date; b=a6K5Fe8+FSPmIAOAmMUut/Tn7ShjHXD9jfdYS4PqjiVHP83/qMZF3oJLy9LTs2mhgyPgnu51tZTyy4OA3l7c34So5mR0VPcpapyYFziFwbU3n77BcY1sxazo2sMnlaLq0Xu7oCFaByB6KFlbtyOVFj0jD3m3kPk8sVxoIvLyJJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dB4+MMZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dB4+MMZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF7CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787092833;
	bh=NR1T5bblU2VBRLMlIMc2g3o2LfMfuUqPgj4/9STtANU=;
	h=To:Subject:From:Date:From;
	b=dB4+MMZg/rMzDjy856RAMI2EiLMGQxdASNTctTi20tj2czdlD5h9/XUraJWzn2v2d
	 ph0cfyKy6UHn1VuNkR1ckXHWnZ3w+hacoTQdx85K2ZFAcuqSH28Sm0O8VVOK3DwnC4
	 0OvwQfZk9i24wRjPeUeAFndH/mm9bDSxQ03OCyjvBtDPSgqnu8OZcTIA/d1Zg7M29P
	 zmg33cGZGIpl+6wG0o12vFyKWCpuEyeMnWQPQYbaf0eEo25S/T8jpOJW3dFceFAXwn
	 KCnxVnW80e4dvDNExT+fld6e/+T2jPbiBLKZhIQUh48L/ghGScWXga4ydqr3ODYVFE
	 1ZibIH9Dr5dkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1916C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709283369.5946.17705062461897841042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd5c48f190053df813a48c8b8dfde151efa7a1bc65e947c898ecf843013e791
Date: Tue, 18 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787092833
