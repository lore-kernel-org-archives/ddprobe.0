Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04EF433D5
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734992153; cv=none; b=ky+b+f8ZF1xziX0gLnFRLb1dDZBDNM436UJRYGT0emlgA6a4Y2pgb4xkTGd8p4x95vYgXplVTraklktKFA0Ar9G/+Qu2QKBOPZ4Z/35qpywuvNfZC1aE5P3LGH3AgcwIcy0I9pAEwpprUZpHHnsWXlBqnt+HPOFQVkn7HR509fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734992153; c=relaxed/simple;
	bh=jI5WrPXuXd3l+yZiBrgFC3/bUs58wTqu64ZVLctLrRs=;
	h=To:Subject:From:Message-Id:Date; b=LlcoAdCTDPImgsN2MJ6EYPscqygU5AdZQbNdtPSqWGKUp59RCP/sX3h5MDBvhtJExhaZRmVzulBq9G7VU/lLD0UvsE8rwAu6+BRtscLTY8Rfdt9fwnRf9Rlod+80H0lvAMk3sLDlagfKQIK+AVBmCEqydBn2DRSjY/Ej32It7I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzgVNWHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzgVNWHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171FC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734992153;
	bh=jI5WrPXuXd3l+yZiBrgFC3/bUs58wTqu64ZVLctLrRs=;
	h=To:Subject:From:Date:From;
	b=ZzgVNWHNInYrq+X+zwiS+DK0J9k1im7dVBpqjs8LUaegYHIG1rgvw6fzsfCnoB/Ke
	 qQ0wHKRvTLm3i2GLoIwNolYu1j3MRAcnMuANxzNrgibsQd+7jYe7iQWeSNAOSsD98O
	 EVuS7ehwgo2tGRqISCyMkEhLtdEMywm0RbzGzMnrW6XKMIdKfWKZcyUhRa2emDvgPu
	 kOQNsMeB9mIfpe7jrhvZh3H8+zKc6sY9+blDyolG8L504zVgTQmHFDi9ZbLbWpCfxZ
	 W8rep/fxfwO5K/K4owBokCcK2DRlIsELenNHYONFF/dNVDlAwYSwx09G6HIy/QPmjT
	 WsJkkPVYHJLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6EE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499215358.28896.1635653306381482689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de00aea0ccb97237bde17686fd9a3f4da108e740af2df88e2bc28edbe5f73b57
Date: Mon, 23 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734992153
