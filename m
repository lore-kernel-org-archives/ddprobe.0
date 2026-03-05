Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F87E36402B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772697894; cv=none; b=pa/wsXdsB1w3yZ3ddN39211P1J9OAyR7laIRJMxbEUbaAuW4PWFrgPMwKpnrapJsKaou0qcUqkFas3tRYoHGWmFNJDy9AAKB/P26e36BRIk+hWQ8pZ0y+H3SPxNyIgVbvLyTHFSKKU7c6s5AL0kbxOB5YZIj96ucuTTJqSoAMGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772697894; c=relaxed/simple;
	bh=GdaQVu2VnRojS0/XaI7RsLQcH1kH/eGLqAIBAGAMgRE=;
	h=To:Subject:From:Message-Id:Date; b=G/qxFp3JD1zMVzPymTpMzp7L1oXq9QA0PdqxYbo+dQvfzWIV8kPFMiO2l8FS+TEdO1O+TWH435nVyBaqghyE6yHBCx1nYvFrn+dtKd/09aBHr8wZ7nEhO1khVDtsLY1otejrEWmopQdJ7iLaSONtuHVq6a8pcf5mpi93hJ+Im78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpuJqTa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpuJqTa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A089BC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772697893;
	bh=GdaQVu2VnRojS0/XaI7RsLQcH1kH/eGLqAIBAGAMgRE=;
	h=To:Subject:From:Date:From;
	b=IpuJqTa3ubiN5AKLHUjzLWX5il5UuWhtqrXiMUHbv6MfgK+tup8LWak3X136toSjC
	 XlfRZHUAY9Q6+FGpSZe4pCyaJYCT5a68zVXELa9mtDPRWouPLpS+wQByPCc1qHW0cs
	 1pUW5vL/PgC1NMAgXBP+VHX65r/LTYS1Jde/ltqovVS1jXZGQvIq0T9mDqzfDJaHdI
	 fGj4r15Y5pPzU/1NB5j90CAp2rslo2jAca3tGzjtYB38qz2/34Vw+EElBkKCLkLHNz
	 mhh+0CcQyo+PRPyNZFbqc+b8/Y1M/OtPF9KlKNpG/FWaeNm5PAhB5C3rpTM2SEGqrA
	 +u2Ni2pQIDGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A8EEF319
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269789358.17133.11414324811086081966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c97988d0c4f6e4ef49395ab671de4cad82c5c22672c38bd40030fcd7a72069e
Date: Thu, 05 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772697893
