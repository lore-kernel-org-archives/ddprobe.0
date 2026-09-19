Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50902349B15
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789828834; cv=none; b=EKA3c52GoIF/5hTOmVKeOAceEsu0i7/JseMS0A7CvFFQXI23CsKGyvdye1tUxAkdiSo8Aqa+UYdOTOJE+u2JSteNZ6wMKVzNBVkCxGQvUwpt8B1k8JvkrW1ghccuIxHBrr72oaO5XNI5h50X0pD/eGi+wfMy0FKspMiXZKVFNa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789828834; c=relaxed/simple;
	bh=rdbdotu18K1SlXfL61mVaG2CiaOtp1x6E5sESEBZWI0=;
	h=To:Subject:From:Message-Id:Date; b=sluFxoCw4cgCDZe0Uy/VzIcGgzVUv/He/2IdhiApEKtJKUTG2UurKQHEcxx6loA7yHiPmLDx/caxiEgVlBmG2c0CJb9YdWsOUkthctY6Mvp6d3w7PQI+uvAbnajQuMbGu33Q2dFDh30vmGH42m87GjAoBxUIkQgZgmN8FGK4R24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0UFzP6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0UFzP6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6BBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789828833;
	bh=rdbdotu18K1SlXfL61mVaG2CiaOtp1x6E5sESEBZWI0=;
	h=To:Subject:From:Date:From;
	b=h0UFzP6CFasKZUvKamjKqgOdT/el1q739gp5+WXjTxO59JlTf5Q8BmonsSPf2uzNm
	 Ycc17Rt/OtCZCQyxs2ngFheuW1XYu2dL2qQCTiWvt5f7CniJ1H/CoM9SoImHcRKANX
	 k4TXCtfq+iztreDgysZ7627Rrp2e14n1h5D89Iox/4sZE8hmK+JPZLRMG7PNjpCYoT
	 hdc+bsNgUWHF1CVHXhPZf4tE8v+eYn4re31hNBMr7qSG1dVFWfHF1/t+GytlMDKcSH
	 LEEiK8mM5c+0V1Ye0gPA/416PocnRqnyYMUOSBFjhMnzs4/pEmhdDqVjymkt4V6H1V
	 U+nSzIxuQ8K0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA03EC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982883368.29453.7348298821110297483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf02ee2a72b3df43fbfd9d38a43313b9738f1047f4723c4e5f97261589e316ce
Date: Sat, 19 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789828833
