Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A22B2AD02
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755452994; cv=none; b=ROeNy6unC/cFKXL3DUI6xcBoIBy/fl3lXfaIUkebKMOKSpY8yeUWd1JF/E0sNHWECgnz3qLJeL9U3R+kquIAyACYvE/iQiuOCUSTCCaeKclyjUWVwg+htuPtiBSZMEWmYbUGICej99jospbrla2ZUOqGV8UoiTeCXNYTP6VgtH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755452994; c=relaxed/simple;
	bh=V6hBvR4JILdlXm/0JMfBMjCwNplHQH6f1wEfO6yTW5M=;
	h=To:Subject:From:Message-Id:Date; b=jQspJqLfGXSd347Wv27SbCzqkiOnqc/0Qo+1VB+nNoApySgbrnj15fl1DF40kB3Z7eZyQvCToqdxfgYV8n3XGkqketiLFBcWD61DpumBcvvd8yjGW6EHV9axmfU1MeIu2ce50o+d2DHzTdKZ6cJaXFT6AiPgE9DqcMZL6YnAo9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYpibrLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYpibrLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F621C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755452993;
	bh=V6hBvR4JILdlXm/0JMfBMjCwNplHQH6f1wEfO6yTW5M=;
	h=To:Subject:From:Date:From;
	b=uYpibrLvoarbTLDAv++KsnxNmo+lnJL2WlC2LrAHBQkoutTh28lcMXJBZBz2f4S2t
	 eQPF+iOC6N3nElSlyupFWAk5GnLV59dtVdXceKpR6y8eRpX9eT0GVXOf2u6HhcwsnF
	 Mlces9eLOOMM3v6NtFLfa/4mLQalmVsOZPuZVwCqBUQGOK6t9l7ldHq98gcC6w9w3I
	 xBHTPJ1y0EEs0V4+mK9DKqX/hWmDADDm5DWsjxw0M+yzkePtgtnfDckIp4J+EuyCBj
	 jg2m24EKzqB12GGzrmatqmnYftq+n8DjQwEypRR260t8SZgmLDTVxx8pX+kv3AUnr+
	 soDZ6lndWIuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91536CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545299357.30603.6974778977336316226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dac61084833e2fb62002d47e6bd9bf17881618452997b926df885dd389ef4a3
Date: Sun, 17 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755452993
