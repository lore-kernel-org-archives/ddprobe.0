Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425A314F100
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722635154; cv=none; b=LUm9j9T4QBzCCEEYq4kDPdJW7G1UuNod6a1p0At825Kn1giLXPqA3QN0G++nJlifL8aFnK1PgkXWIvVykmF0MlmdzrZrK+GRp0IntUQzrFlBFbxUFtitX57pycaZgOESZ6xoUPTtgiytCDGzMqSLMTFTqydsRIWrjDpL2ZGjNOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722635154; c=relaxed/simple;
	bh=Hwa6KV++jDeLpmns4RtN7BAJmmEJmtw1QrBofqYKwKg=;
	h=To:Subject:From:Message-Id:Date; b=S1O/IkFmjPbEyYFUEHLklKWMls8kWFevUGgg7YsrWOy7gQQxcXBex5fRqB8gkfRfYKTeZ6S74FTRRX15H/V5gLB6N0FxC2E+T6nwSTEge3msMRBCgOTUsl2ASmHdc82NTCZ6SN2pifApFweqaZ6aaSPQ1rdjsDBAcJxevd+Np4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLCaTvID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLCaTvID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ADEC4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722635153;
	bh=Hwa6KV++jDeLpmns4RtN7BAJmmEJmtw1QrBofqYKwKg=;
	h=To:Subject:From:Date:From;
	b=YLCaTvIDPdee+rOkR2Qk4QZHSO1t9fwihWq+I/451Ttku4auFt6ZtqkZB7NC8een6
	 mE9JtIajyDTQzbI8BDAgEWa7MffbtfrCNj51uw7t6+rwXKujDrKMzMqvIlrs7bd/sp
	 u3AeMGYwQ4QWTxePN4b1WST/s+lUlvDNzHMGsSom/c5X010kUzp1Xpq0EUKtX0XS1p
	 Z6ydpjKLccudeza5J5Mfb1tWBP/XXgK+91jcvpXtcw8sFV1vM2EUZBnAPew/BcbHoR
	 cCU++NzO5VFiBHP8lp22ZRjgxgwJE548px82vjLGoss47u3OsfmKXjg+rq+EqZzGhz
	 UZQjl1XyDkNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3761C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263515372.13431.12221145434652939145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1538f6532834d0098a409c8d5046dffa5484bb53934258b369d9c961a89a0759
Date: Fri, 02 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722635153
