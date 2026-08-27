Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5F735CB91
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787818234; cv=none; b=srS5Q3CxHIQIoH2+A3kgadLpq1wws3Q3O+CdBd7zp83C6wSR/DjIOQyTb2NH0+YCEt38fZy9k/BVfaENx8QllC9OTh19PXozUQ9diemsiKwz3Ds9gZAlBaIvt/TLeYbN/pQsGzgYivUVTOAbfGAOUraqdC3hT7j0GtXF5MmX9Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787818234; c=relaxed/simple;
	bh=66JpwqzQ62y+/d/CLU6dO8jR8kdNmVQoNf3cFMOhjzg=;
	h=To:Subject:From:Message-Id:Date; b=Y6p9OqKYU8sYxk1CT+Of7EiNvZN2mFEGgIrt1W9jo3kka2W1pxRWVIVV0bvGjMqfqffEaC5E0p7LIKJknU22C0FGXr/VW+e02KPC+mNQ2ErIRzT8blpgKBr+fdSEK7hNzHqrZe+J2hHxyxPzZqOrUClViSAUbsG0kahwUW1vfdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGK2sjAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGK2sjAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3807C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787818233;
	bh=66JpwqzQ62y+/d/CLU6dO8jR8kdNmVQoNf3cFMOhjzg=;
	h=To:Subject:From:Date:From;
	b=ZGK2sjArBZevJZq+Mhv5jurrJ4SkYV9lrpaOh9YphwQPkOGndgSiUXBZdawskrbT3
	 frkuN9UwiquJ9PsflJSMDXtMjxJ6dvXnfxe6vLdEh1xUIilYtdus/VKY+TtdapHpD1
	 iY8owjkVPKnGUuTAqXSNJr2YAz1Jft8u5CG6qMk7RvvBRhF/TLHhETqbR2gIobnBWe
	 DOOXVnuYAt5N6PZu6t0vA/nHygOzVkqzMNND6efBzun5v0/EZAcgJPNOa8UfZTEVGK
	 qwXXEowHxAXzNzlJO6mzptttmXXVNOF+HgiWySNsMDoOYAW6DpYkdG+sV0YwqDpzJy
	 I5Rn77UFlT6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA06BC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781823368.18022.10279848006619465437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dafea0f2e6e7d66792f8dcb4b283c35ae80dfef0150d152d47b84266ad36fd6
Date: Thu, 27 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787818233
