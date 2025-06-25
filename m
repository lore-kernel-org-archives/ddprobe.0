Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4108B1B4F0E
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750836594; cv=none; b=DlklMfmL2CHebgUN/+xKD9zZ9+JW6bH1AqKKb9xBDrSPi+v7Mivpsum7cJHLRM8wfB4I8XNkhvYyF05wqqkOvQWyJceTO6uCFFm6MvzDoFGlQ+eo3kj/HigbviWcq3VtCF1I2nQMO0DXj4RI5shvUoD8s8PyFZ9mCioCzNdJhT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750836594; c=relaxed/simple;
	bh=tTe6mljEq9vlWunZ0bH0RYVL6sF3s5ibyfcIZ041UGo=;
	h=To:Subject:From:Message-Id:Date; b=Z6Bmfi5ERrYZVMe8VCfdv6Z1y6OEOkzqxwBpC1uvOeh6RpwfGysEz1JeXpronCvV87Kj7R8mCKchzbL039Uzic6n2pSXamAXDsVMWgl0SWEctalFXnZW6byroTPN5sm5k/DtwhWarrJA2ZfZUS7U2wb9Uaf/k3CQsgF9J13uO+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWvlBWzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWvlBWzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750836593;
	bh=tTe6mljEq9vlWunZ0bH0RYVL6sF3s5ibyfcIZ041UGo=;
	h=To:Subject:From:Date:From;
	b=mWvlBWzOJoQ2RHL0rJtCW3qrGdHyzSEpIu6l2sdkIJJd/4feSyK4TM8NJLxi76SjV
	 oWKEizNexagom9BBIWj6a29OiWc1jL9LmopnbbX4N9f5GOcc2suG7Rbzk9mi49LUhM
	 d9yt5yZCXjqpDUGiWOULAS4dPwZjyl66bTQEZyiiFnWWmdFVl+Y+irCZ9xzQfeu1Yf
	 wWKKHEmGPFqXQXys8RkXj7AqFsrWpdiB9WWGpZQlyg9jFW2/MJ2pSRCrj8m/mNH625
	 CgGe/guzFBvnlUnosjGpHdc4cpLB4NU1qkwx7+HM6yWzvgXahOadxDy9k8X6QIH52N
	 lu8zvm/lxyMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC1C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083659357.31963.9822775370297009502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44beafa059bf0e5cb20e7815077dcc66d3b1144474285afb7ad9251232b92b4
Date: Wed, 25 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750836593
