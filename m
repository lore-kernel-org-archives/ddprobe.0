Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56706360EFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784314114; cv=none; b=H1xgCgfww1vJN8wYqLIsTEu8+CnI3dHEFKeovGWTdyniTXExaqNSvcK1Xamvuk24rwK1Dqy4d7G2rzvlx5frGvrwol+Cza+fepAw/6gA65yoyLomtQ0RM7q4zZ2GjMMKs5uvtgFyv28t9ayiIiG4yx+vR52NZfVyCMa3y/qTPWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784314114; c=relaxed/simple;
	bh=xXLRtIZzuI+tHPIEy4NeZcCFdox/jLMJLk+j5ODHQWQ=;
	h=To:Subject:From:Message-Id:Date; b=CR+CFilxiJpCXF30JFiq/jzJSLMCMjnwhSgAzNCi3Xkp8ZTllESvwoIyw7N6pr6sXkVVodS9j6JJ+aNFFrRiP52dAIA5ieaArTDrzcPBF5Jc9lkKRQsm6PQ3Y3fPKd//Q4RrTaK/58kQiMDiL3JAV5XCCJcFKOO01hyh0nguZM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKWd8LIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKWd8LIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4610C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784314113;
	bh=xXLRtIZzuI+tHPIEy4NeZcCFdox/jLMJLk+j5ODHQWQ=;
	h=To:Subject:From:Date:From;
	b=EKWd8LIFVQy9HByiTKHQzrs2gfhrYMApb4NM4Twu3j+86HWnGMDMOQj2D+UP4wwdE
	 cUeyz+lQo5MCGxr7QwN+JwvK/bwwXj88MmBpq5YxZ7cThFSp3x1gPL+Qz/NsKxTH1g
	 ogzkIMeybZgg+TYCKRu69cIVWAjbVWCd+wGh2FZbrhN5lNNhrspY4iBUbyIl8a7Lpi
	 Rk2W0j1yr+24cM1sYTnp3jvqkzIyTz6k82s8WsE2GNdGn0zR2ZMXhXX1cMM4+0QIfz
	 kdLva41gGGIeVd/uiJo1nCjAdyu9sRWepJ4M1hm48Uz76NHB0KGvBaRunhPapa3phy
	 O/I12894XoxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD40C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431411370.24328.4275131317055185892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca67b3ee7709d1bef78176cbf2c838b46397eb60df581fadbdd9122a119d85d
Date: Fri, 17 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784314113
