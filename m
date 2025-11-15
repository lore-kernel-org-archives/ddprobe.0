Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113531DC997
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763232654; cv=none; b=dYCw8hyfXsZrCpEi+JVd3H+Vx+viX2u7zASXXmJdKKEp2XT49H3JIzutyDCPZXy6YN3oiFVv6rq1EogXZ6QvZ/J+kQ6+EEqM8PJoUKAHjnsaQP9wPblMCTjkrpZaXPVRp3Y0lziDh4hTScTDc4TT+28p7/e6bHW9DykJs9UY8GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763232654; c=relaxed/simple;
	bh=/1bbFwCUqob+Ssp1iOGk3ZQHniYzZGxApva2cKJNzJg=;
	h=To:Subject:From:Message-Id:Date; b=MfeIWljFsOFxeUEJgQblINNNA7vthac/6xVM4GN4W4avcy0G+GO84b+jh4lHyGJlOf+Oscmc94yvGyg82qHOY12cldzc7MWUW9cU+iODvcikUzz/JaH91d6ITy+HvL9ICxuVvbcLnrZv2CV37NeIZpBNnBgv/eW2N1MdQFlWZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP6C+FDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP6C+FDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1D6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763232653;
	bh=/1bbFwCUqob+Ssp1iOGk3ZQHniYzZGxApva2cKJNzJg=;
	h=To:Subject:From:Date:From;
	b=eP6C+FDj0GvuFu3QTb/WxBYAd+nGux5xVnoVxJ8RB/zFLuXv7QidXcJyNV0XRBlvQ
	 +39wibtXDxt0KFpVOHeDs6gp8rDDzwttozfjMOZOp6x891r/2RYNmUTZJk29N1uYz4
	 H38iyyPoKC0BOEtybSd2p7ruQSK1C0SxjuMGk8FZ5XO5au6/neHpHmTr1DL2na+4fo
	 RZBaup7NCMmq1B6HC7kdU01s7GXEn+oFmY7DqhYyz1efVCo31q5BqFtOayOMF0m7Mn
	 mVKYxIAn+9P0zNbadjs41U46cybH/IkZsg8mYGDbpIjVYNDe390zG2j8Z6dnPO23Pt
	 BIGpRkv6nw0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90139CEBF71
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323265358.14442.3756205979451996817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a99b3deaeefb3df40ad0f2fa286d3c7cd11974038c00c63067411d008a38837
Date: Sat, 15 Nov 2025 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763232653
