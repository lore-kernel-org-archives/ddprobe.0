Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870325761
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753806595; cv=none; b=nikowvhMAeE1GLziprqd2eEb6IKTNdS4esQZfWgO8P96Cf3Q/NfS9sNTZ3Db132L5OuCo74DI4bhzLsOWEXycDRV/gs6e0va7RDa9HiaF8ny5rwOk1pkiKuRFwbxbu7OiZC9DQXiljNjV0W+3VIee7bDt4XV2uYG5WWu8Ym5w2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753806595; c=relaxed/simple;
	bh=8z6DSkbMDsC0Rmiw0z5UCucGrpHrT8RX/7mOtMUbJHg=;
	h=To:Subject:From:Message-Id:Date; b=PV/fZcGxmK4Xy0EOcevisF5hOUvWsPeacxBMTKXwBNf2WsW7Y4ql5Bh6PJPL1uaZ3GARDWYf0Dws5FnvUY+xc8L9rkpvE00IqDabDXUizhrY1zKQ/egOHQsfkTGe/xjp8rMnZDYIgDn6hERH0Pb5zIhRicETOv2oB8cLDw8+Txg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbTKtLOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbTKtLOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D45C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753806593;
	bh=8z6DSkbMDsC0Rmiw0z5UCucGrpHrT8RX/7mOtMUbJHg=;
	h=To:Subject:From:Date:From;
	b=AbTKtLODQYu5RUfVNOSfp4Ua7np65lVQjWo6jCNL/Fh0XNii/EyA9wM4lBqhI7g+f
	 caq8F6bPYWmv92rj0FrwjYC1baDbyBXe0ZoXtrLzFfctMi2kNE1lVH/5gKj1pOzXLC
	 JX1gI9h1wEBASxPih+1ObNERfMbFhDk+NW9AJKy1n5Wt2UoFk9W8At+ygkqHaewMFA
	 wSumAbdicbnor7aYj4I9qiql1SkgqHvUoQmhlngS9Ftd7xbdhjxF8MdjJgHckJSXWx
	 rlIu6LgzSJGOaBZyx15/XK2dKcEtfyyF9zWRMud73XaoDYSBsaWWHhNWHFM+w4MVb5
	 NJheiUD/lAEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F02C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380659358.7147.7474611962500214196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737fbafb46a4f4f31037017b498deecdb2e809646e9b5299d1e1674dae51c778
Date: Tue, 29 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753806593
