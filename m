Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1987260F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776583654; cv=none; b=QQI7McvA+yvFxiwK+8k29OK3Hy+vIpbuGOrWnizMzSk5CAF6s+a3HGvxyCULh+LZ99pI8LvquuVe2+2f+mQeoPUz2cZTA330dOf2sZ9JmeFRPzQcNAtGEMH2R5MwM/4xX7PZEvT16vDeH0hyaOjtrv4CAjR51ElhnI1queReCes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776583654; c=relaxed/simple;
	bh=gaLE+TA0ufXiwi9HI1F5mrgTagAsHdgheVAJtdQ2wJQ=;
	h=To:Subject:From:Message-Id:Date; b=ZQ8e8/t0n+e8xjWDvQij0UfgihoPysx6zv3oAYHb4nMRF1zTlk6o8HDQMYcgnT52xzOeLMnjN8b6sGpWeUm6G0rR1i29ZwI1kycY4UtLHqpcauHQ+iEpDOg+n2FZ4xfH3wDylCfTpdrRY/kDKKgoju49WylLHA9C7lPwtfCKLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD9sxmug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD9sxmug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2697C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776583653;
	bh=gaLE+TA0ufXiwi9HI1F5mrgTagAsHdgheVAJtdQ2wJQ=;
	h=To:Subject:From:Date:From;
	b=lD9sxmugT7h7+2dNX56/VhuZNxbBL2VwAlf7rDnR/43hve7XrHIUFTwL6SchFyIGN
	 M2EZk9ZDp5yWeqjTiiY9yU8Z0xrV7kxkomjOZ6HSfmrfH3/k2jn4U6MXv+r4b9mQpg
	 Mllgcvds1lg/Wlr3SCcRiV0o5kBvulWmcnpdBpoYORyXeW+DCj/sk6QoXh7X9nYVS2
	 HRVyz1RDWLv8fldkmjeixBVVpN4n9XvqunPAHi4rYmIDvUv4viY3UAK7mTH9vXVxPD
	 70c7ZKj7/NzMLDycVS+HdgbpLKN+I7qiTsELFeLpVi7NkoRzAkZ6JO8TCoFKri0ckK
	 Nj4z1+IGAAKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF826EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658365368.22558.11723307118085596345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae0d9bdeebaf0fccac08fecab47b2083db43ba14f9eb229d8fc6ed11171a647
Date: Sun, 19 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776583653
