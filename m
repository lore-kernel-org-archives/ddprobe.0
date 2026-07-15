Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43A335555
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784099314; cv=none; b=NDvfbUPHhIC5WgFaIgFJVwDTiDz2MNRbJiuQ0/pkvtKPEULBr7YH4mQbx9kBqhYaea+2v37WC3gufhXnQAkfBZIwiHi4wgjgDsJ8nWiclnTYTXdCVyDwg2NtzZjksdd7fXFl6F2y/Zb4UgYgm3N/tB9RKbHyZeKrYl/tbLHQA6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784099314; c=relaxed/simple;
	bh=Kf1rhKe8Lwjz17PIiKgB1KPSYY3hDW9R/CaZWi3MfAY=;
	h=To:Subject:From:Message-Id:Date; b=X4nyaSn8P5dZziry7PPhGDNFrAFCD2TD4/zPwIT0UiaaKs4gq/gU3oFK1SibUDJIdHEYiUt1DX5Xv48AVR4yX+a9hsSfPbXnvmz/1/3NtbVRcURZnois/LxQqNQ+jAfpJbLheDlNUFjJmFnT3m0rDjr5MDgHDLLr2GI6XrEPJOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+LUWCHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+LUWCHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C63C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784099313;
	bh=Kf1rhKe8Lwjz17PIiKgB1KPSYY3hDW9R/CaZWi3MfAY=;
	h=To:Subject:From:Date:From;
	b=d+LUWCHJK9BU4sAjjvR6F4lgelJwULtyapnNwyx93AjFWW/rCBJEMuMBiuN7fYhdo
	 eQ6zYuq4aiAvnKHeYvvh+OfqIbJ7VdigRszwyOQoz5sqb3U9RR5FzXyMrekIeHc2qQ
	 zEneO9v0V9GnQ5PZq6VentLaV0VoZB40AIfBqviMFoKBCQBBBqOzP68Q9xLLxDNKN3
	 yqADh5qJUlIo/IzFG09b73PkP7gIkYC75sjMg00tsRVhLI72+0w80qAZbHUWKCzhWU
	 QBBtauYqNEcvxfqpnoWzo07WGQe7+Vsud4bN1ugJVqKAEbLIZWOjjQa0HzrmUZ/r3C
	 wlgfHNO+X4ZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD990C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409931370.20223.7329108655796420507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab3ed8a0a7469fce7a98067cb0d3e556b33e96cc2bb1fb5fc3cc217d17ed545
Date: Wed, 15 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784099313
