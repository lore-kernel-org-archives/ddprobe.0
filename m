Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7E219E8F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736432754; cv=none; b=jrkQjITTzAGuSa8tReODEcKnfsaw+vNcNdGFeylytR4DINqlR9irfj1diEF/IAqs8q+eE1ZLksv04B6Q3L1qSwm6ZWmZs6dy9kByo9HXpGQJJrLDNwJKwiT4hYn/6M8wXGQw4kswUFr9Gv/mrO6MAysAc5BN6vrTzrHX/wN9tB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736432754; c=relaxed/simple;
	bh=3/9F7S3v4qGf0IG1ElSvSuv0BoCF3WVLg4Mg+5cICco=;
	h=To:Subject:From:Message-Id:Date; b=K5hIqmF2TUYki5eGCAvK5JaSfVetucVBDjg8kodBUZxaiwvTMhov8HRI5dPtwVa1GPtseKymj2r/P8kTWId94Z0e/kOySiukpKbbgZ9dFi3w+tPqqpdnCPuH1UqqgwRorQAGrMs/xkRVxitLIWO912u5EDJDvK6m0rGoCrs5ruY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnP1g3r1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnP1g3r1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC17C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736432753;
	bh=3/9F7S3v4qGf0IG1ElSvSuv0BoCF3WVLg4Mg+5cICco=;
	h=To:Subject:From:Date:From;
	b=tnP1g3r1mlikbL6g74SH/VDLpJCRo+QHtlBAwNozH0smdVeH6oFh+YUX7FHLxjcUP
	 ghjAf2OUChByJj1UzGn6Na5cqjomosCRwQTNJVanx4E8zgbssIrAK0F/hD6aNbm1hW
	 xMBA0G9uxsXtaJm4fJqkusbJhdtkeVGyIYRu/l+etrYJWOUXOENQXjbGD081QAUHzA
	 VQMOUGDMFErsnR+fXkR66scqyLHWjXTukVUJdxclKS8nxZ6NAsNW1ClicR/tkB8SkX
	 dnofZvhDErmZdom2UcMCEJ6mKjUh1r9FPq2XTxP49V0FEgbpFdymZ6a7lR4n5Njd+T
	 bYI5SZvmHAOzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9EE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643275357.20580.12548983891828213722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea71c08c7e4f7441bc6862f32a4b610c499b804fc54cea154850be887266586e
Date: Thu, 09 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736432753
