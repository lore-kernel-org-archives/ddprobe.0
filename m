Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BD3911C5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781283994; cv=none; b=U62YgRWgeLhuHhcxrgsubDUUf7TuOB12GPpUTL8hDH9IhrDIcN/MUyGkssVJ3Oy9+wk8fLbQHesnj+iRvU0u8zxAYgoVTESvcJhzxirbiYzCMjaiI9e4AFvTB6rdkKVdYmemNiPvidBW8MsAVOCXfzuFkPm9lYiRBoOmfHniIKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781283994; c=relaxed/simple;
	bh=AweCOAIP8uLFaTRZUFQxDUrs+ZYGwvKaKKa9EQh23G0=;
	h=To:Subject:From:Message-Id:Date; b=NoC2FIlMpVgLJNXeqlUhBZq2QQSJzWxOFc8CZjWmoQnxWhn/b/NvPO4er/KQn3EtTcGz98+zHnF0q5EVWGP+wb/3yas7nrcqS8CnPN50wHL37+WHjvbcJU3rBSJlTe/7NJ2pV7FGDtO/JwC0EwsqKlac0Kxk2dnJfPt3+kVeXIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR0JyNYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR0JyNYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7835C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781283993;
	bh=AweCOAIP8uLFaTRZUFQxDUrs+ZYGwvKaKKa9EQh23G0=;
	h=To:Subject:From:Date:From;
	b=YR0JyNYAkmnkJAJ4i9ga1F6LFLx/Kn1E0AJwYla0HMl0h9pkGWQbDYr2E4Iuzw1W1
	 e4QgrUPOG8xlIV5fy7IT2kMwQpz/1XqulyY7/3elSrpMHNNmDOXYH9sd1zQInUCkNR
	 7GjgI5FVyXIbHhqJQCPHgSZFT7h1xY8ck9YvIrCXzlNO/c1Lo7ZBaWohm7+d+7Pmg+
	 h+hHkuTCvEVZD27W/p1B8Qst7SfWHLbXqGKk4kMs9hSM+0dQnily3jPfpaNCeu8KG6
	 5BDTNAuQ1R5tQdrTKS7p7EWTflIxC2MplyZh0jZFtlKknlTC29YTfhX1Wwqx5D6BjS
	 +z/1CgFj+8wCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94ECCD98D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128399368.6537.16400891176089717158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8444fb97939e7beaa1877ecbfd9e61c33c6405136210fe5f9056a2229d8d5569
Date: Fri, 12 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781283993
