Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56329522F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721542554; cv=none; b=syaCJCdDUFDY32fHVHbhMtQJYvqPxHq8HXzg+CCDsVy4cHG2qt3hdku14N1oOBd5abZu/l6kxxGozD/79gt5fZRWrTfFuuGXXjDducBF9C37OIvFjjtKT1M89Vs7VRssQD6zOhFiIaK9HiTn+NLNehczM4dkZj6+tHsF1AXiMgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721542554; c=relaxed/simple;
	bh=yaxuCUplbnnSQO+rFcasysf0Q9QEVYejatC3xrXwh2o=;
	h=To:Subject:From:Message-Id:Date; b=IZrFUY7lENfLZWcztwlmoUuN26PaFCqtWKrL8va+f4OuGM2xMe+9eTgB670zXko8r8pb1R3Q6wE/cbBmYHiP72jXw3jHetjr0z/EP6yN9KOAZPsIDH28PP5A8cWCVz6RN1Pu1/0Kqen26HEoOuQEiBhN/Sp2RvpwY3INyDvK/fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWnkkYFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWnkkYFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD16C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721542553;
	bh=yaxuCUplbnnSQO+rFcasysf0Q9QEVYejatC3xrXwh2o=;
	h=To:Subject:From:Date:From;
	b=RWnkkYFDNEJSl+8GhvPFs51gbGy7jxvpi39WMtBVNGrmbOgyWum+jmrpSLL73mDi3
	 ECMNZX7/asoUOWvzaxrmFBFUJDQOavEHENAY96OvNu6aLhJPQJ59znfJQV/yFcTqnK
	 hC7pkgiRwp1XlnYAg7UTaD9wbp4OfCCvttdzvLxC/meX2DmItmWMwWdd2XQavgR9GK
	 TP8mQcpkj4No5Hh7Nm84tP5soxsHlpgLHJt4Ikw5jJ2DSm0I5tFYPj7Zmt0pjgV3gU
	 8Gt6lSDWMarrCKGxGOpJ5hm/tiz5itSkFmCIhNIn0Ac4DJHzxiDxeYWQXocbpXRQaT
	 a6A1DfibLI/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4949C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154255368.11032.15931841690973099062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e75fd0505db97195950affe2a1e20b856472c7b95665151fd53847c1f5f7cf5
Date: Sun, 21 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721542553
