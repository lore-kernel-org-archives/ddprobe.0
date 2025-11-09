Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA2E883F
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697394; cv=none; b=KIcdGHjCHWnCrYx3uel5rATYFdbYKfRbYwyAneiC1lScDDEbjMzjygHvj++KXdMHzvsClVUWA//vGwxuOuyR7yqnJaDhOlKK40H3Rgwoc1i5nsnLucydseUbfb56HR1bjEKNJVAUnKO9NhQJM1DohXvlkK287QRU+4BOp9w2/O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697394; c=relaxed/simple;
	bh=L1qGf554cbl24VYUD/qeLC2749tVzyhl5eEsQfSXP08=;
	h=To:Subject:From:Message-Id:Date; b=LQjljJlwXJatLB7sAmhSZ4F7VeDvGIKWEr+yssRl501psFw1AG/7G9sOEqSc2+39YXVvz7WRdyLxCCwB0k4k1keC8GD24EJhFJp9VxjzGVbDNWZZPrBYJHG2hoXP80sIC3Gz9gUYUs3WysryyNwuBpRNmfG7CjCwibP6nShSWfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei4UxNVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei4UxNVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0387C19424
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762697393;
	bh=L1qGf554cbl24VYUD/qeLC2749tVzyhl5eEsQfSXP08=;
	h=To:Subject:From:Date:From;
	b=Ei4UxNVgkKAIRsZq5UoCS+oZZ+/n+Bz3r1Gie8XaelF9KHGCw8fZWLtjqGQj18gpd
	 7McHd3JqbBS6Tv/AK/xsqvu2uyYMoIPdn3UaS3jWeqrhtD/mCMMTkh7MKhgA1cuF5I
	 Thjj5EQuwnBRTej19KVNowvrw2pIlczQaWLqQnSirEYUXtJaW4qfiNSJEWHc4OGMps
	 HwEE6i75uR08dByZGSslryemxsPs59XdrHn6eZnwk1T72bZ1tjFInujfA9++cUTp7f
	 R7fE6JeOHSWXWG2Wj2Kn93ADlZ8wWE67u9bFvYn/TSNsrjz8LOnKbpLEAVGB19M2V4
	 z2ddamB7+Z66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCBCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269739357.19483.5399472336340672450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4890664ba9ef92947073a018206a3b7702e19ff4114a54dd767d61dd1579107a
Date: Sun, 09 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762697393
