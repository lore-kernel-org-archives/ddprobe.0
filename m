Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8801C3C08
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768067635; cv=none; b=asuGNbYGBcBGJRB7cMdhL8/4tN0vsJlZVLrD0AyTj3ghbdW7oOVdwnXMC4QZ9sbbQlOUhkMTXVv6EWLaz5Ye4901XuJGRtb7YR7t61V2OQE1vZZzRT/wejOWRljQtrgvsMnkpPliCAFFuMtF2niDKjYT16SNt1jwne29GyL6BTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768067635; c=relaxed/simple;
	bh=iC6kOE0BKrQh8GqvAFp4Haz5gsjimeQLD1BAVZuqQyc=;
	h=To:Subject:From:Message-Id:Date; b=OSzc9GYRKOjRuiQkJvp2F4nCgolQml8Fz9QZSN3lbwu/y9rTOZjVQkS45Y8xdxfF1n7BrzFPN0qGGRANbapBMhNQa8eRLoi/7YL6efhbu62TRXWTZvlfQ4VxtTib8vKTg8Z4aBYQnGO8JnMa5een5FgnE/irMFIRW3nRRV3GQPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4RjkZJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4RjkZJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B12C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768067634;
	bh=iC6kOE0BKrQh8GqvAFp4Haz5gsjimeQLD1BAVZuqQyc=;
	h=To:Subject:From:Date:From;
	b=I4RjkZJvUyW5uq4b4e1qO2tsd+Efha5P1oc4vLawrF1lmAxUSLCNEp1K+v3vFykMr
	 ans6Tpr0pGEjmRDqCVmdaDyVn9IGULUlZefLBLfKikJ351SqkEPywBJBfvgAb8ASsm
	 KdGLwfw3Ie9MB+vHEZvIOTUetiKKSjPbOXb+l9ncc6yj30VYb+Sx1eq3RAUm6e47T4
	 Ht3EqJwkeFxEMp6E7VJmylV9JC2WNnxjKCAUN7klvaMt7GB2Qx+4K3fKkImJAteH8w
	 6rlCtDd0KJtnad1+IAOz1DjeHSo7aEjOoVg7AQaPT/82Szs0K7n23mDJBq1LjS2iLH
	 jh+M1eemJoEIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94237D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806763358.9783.16068429437954076028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c482f66e89ea2e23eaa774bfb1ed4c209239b49771904dcd2a0223f8945656e
Date: Sat, 10 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768067633
