Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6F1F7914
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742650195; cv=none; b=YfYDr79FNRuSubWOhZKp1KestA9qf1Isl7czusaQfXEDHXq1OufZr5QWniKAbxFiFGpKeeXjxYbGtKOPKEYMr1N5sqrWDdGF9mEAUTCFZzd16uONZ9ZhNraBAnBxpr88sxfJJQfeFyUqRvRZNhC52+h0Ao6FG+MFPJhogWfG+Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742650195; c=relaxed/simple;
	bh=MxwPy+k0Q6mqFsW2ylhly/oAjaR8ujHSrPlSAMpSJxg=;
	h=To:Subject:From:Message-Id:Date; b=IHJZZ/1QqzUKb3TwCM6nYFQyRz/rtEt6NEQX8F4Hlq5MTFsgOni7sRv6sOxeLZYRvEmoi6ZF0bIRaBx32ViiiIUaUIXMhU9BfrhwflhZl17PG1ue+4xgztTRLSr7icIproGWjy0wqU73BPMf3B1AdSdlZm3Q11w0ToUWcL8ElGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLaWJJqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLaWJJqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FABC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742650193;
	bh=MxwPy+k0Q6mqFsW2ylhly/oAjaR8ujHSrPlSAMpSJxg=;
	h=To:Subject:From:Date:From;
	b=aLaWJJqThaFa9uqZtwptIYh7uOCXJTmolcJvRJIEsBc0ed25+XFkxHMfF3ukWX3ut
	 TO+TabYYuayCP8xm9Q3Gqjw1pIX1m2wjwDvR0os51fuv+scmAxPCNWmNa+eQFQ6QQx
	 LFVCb0Ekqia4pYEEo7EqDrU44Kah8CL0BUTX1h7EA7iJ8bhKsIBQrTnC7qw4lFh7Ep
	 rW4aUResI9RUozFFhTn5qpKq2w61d39N7Q9aJsm2IsOhEf9A7DWWJU68lyAskF9KVQ
	 7eka4mQYAXYo+XteRFk2TT5fKy/zwmVBQGjKu0hPW+u+BQv3SSH3f86LiPVszLzdSH
	 tiX2hr+RKho/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92819C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265019359.9834.4124067832214178170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1e9516c618f16eb5490ce90aef6fa07f6467d07870dec6ccecd9010e716f82
Date: Sat, 22 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742650193
