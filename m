Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FE9199230
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768172634; cv=none; b=MKym5c1/i4/TGrSmZgW6hTCYqpa/KsDlFBSX3UQQUQUQsLva2UJb9I8HyJGsby0KET2vh8rMTyovyi9jTug3asHpllAv+D3Hp7otKG7MX9XQyJeyVF2cZ6PWMPGDyWWPDr/fAvazVR91CIHv7qPuNxcK/blmR5P3Jzg63cqAWYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768172634; c=relaxed/simple;
	bh=zO1m/9CbmFCNvb3liM1kD8pb9Z3Bg8OK5iFtFwOHaRY=;
	h=To:Subject:From:Message-Id:Date; b=N4JX5gKXIU9DPcKGwRqS7/o+cLMTNuSddGOZNW9I7fjxpK8kF5XlwjSCV60L/rxezF5wSgrkczv7XdLmZClQCL2tfAMObgz7dcq62OTTwnP90u1M/cfgzalwe7dMGnflkYKIHvXLDj+kUwivP6kuB+I9Pw8YP+x4hKiDuEB5ZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYPqsWwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYPqsWwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768172633;
	bh=zO1m/9CbmFCNvb3liM1kD8pb9Z3Bg8OK5iFtFwOHaRY=;
	h=To:Subject:From:Date:From;
	b=SYPqsWwRwaj9wXfaT5LiUlrxezudj4t9CHzfv/Yf5x3scIq7dsqZKx9uekYDOurgo
	 3jHWqxDv9Xeecq7kdfi0smd3ZLaaxjSoor3EraIc0GG1A7bOqGmK5QG/CegjAHCBt0
	 9FS8O9zeSvdXcAqT7ukxkrRaLC/oVKu84nHw09tN9N7nIcgEYyp+PvDhfzXdg3n/81
	 2qgxYHtBHKgGwRmwGvY1xRxceClZc+daOa70gCm6CUtSu4iGi0kDzh4I5nH86jdtVa
	 /KvEN30Mxfhwt8CC3w4eokQVuQhtdFVmY7XEVTzM/m4nPWhpSJvFdfkborYgGp1vlb
	 9uL2gArio03KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93720D25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817263359.4240.3984723074298219071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae4647d716168a957f7fb5a4335aeee283b91081d6f8f720aac8af345d9c5fb
Date: Sun, 11 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768172633
