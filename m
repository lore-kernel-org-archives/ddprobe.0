Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD5B1A38C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724864754; cv=none; b=UQ8vQFzuadEdrHYr1jpip4rw6/1G8DSTfRoQdSpQzQMCq4J3OS0slIflk0tzLLTfL5N27onz7NLOW/wBkIw5d/kRLr256sO/7gV/UTRdzPzvDQ/jkdC5+n3EJB5whHWPRWuAGwZT7S37SlN1nTzZQyDCsEV3Qp+Kop6Ct/g+Svg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724864754; c=relaxed/simple;
	bh=fZ7aNxov8oEOCr34slxpvQcLxSo+NJT1DOCSL2ebKuM=;
	h=To:Subject:From:Message-Id:Date; b=rHixO9U55bPcUV8TWd47R2Z/UiVHcU9cr4SK1ESF/zSfdTq4vSzZE7Tg3YWTWS5QxUpqMep14WtrhYULxQTEzpVptVC9a0uttt3M9a5bhzqsfqrAck7L5H5dsya3nJo4103ugazMXPk3csyAo15ks5UBBW43h4Y2VVwdvEIgZyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oueN4i2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oueN4i2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65ACC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724864753;
	bh=fZ7aNxov8oEOCr34slxpvQcLxSo+NJT1DOCSL2ebKuM=;
	h=To:Subject:From:Date:From;
	b=oueN4i2N28QiYSk/rfcEQq1TpZFLQ2SfpgmFUT+rhAk29aGP6LF1mzYI6Kjo02UpH
	 4kBodGExogi5IY4nLRi2Z4PuoOqxZwkwW7ZMv1hSsIOZCxgY0e5ySdNnJL5T72fczR
	 0KlxoTlLn4HI5cxFA1/AwmmVGqdLCAf6VjR/tn/fmvppTT2RzslClqekAfa4X/NxhK
	 PqcA4LmcM19LNWMV3Ijt2jN8AKW19jb64Jabf5ZmaYuiJUmeHZ/3gRgn1HA/a2n/ec
	 fhVT5EOrCoPtYHdnH9rRZvXnwqCDbfLA/eZnIKSbL/i/S2spbMiMdbwb0asRavzVus
	 1beOBXg7beX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98803C636EA
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486475361.28395.2345384189702010507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444c077fe4e8224027d526569c950c66df91ac69820f163d9ed46377238fc4e6
Date: Wed, 28 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724864753
