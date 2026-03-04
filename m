Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D7B3B4E8F
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772645094; cv=none; b=rWFFR95ZGyhg1Ym7aCVY2SnPnKMz+IemhJhAaaD/jCKIjLYj6vvK2t4dgcJbS2oGIiBtaH7YMeWJyPuYrD+NRKy1gh8vwpy4DV7FjHxHSH0ex/GTply6TOoHdsL3f+RQN7p1aFfAUhK79Jzm7GWA045KFLo4qdwwHcqpSyKaqpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772645094; c=relaxed/simple;
	bh=UudyoxP1FKIhpVO7dXoP6f1ZWHdjhSLIoP+g0oaDJco=;
	h=To:Subject:From:Message-Id:Date; b=ThTr/YTEWVXEF/WbA1Je+aJyPHjd9Vyn0LuHHhgFj2TQyrb+F71kb+gOHTW5wgHNRkoPCnvO/sraT4WmPa9YIB4Z2z8nqldU2qRdFu16yk4CPc71JVXXs0OVGmdyxWwWMynx0GYjQksTv8Mhi/IXmKPFe+KPtGl4Ul7PNNkzvP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVB7KRYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVB7KRYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36E12C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772645094;
	bh=UudyoxP1FKIhpVO7dXoP6f1ZWHdjhSLIoP+g0oaDJco=;
	h=To:Subject:From:Date:From;
	b=aVB7KRYf+hrC7iC6DqTf/Hivb+3FpnfNs7S3Bk/5AYz1Ss01DHM+UJXGWfDko/PW8
	 JDCxfyDuwwN7E9rRW3mfRhzAvkfjmj47BTJI6AjJpX7fWTNdmd8DBB0jtP7eKpOwox
	 FZPbXzvvCTOh7NRO64AiprEBtwD2/MSfFFFRVM5sCichZeBIGBUpWEqTzzITmvXfM7
	 ICqQ+E1AtMVVOAkSOyBmDsTyB5qOBy5LQMHkxOLFh1b1sx1lP4lBuRa7/qsfsg9qKO
	 LfvGLm5jA5NYvHYPoqK6WQqn+kQiEc7z0F3F0XbC76W2bOT8vWZGy12K30KYeW37Al
	 0ggFWYa5aKByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB8D2EFCE20
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264509388.25968.12475096038285689150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078b3b3de8a699ce93ed8fe5801e10480b54597ad44f0b2fb7bb2a397307be69
Date: Wed, 04 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772645093
