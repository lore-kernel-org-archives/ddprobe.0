Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309161E1E16
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611394; cv=none; b=AcwJk+1C7Ljp2UNM2ym+V2kP+H1lNm0NgkdpTv1z9hFxIruo/gVzgT4mno7pKPz+RpW9GWhMb8sjPLJ8QEU331gHjKb3S0F/u6DgTykAAIOhjiwJBeqRRVVRaURMaKgFDULPWw/XDY5jBA3eHETUn2TLGfwueA9jAkoU+YhOnc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611394; c=relaxed/simple;
	bh=RmL3pzvq8R8t3+/rMBTkv0rG9rbWNtJ1kK5JRh9tpPo=;
	h=To:Subject:From:Message-Id:Date; b=G4En4dKVkie5Rv/a0Ymhs4GxlEgfzarx1uh5XAaqhbw6VELt/M/n0fN0rfIyRyBrAh7Sx5RQB+LJtVEQ7IU0VnttFEDR1/UIkI89d+Pv9UoX/8+l/Wisjg6ZNqpBEQEl/8O6qL9S0WNdaK02vesonxNVeWf+MsTTtmqxQOwmwt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUSHD7iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUSHD7iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE98FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761611393;
	bh=RmL3pzvq8R8t3+/rMBTkv0rG9rbWNtJ1kK5JRh9tpPo=;
	h=To:Subject:From:Date:From;
	b=FUSHD7iEZufaQXDI+TafrTEy2A+M9cNHeXjlNAi4ZI32N/ubFCgoahCYxS4QGRTKh
	 6NLxVNADcqbkZDp+4dZihCItlNOsY6XqY/F2o6cLe0xG6mwz3qFmLV7jk5zFnBXqFK
	 W163zRfzKIbhlJx5GoKkS0bFvtL+z5HCZYF6cFiOB96GLHaFIa5IQxBiyxMXSY3WoR
	 t7AgEA7MMJDgyT2wDw65A9hG6wFL2Vl4YfTtUJ/0gF6EugsgDT6B5UWei4I64TZ5tH
	 d8DA+PRyW3Bw9w+QHs7JxnJS58A8GJklSMJ3wk9PPrAo8Lb0pExATkEPOhJYPq+7qq
	 27brcqJzrwC3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A106CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161139362.15884.17809265660869544774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab6d09f1db11c0bfe94dfb05129247abb837d2287e3a8676fb91fdcecf8991e
Date: Tue, 28 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761611393
