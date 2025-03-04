Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524FA12F399
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741051734; cv=none; b=RdQjV0wBpqDqb9dWozP//7TCybw+DdJVuqstMh7ET0pcXfdXdfuVfyUTxWIbZTupBshm8reBvoXu1g3RUsDeKwNHGLpfJjKefc2k/moVZoxER6j7sZuV6AoX8RGJIZy+6eIYM81ojkDojmB7ISaV/zTRw1THyS+dOgMALduitmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741051734; c=relaxed/simple;
	bh=EWVyxMcHkTs0U5i5MzlL/aff0Zm6zEy7UGg1R22bEsQ=;
	h=To:Subject:From:Message-Id:Date; b=DVTxiOB2hDJ/Hr1x+tymi/Xzg66cI1rUifPGhThO6uqDKL9e+VuX8GORDeYd3LsHbvsY+rPjx9iiMF2K6wz0cL0sr++6XSqgTpVRy1jjASDe8Z1SPY/gsUizqELviCZcBk/iWduM0bYT2U6i8EQjGwyaT+lNnFe52lIdK4Tffzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3K6I87K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3K6I87K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00BDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741051733;
	bh=EWVyxMcHkTs0U5i5MzlL/aff0Zm6zEy7UGg1R22bEsQ=;
	h=To:Subject:From:Date:From;
	b=D3K6I87KggDKbRqr7HLw7E6ims389p3fOTi/9kH9WrFwCLc/d/tTtQxYkXDqOYs9O
	 LkKvglLhXylOUYD+1IvjuX+9aFU+Kr3yJRvRaUjK3Jox8porZNe+KEVn0cmD4OvWDP
	 BgWh9p+gwCf+cC1USjgnyReTpUhD7L1ObKlmEMV+FdQzKxxNd/F9YGr5bEDnvPOkEU
	 ovbucBVJP5K6OHDCA3His8m2URiPRmqaZhoUEMTkk3QeBkvrjhTm4rpuz+hdkRtdSZ
	 qnpNRQNWi8wZ6DDvLa7y5PYRUL21d+Jdcq7mPWcGmrRLEHVfcWgU9v8YQKYOpRdevZ
	 1qDMAshnYyD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF05C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105173363.17777.10945856298425077677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305f397659a95c6f6782e21116a2d7a8611a8a7cf16c5d11d1ea749f06962649
Date: Tue, 04 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741051733
