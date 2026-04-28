Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AF393DF3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777344454; cv=none; b=kcqJwM72ubBh0WkDYTyV3HtCwOsOqmAKwx/c0sFRyEnC7z6sRNmYyWmanowLPWZophzA8zfar7XrXXbskyb5qi/nMnwVsiQ6PtUoWD8twTJfoBMbfNHv5fmVwZ8XrkLmRh8am3eROjIvA1OPOsb3W9ETstn8PDOiRBSmLFXsHUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777344454; c=relaxed/simple;
	bh=FBJu6fj+CgidaRLEzEfotzkXvX2WL2zSgbDNqCrhbe0=;
	h=To:Subject:From:Message-Id:Date; b=FsRCaKu+uVLJPuw8EoPsP7rRiIq8tTIVBNKYNRr2W2Vxn2cIUto7rK0bwKNnGgAyCpMy0ER+2ZrXrujMjXtKqplRPJ/W1Fy6yea/joXu3j8ywwFew+3TqRnybbBZqFp+ASZDmK8UC6aY5JlvCFpAVa8Lw9X+x67Eaj4j5GqX3JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cug0kyFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cug0kyFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA532C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777344453;
	bh=FBJu6fj+CgidaRLEzEfotzkXvX2WL2zSgbDNqCrhbe0=;
	h=To:Subject:From:Date:From;
	b=cug0kyFfFQu8kyicu7ARe8HBvqwBDAsSkoVEefgi/zoLysxevXqQOm76pU7Dz+RWY
	 gT5M2G0wIUU0Y38fcgSHbIIvMhlZAJ+fBI8q+lJV3tdkOfQrEa78Dd+rK5D+xdN361
	 YIJUoVP9x6W9IFEMNBwcJzkN2Ls0i9f7SARUoFbLlnjJhcjwE6/pHUGG8dSR2Az7m3
	 voZP9rhyMtc428A2q7tfjbo79sb2SDVYb3SKFH1h0UOrD2IW+S1xg+cYqMCLVvoIgb
	 pRLVDUrI805XaK9kxWJEvpuMAVmdxtmiNlZLLC5zXHybGwF0vLg0eJ84AXBOWIJ7QR
	 jv7J4h+95rbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D66FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734445368.9399.11487023190859661452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15714dd109deee86158b66d3ebf9528eeb4843ff6923ffe1b5b8c7f854151b37
Date: Tue, 28 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777344453
