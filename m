Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6F81DFF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706365097; cv=none; b=RMBhd9WKBFot+u1SLj6JIr3C6ltfTQTytsnoMoad190bMClYNt2dzGzKWb/oHqoQuN7oL2BcDwZRCEBDWoQhWGfZ4hAqZLRYbB0hjjOZc8F4KIBHGMzHnkHnh6F+RVRVdReWzTgZ8VnWvFqsIwulGlH0366xkRpIzyieXfCgDXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706365097; c=relaxed/simple;
	bh=qYcwXdWRdKpa9RQLX5jP5DfF1Vnwe/pr3hRx9FCVrE8=;
	h=To:Subject:From:Message-Id:Date; b=RurXROwnlZzDR4vTOkxbW3ze2OGxP8ibva/zR7tlu0jQGcNGMTwKjTPrlkWDNddN5w5SpUJmNjMPdCZ+RIbzW54MJ8XWqxDipLmdT/Gr4URS1HdFvr0v0VI8cwhaZ5QM5LP3zMaB42wcxxoky+0FcCw+0sfhN8ZwD2no1hVJq/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLGwNeT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLGwNeT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2B4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706365096;
	bh=qYcwXdWRdKpa9RQLX5jP5DfF1Vnwe/pr3hRx9FCVrE8=;
	h=To:Subject:From:Date:From;
	b=rLGwNeT7rgBNGIVbm2ObWAaPajJv5It2/rT74wlx6lcrWApxrWI64zx5FTZXV03mf
	 KJxTjEEnDV8NSwe9Xbx+PXIoANmlB5JPIhmHHdKKFfIKxHhx+VtPsYa7uw818OcEAF
	 iFtJzrggX/sFlpLWtZWqr3Lstla6KwYiJWC0oHqBdzGhpByGIrKfsPpkZNMQRUMjKA
	 hGbdI5010/r2hFfnOiJtxkRENAarPrLj+GS0HFO8R+O9PoyFwzZ4AVdWQOuv6Amm34
	 rYFJjknQvxNJ1JoK0YS7iLX25XPPvEqUX1BDappKCA1xbbvE6kLfFN4LhlB7m0bHHn
	 vc/REay71/D0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E955C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636509636.2722.6549112157150045652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569a50dd1e253bf6354d3bc56f866c5ec26d8789a62ead181803d013eb6d11f3
Date: Sat, 27 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706365096
