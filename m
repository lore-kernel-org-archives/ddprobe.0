Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D17F1DFD8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720798763; cv=none; b=uS5ImNP/UyWXVyiMhJYRFR+0wCj6orpb94OlW/ewJMiW7CGcDDaOoTExI67+RqsegcGPmg1Cilr42MhRMSEXaWV2lHsgB0GrlGndDl4FxjeeRF//E6lTOVQupu0x1xpP+WS7fLmY0dMfXImZXLpAnUOMdzmVq4gZSyu6XNMyRPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720798763; c=relaxed/simple;
	bh=KwS2uJmI+7im6zIvAErZsSCEB2N1AHtyQ86D9OWrU+M=;
	h=To:Subject:From:Message-Id:Date; b=DsL1CT31iOVHz0/XYLMBu0LfgHfhrEpfnnbSgr5hUUtBm5kqXcDm76kjDL5wTJP1/pd8kTWYNejZ7kK7wO3iKVXb050YoPpn41w9/PFsbQdnqU1ps01a5hOgA7qzfn2D0ktEp7wmAZGFbWtYJKwPAQyg7Coa98hAdRprwzl3YwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMwaUIuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMwaUIuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D47C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720798762;
	bh=KwS2uJmI+7im6zIvAErZsSCEB2N1AHtyQ86D9OWrU+M=;
	h=To:Subject:From:Date:From;
	b=FMwaUIuDunyWEL2VN2Dp/NMX3z/+6Vn+1fopyvaMmwc30Ow5dKF6NPPvuM2vFvtEf
	 w20erFdPNfzPZPLEiyFdMGqk4OtfgxNlkDUN9Qtw3QJ7t6sEeWNNNHpVGFRJZqnZWg
	 hwlH7usaMUXKe7dk3AqxE201ZwJ5CAk+HX4pTnn7uy2cC2EFwxb67M/FdPaMDHl9B9
	 qKpSAFUiLRLQwUk7wBn80vKALG/jrdMFToyssRrUrUsZ5lWzBiYEh/LtaMgqAcei3L
	 cjsmVxgKx+228cLBNmlzpXwkVzRC5X/IvK0FsBPLsWl2qVXZ3KDRSJnEatH1QoH+Hl
	 NbbupggOkl14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D89C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079876279.16585.2370052868104800253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c3bbb9b21d4f46420ba70d653742f44234853aab6c11a247977b63a891160a
Date: Fri, 12 Jul 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720798762
