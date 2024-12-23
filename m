Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D0B383
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734915954; cv=none; b=HVRX/n+Nkpw/yHpQTfrPim0ywmtiJRop25R8/hJWsQu3pIvn8USrO+s59wyfVYWmGLhLSFglS0fwfg6PjwGAPsHPIWCeHWi9pQv497hLutxAskLhn2jcWMhO/S9TqXdWhvbCEHqxLGG4QOxfIlJav1dhIYzZP0hudvJneMO6P70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734915954; c=relaxed/simple;
	bh=z0jBmDGBoOkq2Zf4ZoRRLcgPzjmYqyCE2z3NWXHE8SE=;
	h=To:Subject:From:Message-Id:Date; b=osTsS5EHmNU/WOXxR8d/71RFW6Aoe+XqicWvxLLEkVeDK3pqdqK0T3TDqP+h2E7DVQjvJkQO1TiZebve1RCWb/JKVpmSecPnJiP66VleXjUzAcs3ejwAL4NB59E7fVvHVCKoA54amxTLRHzXqpjrrSjDYt/AgdMf+tVW2WtsRkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M44LodbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M44LodbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC80C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734915953;
	bh=z0jBmDGBoOkq2Zf4ZoRRLcgPzjmYqyCE2z3NWXHE8SE=;
	h=To:Subject:From:Date:From;
	b=M44LodbL9kuqlZLBabT5bYXU/akeGB3HTvun5fsuKw9qepWkRu7VgPXFfnlHhkYfL
	 g8wyel/hRwt9yRQxmhABkUmScK8oH6HlCcMpMNFvVk6bQvVzEm14I0DBi+UezqhwDO
	 IfLHT/tWXU0EUCUP2CVBhL2b2ttaLEHNN8siDcvvFkcwyilAbaIk2GwnjuHopdIirf
	 WWWRiHd5Hp/M0ozklbH6J+VX4Ob9bz4VH6N5HoI4DpnUsiDmidoQnNKxEKK/Ke2No2
	 CbocjlzUTldH2o6NCrgDC7dd0iUgKiYlAER0aHSOn20EvLk+MVdsj3G+Bl9/QE9+bN
	 O6ejGNJy2ZU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98520E77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491595361.26650.4902128124164649761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf95bc1ea5fe12bf5746c35683e6f99953c44ab479fb740a6cbb3038019ef4d5
Date: Mon, 23 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734915953
