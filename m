Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C836167B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790628034; cv=none; b=XH3AAJAjhfCyJEqXhgg66MU3B9uIWGI+ol3LAXipeEGEuqrdnrBg3lmOyTmea6aQ+0nM7hN4RnpKZDwAEE4Ob4cLPHyuW8D/Eqr8gUD1iqcBYFzzUjqnQIuBl2JD9Uvt0fpfQOohVkut0Vh2eyUNHNC9cZgpfInOEZGuhvRqiCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790628034; c=relaxed/simple;
	bh=TK/0kqNPLRW9490c/bvBicR0kP5kxwE//6vBG37TJ2c=;
	h=To:Subject:From:Message-Id:Date; b=sWI9CsHY9QowyohK9UyrJ2xgUK8yHtFfqNXHNfV+kFSpYiDSZ4CBwxyRRU8TMKwK4a3nmHx4eyTgxGXzb+HIvMZGorrbM6MDIngTZLxZVNqlLEN6nGoGxxIbKDBdKGGMFSeyt0LDtC5oeL0gmoT8qS1INfsN9hZ3Lchuva48V7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXRgQOtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXRgQOtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF38CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790628033;
	bh=TK/0kqNPLRW9490c/bvBicR0kP5kxwE//6vBG37TJ2c=;
	h=To:Subject:From:Date:From;
	b=rXRgQOtxC8I3tPxukqHgtJCF7VszoRINsnT0iHOVdfOPDDlA4QiLkxSCLmnmVcRRs
	 f+GIRPyRTGY0HvSpe/z79kKdtUkPIJqGxtgtJ9VOpDdpMlOeencBlVLzLqiqnVKvH0
	 g8Y1B4ns3eqGjJ1BCph7kMUj8KwUOzZAn8wtdqlU8oEWunR2UDZpwI5YCaOEEF54WQ
	 fYvSzNBn1GsSm+wtsnkyM0T+zDre3kKSv4Si0bvLQHdMDbHnsJR0E3QurjbzJGC9it
	 hpIdjcwVkN9oCNdUnZv+eRyfzbumAonaQmJA737kmu7fJBRQa+DMil+jeu1ODpDklR
	 /eXXsehxNYGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0EACA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062803369.15235.5162910974036585821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d371d6ac689631c9d41a6f72943ac39e2e8ede4338f235b964caf4bccbedc5
Date: Mon, 28 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790628033
