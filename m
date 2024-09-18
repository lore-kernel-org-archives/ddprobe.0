Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF5E2AEE0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726658754; cv=none; b=b6mFTbR8QfCRj7oA+cPxT/xQ9kYU/AG/jxu/8Fq5P9oO3wsDPS/ZgYRLlaSyur6tab72w2lTPsJkC9bP9hvbduBG9B8Df54oac9c4sKntrhSVJEh578KGAE6NGwrckMnNFL8cbVKZjODFmXzgn7PdFh2XMO0vrczcGqByBOCBrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726658754; c=relaxed/simple;
	bh=Cu1fnAR2GvSEQob/7W2dmW9Pw7d/jCu/bYwynSnsUQ0=;
	h=To:Subject:From:Message-Id:Date; b=auGOezwzPN01+M+ZhY1nYFOTZhWnVFt6u3gBOzgibCjOAcKcksip6Q+uz3jOsabhoaifrwcRWvrNY2zqhTG+RnQ3AMr0b5OJ+miUlbJ3nY7gVrHo+9nl0F7jvOYLkiQb2axsqNtkvwkKpLGi0jUQAije6XUu2EH9RJ1RBWQ7Pa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpX4CBWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpX4CBWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A099BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726658753;
	bh=Cu1fnAR2GvSEQob/7W2dmW9Pw7d/jCu/bYwynSnsUQ0=;
	h=To:Subject:From:Date:From;
	b=SpX4CBWivVANkUWZIlLXmX9aVXdJBEJKLrsFo3PM/9Wv56QDLfDKdDGVWqN6jV30K
	 hNGLUTmiG8/PK9WvzokzibsHs0TRhNz+2sefNb1NhHK8tWwbSt3uS7idRVUj7YX+vC
	 a2t3kp7gK7bhMWwW21n25T7572ORhxUXvOjRRgZu4c3rzjXP2rtpLqNKnnOi2xgeoE
	 SP7zNnsABxYa0wpEatpxTRkgj4bsA9r+uihzXHNhYR02jUu10cqqqawGRfG0nMVuwg
	 61Q+1AcqRGSdfsNuEh+YHVBRcsyt6jcUi2SnJpKRpX6ZNHJ5Kd7QLC+iJYsFkamBF3
	 I1L4FYdJT9p9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93798CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665875359.22576.9744905804084104225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4b3f916ec16827d2f9346fe95b13e6fba52a8176fdf60d903e067a4302bffc
Date: Wed, 18 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726658753
