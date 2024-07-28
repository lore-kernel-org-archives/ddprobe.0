Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6CC10FF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722137154; cv=none; b=tQNjyQZuL+mB4Qq8eOx7YKM3ghVbkKsmHlRR3GZKCUIuQsW+1DuEaky6ZFdtwCp9qgO/T27K/Mn4RbEtoHzA5I7QIwJlJC9TPMOYBin09roqABFencolvIZg73LVOeY4zeREUZnpesN9xn/pz9TFQlTez6whtPH5Zj09eLGYdrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722137154; c=relaxed/simple;
	bh=/HH5pGp4kRnsdtu3SFFbMsfpuqk/I5DmCT0mVqvk+uQ=;
	h=To:Subject:From:Message-Id:Date; b=DkGRegZfNTZu/cHCiE5vbjIjLHrpvH+C8UId7BtzQHmJ7sUZ9oNROrJZXfSwJ93HThm2G3GsgiPeHXeA/MzqwaQlhFxBafQhtx3j4BNx8TbVl71m0kSMy842pFwUaQaRafzW/i1UATIeWbQfxXFkb9WmwJ9RTB737GNMxXVJzOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSY4p87D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSY4p87D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13E8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722137153;
	bh=/HH5pGp4kRnsdtu3SFFbMsfpuqk/I5DmCT0mVqvk+uQ=;
	h=To:Subject:From:Date:From;
	b=bSY4p87Ds4hDSlU9Tf8JbrxIU4JidMvLOtE1rKuXNtW7+X7aXVgpehHkGOFDRrdDs
	 cpjTeHHiXUveggWL08iJJeY5J7qNBH/Ze3YkUeUGGrWLXrLYYHhkgZKNWiKX6+09iN
	 RbcKgsISE+lYIgbo6jphq+sXcjN3XzoiN4tU6EwScvOKoprnmXDzXhxfU2f302iiZL
	 YAjjiCVJCEDrSaKFgRe0VfBgLJ+hUSPJDYi2+r/mzFxMg8R0MmLrbC0lQty6OgfUjG
	 LHmWPk3c0aUlwyApCit0MVUOb19cz3cDqi+dHUZiu4trNUwKx/M2nPmO4rlZU27UlN
	 RchPz78qpDQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8A0C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213715360.12341.733666049681176002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5622a7b3740b297dc8eabd389d81e9c70804b046ff2b390d8e83637d408cd578
Date: Sun, 28 Jul 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722137153
