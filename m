Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4942FD684
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762334394; cv=none; b=rYgT7I2MwbsyNcAwN1vXcZVNC4vJynBEZlI6/omkn0+Kf8zbORvIn0OViQL3XJvqUh19GLr7QFC5espxPz8dlT7440Q07GPnqIw0YLh/QbS5SwPpT2VN/wwrdJ1HbzwvmYKoUJT9LhFJL0Ak+HtN7qnwPULAPKqYaKVZzb2jsAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762334394; c=relaxed/simple;
	bh=JNNpF7gf9wJdUzQGFwisAZorSHL6B3XlGVrJb4Kq2n8=;
	h=To:Subject:From:Message-Id:Date; b=gqjwbvB4RMQsK06V2Cp/eE7/5PT9kX1hT557JNveErOaYGSA0tp5gpeI4Wwf4fSCvzBCFeJ0JJboB9yyC0h1AMjrBIai+5u3U4fQy23g4huBHgTr1MO2a0qa0j+tj2U95aB65ThhZpb3kKeUOlBt43SWMLJV9j8n/0funtG+hgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG4hX444; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG4hX444"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E2DC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762334393;
	bh=JNNpF7gf9wJdUzQGFwisAZorSHL6B3XlGVrJb4Kq2n8=;
	h=To:Subject:From:Date:From;
	b=GG4hX444oeNYXg/FLTzF4cMahpNNuwg7W7N86ThkFl6P2Idirh/9FbrTjn3EtPK7O
	 uBcXWJZ/l9bjWrcrSRh8i1su5cEq5Xn7ngcOIAZjB6YOhGIyhOtwnzbp3WrfwHBORT
	 I+uDer3BqkX16/Xj8UMjbpB9S15HPl+uE7Hf7YelRQWUtthBgzAGxiu/OCRtWZBKCr
	 hAE9k4M4g0D3J6bB5om73TC9w8YHwLxrelTFN4DI7gAvZSRs34L5U9p8VRByU1r5Mn
	 qErijTZ5dbW2npHHJNBLKrL3/5yf405rhTHDd++Cffu1729d2yQtcEMrk4eXDHz0s5
	 nHmzVneLLkvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B05CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233439364.14946.14696679845828802095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff28462448cd117f025e0ad94a765aa42f0fab8171061267eed701d7ef78cd08
Date: Wed, 05 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762334393
