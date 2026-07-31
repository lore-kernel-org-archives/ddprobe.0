Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561293563E1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785522034; cv=none; b=fZZOVPxC0aMdYxvdRKU/Z7RNfIjqcnYgDW0gv0nTFsUummdch56sXcwJ8tngxSewha4cmUK7Re8z8sBLThSyG1d1Mg6X2Ermh70TApYceEjAvPXKEf5xtLBRMwqRcyq3cSPjQDiuUpoLQFr4wjpKjKT4joGjt1PFjsTihYiLV6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785522034; c=relaxed/simple;
	bh=+gT9eFrAcKIo3ycoCfE9HtrilRPizqTUVrHGYylnQeQ=;
	h=To:Subject:From:Message-Id:Date; b=WH/tKfYtEdTPiVKCQSYokegtSCAZvN2qAanjiuhw8nj3/1jJW9WWQp8e748IhfYLnTpygCzzZa0xjrXREE08OCYTcx5AlEiduCK0y/5xFJYagt5ZOieE373KxVOfDYEfGYdwq15/a9q9pD5AuN27zSbld4Kjjjr9SEpI/NTnPco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyWcej/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyWcej/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB428C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785522033;
	bh=+gT9eFrAcKIo3ycoCfE9HtrilRPizqTUVrHGYylnQeQ=;
	h=To:Subject:From:Date:From;
	b=qyWcej/IhGk+LopA3etkHhq6wLffd9jCaFX9LHgIKeOTx+SFoFvqfzStIs4pQAWvC
	 mqRLKcC8HC8e+XfpKf9nggcL3TFlnLb+0l9syfC4175/6mPm7EhQjG1px4JxKYCXYr
	 CXydyBPfPhJjQWM8zUEN4VxurwQpkti8/LUSf8opdPwtqWFSKzsOyZYN+ln+bxGZcB
	 RpZst2lspP5bN3QY5hHSH90rFqtSdclrWWzTm1Su5PW4ZWF3ht3eHTMrYpphVXQm/s
	 XSWyGcCO0Kk5xfrujIurMJ6QAuxuURzUNLcq5beWHzKuw/yEa316qGczndzm9qNrrR
	 4JeE/eZDnfafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99CCC55174
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552203368.27465.15216476060493365393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c69adaf9d27288e83e6f83faa5daf376fe9103d8622411c5b02f60e213da93
Date: Fri, 31 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785522033
