Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378E830DED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772445894; cv=none; b=XVWSqbhtxuoOyp/5MsKAHS8F0Wz4nZO9uSOVq6E22vL0eHbRZnBUMtECcvOR/2Rjq+U4ZZ9mFYJa9pWqqWHPj31ab7dFAMFa5ru275KFwNwlsAkq6UivNXw1/7//NpWBjUvBATxSI9BYOnvWINxPwWIZvTituzO04oTFnxc/Fdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772445894; c=relaxed/simple;
	bh=isSrYf2vHJwkvxpcoiR//Z3ahqw5D6Bj3k+Kb4FWG4U=;
	h=To:Subject:From:Message-Id:Date; b=Y6WXSmmLxFgQzU+K9/h30FyfDBfBuldff9AYpL60uM4HeTyTw3TDyTbex4Gf9eIxUZv9EUPiJv4wyJOrnfdpCD63Cqg6mFT8w5af2aRO/0T0hk399GvqTQHMKKo3dGWb7bgIYAe/PblQqdfpMJAowREHG6xwuTJg+njOSk0LLPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbJv2Wsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbJv2Wsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13C8C2BCB2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772445893;
	bh=isSrYf2vHJwkvxpcoiR//Z3ahqw5D6Bj3k+Kb4FWG4U=;
	h=To:Subject:From:Date:From;
	b=jbJv2Wsyv7hb0IPO6DfFuBiBmgx2MfksALk2jROgyzPtbzrea+q6w/EuoG1Pqn7va
	 k1gKXlHRd5IivYKX6D2qhfBI4FJjQlkO+WOIofdrzzgDPhzb4efP+HcuuT18Vy6LFY
	 E1PoFI7xxtIzQWNcnGBRFkwRg7SnE/Uk4a9HgHQbbNJP86ILTO7kXSuPQGo2UimYT+
	 SwW3f4zydXNgqJZfiRBwMa313MUMJcouvojf/eMj5426KSkhEeUzeVfXmcIBZ54Qyq
	 6Ug6flmw2tiG7531TwIjHx6IlWp1lBDy6Bnw97q0Id957Jk9IprX5FEhaOZ4WJMa5A
	 Vhpm4j8WgdQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6299E9B342
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244589366.12626.14025162023839221738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ff8d5335b910e3d2f377ad861ee225b7a0a7fc843819e45e8815d8820adfcf
Date: Mon, 02 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772445893
