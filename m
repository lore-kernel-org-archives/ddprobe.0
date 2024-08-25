Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B003C466
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724565354; cv=none; b=caVvkuN/Wqnd7R6PREtw+bhsyCGFdOJbJBmtmqdl6koAKKIY2pUNALFmvTVD+GBZnDq5f6ClIwj6ZtmxReXSGc/hAAvGxxxvVuwm9wIapktuLbw6411poQxe+xtzzRkb9cGTz46FKl6yXWTPJsRkoK+vLzTm8PGRxeVoGf606lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724565354; c=relaxed/simple;
	bh=8Eqs+x6HDwkxMmJ39XKYisuZOUep+S5uW7ZQKqB7xl0=;
	h=To:Subject:From:Message-Id:Date; b=VF9At4AtSYUjyJPTItOQEeAAlb3xUI2NIVIdbYvh53Bu9RWYaiRSiX0OHLyzunuUBtOf8xp5xTfehaqCiMPtjAete/Mb6su31tbYaQjqw4ulsgYzc+cV1o1sjA1iV2LCVngcuMMJHZ+gvd3lUgK8UcsdRgsl2GFOY2SrxX3Qwhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8Ug477H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8Ug477H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC4C4AF10
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724565353;
	bh=8Eqs+x6HDwkxMmJ39XKYisuZOUep+S5uW7ZQKqB7xl0=;
	h=To:Subject:From:Date:From;
	b=A8Ug477HrT/JjpC3HvbVmu2VXHm0BX4sE6iY3ZHG5ZhF37+xARf8AOFbR5zMhBN6+
	 XfGwZym4Dg8zdH9NaGJECvfUEB2uTZE2QrTJEQTv3lNrsQAUIO3E7/9by+39o1o9zA
	 k9Q2uhYkFxMBj80G3GOp3zK1gk5f2Ne0i3YLgEbq7dXsVXd+HmGicmr2ccQ7ry+6zW
	 3Vr1At/vBEPkee5ie5++VqSwhpDdSKF28z3x5uI3Sz8TNr4N9iAeO5saJtBlk9biG2
	 5a4BxeF2hnKaWI2HgN2OXULvZYTtWWemT9uMC6mV9f8NZVulTYko/OFRo0LxYRzjXx
	 lUmQHbw+EC9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB0EC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456535361.25566.4581402634847572016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7392a1144498a77b39f54d151752ecc2b8e5a4d911082d1f7076b7f779b43fa
Date: Sun, 25 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724565353
