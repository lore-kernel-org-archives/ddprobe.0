Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CF412CDAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739930334; cv=none; b=gBSRSqfYArO6K1a8gGZ75J3YuNxdiNTrbqgAMQq0NPFdiOJYtfoVfcJ87xeKVMmn1cUs3BX7cLxU20gOLMBpCCnLbrgKM+sEjNN9QOQbg/uu3LgfHBuRRAGgICxuxqO/sWESWOaYHu6CRfOImJyHWrTPN0XVktnSMyZXXjO37D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739930334; c=relaxed/simple;
	bh=NKqUk58qeJI85bvdwvRrv2XFRMb076jzc2D19LOSEYw=;
	h=To:Subject:From:Message-Id:Date; b=aiN1l4erIBwmmOrZ8NiqTcLpp27f7veys01j7XYc7EjROvLCIUMe4MvGNjQ9ZFYR7rlt0Q7b0ZtuSG/gfTshypKO2Cl9/J1uQ1XUbnnn9PqUEgiCqyVw8NcVvv6WSWxUVuaqgFdSOh1s1umiGryJHUVQv+uILhp+87MWWECcNvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZUackE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZUackE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2DEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739930333;
	bh=NKqUk58qeJI85bvdwvRrv2XFRMb076jzc2D19LOSEYw=;
	h=To:Subject:From:Date:From;
	b=PZUackE6fllQq2b3CA9CGNrkOiWwlZa7x9TVql5L4ESvZDYmInKIa9JFbMvhI7DTc
	 H3U4QH4q1/C4vedN7oc1tbaJZihrlloz91aFxxVuVkUqwPRsmI6/KiOCZnaBy7u0UY
	 5n7flId+YhXz62oE7EpEg52Ry5mCY6w9NNnBZhsAj13rBiQ1O8itYb2tHEejyKbgDk
	 OAz8xhm/uosMDstrVW4+cSJjFYpbqkTtGhz6Nb2y6RQyWFFLvSYvWvM48YGe28zUdS
	 1nGMvYO+xGfTopft4dx2qOOgeaElsoziTE3/BRpVg4GWEjOi9GgOL4RWW2s3yNbMgV
	 vU9fqo6WIWLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1F2C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993033361.28121.3287559701746604171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9bb655af748a17b5c9e6d1e19f0cb21afabca9eda069c62e2f27f7920028954
Date: Wed, 19 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739930333
