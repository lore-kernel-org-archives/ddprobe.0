Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214DF142E83
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721769954; cv=none; b=MRbz+iuYUgY7JddNp0MqcW91gX0pfcMnwUl1tkV1PJOFqRNB3FT4Qc5SQlOO09dIeuXr+A5DyEtDr8Ja+WYw5nr1MYst9KJzDoPAzIlqrLL8WwvUEQOOeMs0wHnpV03iY106ooudOkLZZn9cJLqUNggJzVuxNG1qX22IvWBMfw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721769954; c=relaxed/simple;
	bh=YKu/DLIO1SgwqD7ETK+FxHsIv3z+n1lqJhkE6wXpqaM=;
	h=To:Subject:From:Message-Id:Date; b=ZpMO6/L0LkXHP+KuHY8roWG7kSuGQqKOzFMnPw7bczaCLCXS0GeJYNZo78RZx9lOk9O5+BwYKRD9TpvahLa+4bAq1jF3pGqwqwQtwuAtBBG+gQ7LBFt4LZClH0RJdQUIY8o653ZkHvaPfgg9ayvsjyKUX/Pj7ye2reGnDJMbxaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVneYFod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVneYFod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E81C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721769953;
	bh=YKu/DLIO1SgwqD7ETK+FxHsIv3z+n1lqJhkE6wXpqaM=;
	h=To:Subject:From:Date:From;
	b=aVneYFod/1S4Xu0oPpo5wDLkTUgDoPhnGzgEqjlfIomIxEhNVQbxhGckc8gzEpLDX
	 t/7duGy0CytUBfwcw741kF5uaGkkoXYDRQaB2HqQN/GWIqK42UaqWk0P23oyG+dnJo
	 9FGYUA/wujSPj9UqPEpuHDtLyHAliklbCTvByFBOjnc1nhlxJJINVTYiT/1TryoPUK
	 OrGBkDUz7rh23ItHnQzxROzq+7txByuvJ+sRV5JtQWqui5SaOXTIOJPzhMAZsUwXi+
	 AtYursF9inCCU5ZqHq9LLIMcQ6dhJt3dtek/607FA1nVwHSXxTIRLV7p8YNLqz2d2F
	 alKj+APtlq8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1348C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176995363.1392.11843965342384544887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef5c42fbf1180ebe19ccc0ac5dd9e5e360ae1b6df8b07ad81b5125a19457de1
Date: Tue, 23 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721769953
