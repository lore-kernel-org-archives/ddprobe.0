Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12AF31A55B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770970493; cv=none; b=U6PRDu8UDPzuq/Lhm+ziyoCfrjKSrXp1vFEathaL7KZlT5Rhs3c+ue7fRTisg2/8vVauoxPBPGZ25kVWlBURJ6qDkWZhUsv0FmFY92QO43NOmFbx0R+rjikDTKx2otmmheeMHWCTZ5d0p+MJ9KcZamli1XkYWaOyRXBqHnEzerM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770970493; c=relaxed/simple;
	bh=lGjTAXnrzaF9F9XraSId7IKhSlX/e/eIgoMPQyzM+pU=;
	h=To:Subject:From:Message-Id:Date; b=tCuTAmx5OzNTCCX6WRcib7GYYJXMgfbFu/itfu+YHz0V4pGV7EKL2q/fSh1/vHEoa+XB4RC5hdHLA48sj/WYw++HWFrAOJq9ZFUYnJW4YPkcIvRVwBjTRAZhncsHZPZsTwgdMBplKZRqQONKv8nyfpysAgvaqbeid6mj5iqgigU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TccUzkrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TccUzkrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C8CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770970493;
	bh=lGjTAXnrzaF9F9XraSId7IKhSlX/e/eIgoMPQyzM+pU=;
	h=To:Subject:From:Date:From;
	b=TccUzkrnaRRJ1OMcbn8rFJySHIvOHzkvNcT+HEmSncPC+s1Hf4oEnjH27GHaoVjxB
	 MZvwjqdpKYRzE2PRQh5wLiUd3uyDJJ0uKxH69yXs/hNrGXVPCsNmvyk8huTQopENc0
	 YnwwUGn1I539fwx8G71lstaMVO3k9gpYmcOsZWA01nshCrQu62cS1TvGq4ujto0q97
	 dVKmDzN5Bb3aPtb194mVedqsG11pGF638jc6JqpIDuDrhCP7k53O8/Kmx63X0SOTyo
	 G3lVk61rXGgZ0ZzfYvsvOEhPGgq3r9Z6Jv6iz2XM2iiFO0T7csCefhPScJzsHI0brJ
	 K8IvlCxi4DxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F925EF48E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097049363.15236.16351984197590503444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b59da74f58fb0e44b160697daa646d620b448b3b4253f089e372f19499ccc3
Date: Fri, 13 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770970493
