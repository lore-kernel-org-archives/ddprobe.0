Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ADE13C9D9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735836354; cv=none; b=PKgYZPvmqiF/cMUriE2hsRK2k9hIzo6y5UIEw/yhKjMYsJ9P4beIoaYdD6nID0Xul6wsXaYrtYsSpNzwIhC7dQ3us2jHgKIFcEjdIqmmtUXHhdF6t6tLOIEtEBCUinUstOU50GHwEGPutRYXxW5vQxPWWUQv+OreJPDVxDWuD84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735836354; c=relaxed/simple;
	bh=M7g3jQ67r0NHfmXFbB9d4wtOgoXazzccltQfHviMNZo=;
	h=To:Subject:From:Message-Id:Date; b=nHP2IIo3g/cNOcc8qvDa7Om5tnemLCSNTfDXEdt1XIpbPG6n1wc9C0GieKoZHPndzmKIfb9nwU9dW9z0UYHzfUkwGduIHvgkxxDH6/ibfVFD4vKlYwp11t40FSfKBVrctqYsmzI7QgqQc5m0EPVsmiWZt9nzrzi0uMt73f7jrIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZd0+9q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZd0+9q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADFDC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735836353;
	bh=M7g3jQ67r0NHfmXFbB9d4wtOgoXazzccltQfHviMNZo=;
	h=To:Subject:From:Date:From;
	b=uZd0+9q8x882QiscQpaD39lzuWs4yaFzJFfIYB3ev7DcM0qWZuQTWPZQZS7NxZZN7
	 pW/BizgRCoXottmgWGtqR+oiFjTM+Qqb2QV/pQ7YJZ5BHvD0xcfpskeMYhYOt98DRh
	 7E1ITQaYYS6px5UdthLMMRhpbMj5DRUWrKKymE5+ArEinf3qr2pHH20M4sCFUk+NiG
	 vBVJyNUEpS/uw0tDW18vQGWmn45Nv1Xk6rmbPQOlTAgjw+9OWy253tJ49dZFnNQzV3
	 MODx51tiEd/1Bd94ucP+7sUtxRPxAwlZjqrgQV0J/MMUzy5fWRXTmXlU37fD1TopD4
	 ZNHELdIgu47BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E96E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583635357.26766.4603657013723994553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7130efa5a6eb3f45fb2dece619480bfcddd1a193941a206733cc9bde0a07391
Date: Thu, 02 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735836353
