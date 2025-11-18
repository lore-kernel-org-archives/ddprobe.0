Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39316369981
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481714; cv=none; b=iY8/oB7biJQ5+kunUu0/3B7afQqvrXj5+G5CNhbso/+MOQNF5EAaEAp0i7OiNIF+ZI0C7e+WFU8V6zrZJOfi3jdrsw+qItqJ8SJ4ynR29+RBiTtvTlknNhbfrIUEJTpBe4uLqM24Pj/6ytdR2QAoMfgRRag7IVhDjywmfHj2PUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481714; c=relaxed/simple;
	bh=4luKRHFJEH790iJX2f0u9nBIjTeuqmwMS2L28aLGEiY=;
	h=To:Subject:From:Message-Id:Date; b=dYgyyciZTAH1yufvfi8l0lvjIBpwHTS9OWY3b7noq/3Gi5UbR3OqpRZ/rfm5b7UGWk7vBCCNlGgAUW2QxMh1YYbJuU+LIWIfPzB++GyGH4dm8yKIvFy2Kxu64Nn3Hk8dX2o66QnJ3TGNHkvHH8zy9FnJtzqk9H3SAPrNDLDug/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+FDMEGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+FDMEGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C789CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763481713;
	bh=4luKRHFJEH790iJX2f0u9nBIjTeuqmwMS2L28aLGEiY=;
	h=To:Subject:From:Date:From;
	b=W+FDMEGuuqImpXR8B9oy0MuLToBWX7TIWodnE6HtLU6hWW46NQBrkvjzGmyE/QW9N
	 A+jdqQeiCklS3WGoVPs0ZDzjZgl+r/iTn6iy0Q1/PjfTsK2Wgn9slQT7Fd7PzP7wTm
	 ZhNi/olvh66dWfnaYBqqzIIee7XBRWkE/y40G9tU+b9qXAe7bwIyp6MRrFwYVj8UPh
	 CTX6N2wU7x+FuYLKY/uyCt7ijCzFth3bNavD+26guE92v2jELRyWJiAUl2YAeATKI1
	 4mZmDFDLOdM/q6Mx8Fb6t13IwhY5C+Dci5rZgt5rVnKfzy5EwOuuE5fn4UFh/YkJG6
	 cLY0E5SeLgs4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BBCEE331
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348171359.13991.5498163360183263741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e3ec23f90aa94cc91f08c18a8fa639cee0e9c6276f027b56cacce1def5cf3a
Date: Tue, 18 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763481713
