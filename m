Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A7315624D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250373; cv=none; b=iJilevX8thzQLGS8FT+pE90SLTDCaNvdUd+IUeemrbbpbXbONDDPSdfGdBsPDtQRZbrcn3QQxBvWwaPlzt5pbIuBtedeCqb6+jvwngTfLITlqrY7JlJZiiCvhliSBRZk6MhJtKRaNDONKa+rUpVD9gyXFQFDMtfh8S2o/WojAC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250373; c=relaxed/simple;
	bh=g9uuzaalX470kJWrncZMaI7QvFRUCjupThvmS+xzVhA=;
	h=To:Subject:From:Message-Id:Date; b=hKd3mfHCQmW5p5kqASqpuLTLUCkt/6JU4TZXf307dO7DFPCECLNFFmDqkXPKSgEBo/KMqOICyBfdFGpNKCCUtmUGVpL2FbYOpF4+/885VttecPjtWx9nEAPHbX7EFW3d2VsxNQOfo08BnsYLRswlS79fMupCvCZ3ByU3UbAtidY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4kc+L7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4kc+L7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F877C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250373;
	bh=g9uuzaalX470kJWrncZMaI7QvFRUCjupThvmS+xzVhA=;
	h=To:Subject:From:Date:From;
	b=P4kc+L7M4gh3LILKM1SmZUR/KVMKVZd0j/RV5e6A7ZMjkuV2awSE1Of8r74xC7FQ6
	 4/yu60+QQB9O28bl6YcQHCPfKKKLqh4rw3w/OPXwQJ2svg9CucvJC7Ye9c+e+ea5Yf
	 Sha73Lsz0RyLD9hIsNC1aFPQYrkf1BTeBfWdWEiZZpX4/9GmsnBHyEoXosJkdJ8IEN
	 sOi/R0dzqDS/5uCN4D/6XwYlhlSYlCR5VCb6yeW8IXv4TEn123sRUMHxEaPJUagUS9
	 rT3nF8ya/ZmqovAqqdF/QkeIUkes41q5wjda72oxNIjeItXzR+NQyvR5+PTj878Ndj
	 4hSn+HixYCMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116CD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425037358.28407.11363336656300259934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8327c3f4aad12d87bd8987827d9dd246b1fd8515bdb6b293300c5eab7eb7bd3a
Date: Thu, 27 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764250373
