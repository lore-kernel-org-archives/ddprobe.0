Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C46E26ACC
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777592854; cv=none; b=Y8ULxsAnkQKtbMKJ2tEhSS7wBDlIp0z2i2smS980dBbmB1s+CVunjblWSeHnhhLkKyzdxIq0KJAEwatA4ZY/j2VjMCOwcj4wBnleD0ZUYfTNS7viwI7dqK3jM2BmCjIAVbeXO8gyBz31M9Tyl2Voy6hOo9SXErbiS6vqA5+/NNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777592854; c=relaxed/simple;
	bh=P9bZ7fUwmbk9NMKvJEkB9uooYdNcXkYxH6lNv37U4bM=;
	h=To:Subject:From:Message-Id:Date; b=OPw+Ff0jEdru3VMf6V/HNFidkkSjm9SDJsUxrBkVk1Jq1Pu5IJlgddTbzufghff4TTjaP0lCZDXzxG/iDZmPGubp0WEOFiEthLRxVVHAqB6qqHUqrb4gGZLiLhV0+3WqfUyw2VmuDSL/jntkEsfhCAxSJC4sBZMve0u62gv8Edg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laOQDQCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laOQDQCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7630C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777592853;
	bh=P9bZ7fUwmbk9NMKvJEkB9uooYdNcXkYxH6lNv37U4bM=;
	h=To:Subject:From:Date:From;
	b=laOQDQCYa2tuGtgQrrya7HD123bYQiF36uZLu+HS+rGC+Rl056S7NU9HqaY2nYgPa
	 vpvEqeVWrRPyAKIJ/VCz37FXPxMftpLhRwzO8CNxgZWEc2Kszg/2e/d2hUq2sOH3XO
	 +60I0sfRN5iZKyPTkrkqMjBo7KONb77Q+lfHMIfY7uT05D5ErHkqK3O3JOnrOgeSfI
	 r9u6QluMYR6LWYys4SY6t7sxx1bXw1R7o2WEjxtoZ57DqP/NMoE9JT/Wa4iw0191C0
	 MZZ3LWW/+nUlcojNNidYIFjbMam0U2+/tKdP+Dk3HRUlqrBTFx71uj2yi4Fl+0x5Ed
	 Ue/jFbPbSK4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9507FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759285368.19985.15655118584511248644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286a3f03ff5ff74218a1687077e29e45c9e57b96b7c62317befd66e77adf6a99
Date: Thu, 30 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777592853
