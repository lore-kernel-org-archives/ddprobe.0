Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC213563F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791654634; cv=none; b=kWgRh6bc6AUb+0r7kDX9lza28CnSi6IdxD9969MaklKKpXkzLRVS+YBn4Z+kWxonUINXcBqqVL1qmIWbiLaIBNt/mEvZ+Fp1qPgh8UfI/VCv3e/qFXYqNbKYqI1wnpuZfu8NhT9wGu7d/8cm2K3eM02DA9FkwgNr6vp4HaIn2PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791654634; c=relaxed/simple;
	bh=lkQUW+bV795dYio5BlduKWwFTidCWLJCS+1rcwdXwTM=;
	h=To:Subject:From:Message-Id:Date; b=KfC6ZYNx8oQGXXAFU+BlF+ZRHiz60S8WcFZvE+varQ/ChvMArzKxMuB0OGADlXBEocd+AgqLVfdfSsuWjX0T5AjDXUY6Hbv8Isodb3Icjrd6r0ColRXFp44LqHmvUv7KUaiKU7bC4QMMvYOTUcdgPFXFDM49MkXsPvLBYDmgbpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilHqZUk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilHqZUk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF53C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791654633;
	bh=lkQUW+bV795dYio5BlduKWwFTidCWLJCS+1rcwdXwTM=;
	h=To:Subject:From:Date:From;
	b=ilHqZUk9JtZBMaE5DVUozj34+2U1oMyflQyple7PVZuONoqya5ldnZCsKiVqIi8vb
	 w2wD1tLAAASLrVBVEcAT81tAZEULETD335xoAgAkXiiqKjmh4cseHe5w1e+Yg6V7ba
	 zfBnFg4j1pugDWoSpYPYnOqEo4GHFW03VMMG2VzlVLjXh5qFwuQqMwHwYiojAvwgtm
	 Etvq8sWeC819SO30Z2xY60Mk/E5WKz9plzR8DDreGYtIYCg657N5ejRWzWdPP4xDAE
	 EY1+kVEPUIfvKTA4sNq8o55rQFXLMUVYIPCboWlEKLgnU9vPpnYeK1JzsPwuJSHA8D
	 6td9PteQnMLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE6CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165463368.25932.16733714775691477589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534618bc571050a17a0c4a212bf45991a40d6f09870004cb3a1c69c5cd995d6b
Date: Sat, 10 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791654633
