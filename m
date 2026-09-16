Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0494A5ED6
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789558236; cv=none; b=qS4oNGC8US/KeIGnkZBfHPZVugLfbW9yGQvsfxYgZQk3+5EcxuDipCNpJPyf1Ivf3Km5ZxDlCgGoJJeqcFkl3DEEm55JrvJ0okMv1N3Kn4sSpLlaKK6iDsYrHQhMjgEPwUelwvGUr6z+kCHvDstVK82WEhsqK0y1Vru6LMOQuBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789558236; c=relaxed/simple;
	bh=4GwBnb+v/PTUX+MlXx27rAbkbk2fi/b/NFfwrXXe8H0=;
	h=To:Subject:From:Message-Id:Date; b=mgZXTrYBKbqujKldmbImKorQEtPgQuF/g1iRnjzNH7m2ffrjqFnPMdkhsNpGvitfL3UyqL8S+PaPwXGlMf/kOHIM/WUNXXatnbt0TOFFL2eKqswtgZ0Ym8XcH9mw7sW305g3Rml2aJ6WXk4qXPtAzSZqgGEzZURD1gEhM7xn9x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgU0vLcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgU0vLcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61C9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789558233;
	bh=4GwBnb+v/PTUX+MlXx27rAbkbk2fi/b/NFfwrXXe8H0=;
	h=To:Subject:From:Date:From;
	b=tgU0vLcvPKLS0aPxYgdheyudWpaJ4PJGyQBeKNkdmGPs9yYzAfiVRxilGF5ycQnoO
	 WK4SE3WJj99PR8EySqjRB1+QUBfW8xqPk3EhlqHXoUH7i/PopBlhCTcwnNvB0ve6Pp
	 gAEUHZ8MHQnPN/+OyumDwQNhjWj9dLHGIt+YRXQ+MAfYGNg5F6fttP1xy9Ih82kD6/
	 xELg/0W/mowkStM1d4XcxRWCXWfDov1GAjr2at8Bm4I5n+dHogMwdqh74dsXXht9Vr
	 s3mCvFu4Gn+zeCgZTZMMmDE0qyUMu1lyioXQMnJr6hHnjnQKGZOHTlASPltCtz6RuX
	 eY5tAtdhwKEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBECC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955823370.6631.3777725602845838646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0902c86196af9b70c2315c71f45cb28ea11fc34abcdb2b5f1f1e4031a4b8d7
Date: Wed, 16 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789558233
