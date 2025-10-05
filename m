Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC234BA39
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759680594; cv=none; b=YCz8EHtfDzgq8nLXhL+Zsi5Af5OrtNXq6gGrKJgrnw0LHtUy++Q0ziFoBkPFQ9U7oP+0HqdH7oxBfGqGPeRqNYI9FjrrwPG7pxdGsv0i1y2abm+83bqqDMu0Wf8vfi2FBiSrLEBnT1IMr5aVWUP6W33ttUkuDOjXYoOXAezucJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759680594; c=relaxed/simple;
	bh=jXn0AvlUuYgNI5sjCHcj3XXY9xycnBHXVQDM4RYx9F8=;
	h=To:Subject:From:Message-Id:Date; b=cpXXKMskHT5/6UsfLwDH1vMURrpLQieSY/daIKTiHBi5MrAyI1QUtrOVDQs/klyZQUvDvHdjDnjWERyptUFeoKBasi8HX/vXdvce/Zk39q6Rzm/u2nYw8f/sOSIW494+YbQzLLzqHYjEmT2fffM5t3WJTbLjZu7PEMB1x+2Oe+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH5Ab2eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH5Ab2eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759680593;
	bh=jXn0AvlUuYgNI5sjCHcj3XXY9xycnBHXVQDM4RYx9F8=;
	h=To:Subject:From:Date:From;
	b=mH5Ab2eQzibCufo3RubSVsdUC+jiKsSBx2wpLuHJiiY+EGkDhQwx3uAj/uKl6c/Lh
	 oOkc5XuxG8fVZLwKzAoUc+pVcPnuDgRXVCW0JKRSdP/mfbqw9QVcrxGnHhx/L1IurN
	 37afMwHJZmOKarPLiTtQM+aWBjFHTTqTu1Ejd2d1vfHQ9PdGpseftZ6yBCFe5iR6JJ
	 8olI+YgcNcxcio3lIm3ks5/6qI+aDgz1u/FjknNRYY+N2gjB4KX7Cd/dA6Rj4CfJkZ
	 cTcx2Le+/QkmzksuId4BfI8y6FjD9eAekwMJw74/uIdEiyUfpF2mlWQ12XDFz4PQFT
	 /HN/H2eckyGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990DFCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968059359.24002.3347844754148890849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141cf7fc4a3a07d058baacf633622ec1910702360bd215d3c59d4cb3166d9bd9
Date: Sun, 05 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759680593
