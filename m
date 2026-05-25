Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060B3380FC2
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779735154; cv=none; b=r7DQxSs75Pibv8eozfYHmOVypEnmwZ6zMe2uqpWoGqFmA/EEwWFcBNn9gX9lv3mOyipJbNPX07SS+HhBU5q60YxsOxLOlAyiCJzohgW8EZtMT3/1lF/8B9eVwFBdUoxENy/FWkO4zbAHZ5vqnqEhfBszAq4QNv9qFlTqbda6NgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779735154; c=relaxed/simple;
	bh=ZxOq9CGOAqG+M7i/2lvAQDKKx1FGcD5UHAjTIIJunn4=;
	h=To:Subject:From:Message-Id:Date; b=papsBNgHlKI5QyJ4Q/wlrdxYWD0X4WveRiZgeX9rdy+79mptbM+Y6wSfRPNxOO7YmUl26Hei9kB2jZjYgDKg3MLPK+2ImlqD6FgM6dCrSJcohEo8rXaidy/N52tlH5wEjsDA8pcwR8bBe+seAlryNdTpIleZw/eddhGMWrxJBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyJ700kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyJ700kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D6EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779735153;
	bh=ZxOq9CGOAqG+M7i/2lvAQDKKx1FGcD5UHAjTIIJunn4=;
	h=To:Subject:From:Date:From;
	b=RyJ700kF/LU5GSYTwwOvPLyIx0brKFHIMLAaEU5o9d1Brm3VeIjpTViKI8mTd4E7M
	 FGq7h/MBhHYf2Vkcpg95Slxg0GwofCx9OFnmCNwmRi3i9Vp462uE5Prz4XjcW4N8Ic
	 p799PwNLP3pmDOGPx/q/mUGGVus49+vF8FdLjguhFMZrdb3c6RipraxtnG8RXxcTwK
	 2NgtJ2WzRFN/dpjuAxwjbB3WIwFc8sEDwIo1/BeUQpIdgpAMYHrTx+GsMhelirq6jT
	 yHWqAL12nKyPG8zGse2pJCpeQFDSi1DgWFO4oxxwUMH5QFtcTEpnY1Ofi9yFjPdquN
	 xgWzPmi697wqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB91DCD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973515369.11715.5786134041081427764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a9dc31d3c2947989fe77f4a6463164ea7c1fbc26892ebd6fc84a5021f11a3c
Date: Mon, 25 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779735153
