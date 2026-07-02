Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3198A4C6F08
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783001314; cv=none; b=Jj1IKqr3uCOnnmA3+WH0zeWTnatXpmy0WgUkNcgBrpdDnhNRxOKzA6HXyZq4G7M7zHYiraK69Bvn2BAoOJ5Qjp94hY15gRb28NFYrBbcZSolunKiQZIB269TMPqYCpXFXvsIKewOVFLgflZKTYAQymSe/2N7+qlqvZZpDkJkap4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783001314; c=relaxed/simple;
	bh=+mkdFta5Xq+9iTwhMJ3E2fbnDDzyqt9eW9i/iWyy7zs=;
	h=To:Subject:From:Message-Id:Date; b=f/WcYUu3K5rjnkVkoyVyo4HhNlzXq21sySZsNgDntOcLpeRDHpHfNeJUiXckS/4zIqagi+gJ1hMea0VTFyP6ALGJmUu713cAjFq3UZXKKNpcSZkKFM1ECj0elYt1HNpDpZd0qkVJ4covM/stBg0JpKmdg7uZcjAtqhWKnEczEAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIom5vvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIom5vvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BB6C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783001313;
	bh=+mkdFta5Xq+9iTwhMJ3E2fbnDDzyqt9eW9i/iWyy7zs=;
	h=To:Subject:From:Date:From;
	b=KIom5vvlGMLhVTSnLpAjSBAaR/mwtI2m7ODA64AJvFdSNw3oCzjancnKuIvnlDECJ
	 +SlVCliXTr9mnx2glYhtDx4saNNDCDLjNoc8kTso09OsVtDzDdF/CTRqkiETggHdz7
	 BfaEf+1GVPmX0JD5Uea+37CRVBe6jmB9wNOJ4oUHix0M8Zqi97ZcQGnGDyb2HNPvqH
	 H8VxqE3OmXT9qS0sxARposnEiT96hS+Y0S8MIeTlpxC3GBUQ+ocKY6HssDC6/tXmVx
	 B3wZJL6OwMVLH9yqZs8j/q9jpQXkDYeBGgw/SrQ/9ThosN9KYJ9lOnYpEKCW3TJOMu
	 AG66fwMC0OCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8291C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300131368.25288.15686334322612492822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fc1e49d6e3280787c99e673d51a6806efe62e2dd2c938f9913f5ba6bcb3c2d
Date: Thu, 02 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783001313
