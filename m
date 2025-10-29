Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F623EA80
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761702594; cv=none; b=s5RtBqEJRDYUN8nTKJzNUaxaUBexUBuPiw50mRCsdNarS3P5bLYj9w5yq5GJxXNQ9s9uYLZ4WhNOTocj0p9h2cku8wLaavnBnImMzETB3gb1cR/Wu6YeadOqIKvQhsvAUPB18bYL2o1UbYoTYO15X82GgeiizIaSqw/J8Ekjwx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761702594; c=relaxed/simple;
	bh=o/Eob/9WrdGVLUBz5fGbbr5Hn9TvhxIjjLBsiHCwhVM=;
	h=To:Subject:From:Message-Id:Date; b=LXGXoccF5J01nMVXq9waPnFMGDZlvsexN/6SOblYukj3ac5p3NgBWBTkH2I3WVicjPGmxkxl85rY0+0z2taMujHrgvFw14Mn9KKV/DwbY46LDBt0ki75imJfwWEMLLZtEqSje3nqc1VNfqly9LU0ml+ROn89R0lcJrYjZOCWFDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIjEKIof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIjEKIof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2351C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761702593;
	bh=o/Eob/9WrdGVLUBz5fGbbr5Hn9TvhxIjjLBsiHCwhVM=;
	h=To:Subject:From:Date:From;
	b=dIjEKIofuPqgLt2qfgHTxIyhA61cy6tiRwTKDrZWfJEaEORWv82aKQXvqzHbOXSFm
	 VBwuebytKPpPkx8Dit1feiJf4syNXz7j10FV8KfnAAGdn2dVHhWTYN0UbxKIiJqVlI
	 6fVCwHDSnWCuNAZJrPVq6OniSh+phsECxznk1W1BKpjbbeifg34qGgDqZ5Ps4LKjHe
	 w7NjZEqpbMR3iDqsK1HyjwkGmlgYR4hf7rjh8gC9DaorCOxhqcvNfNCgVpFSfDFWGf
	 Nn2p4KdWjLHzida029fuSfF1j1wUbvmRkKZ8i5UCOA7UXqSViu8mNDCmIWgm9Zb4KS
	 aGimvDL3HiaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C370CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170259362.21652.16364098842653841193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839f1eb76b579a67a5d44efdd2f6b93a7cdf036b2b8c337c94a73c074cbbb1ba
Date: Wed, 29 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761702593
