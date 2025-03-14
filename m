Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48486166F32
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741952934; cv=none; b=PjfCpa8bqcWGO/SPOUJwux/xidG8Pu0R+2GTjFi7IAMql9ip2N756jVFMO4fU4rl2vyZEGtTKhsSnDfNxxNIA5MkIErv4T5+EFh8IuyeO9deNXJbmJyxbcCH/iuyQp9y4IFLFimZnK+FmnOeBtFAwekBvKpw0xDxReKf++QFlVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741952934; c=relaxed/simple;
	bh=WlxLhB/6LiC/aGx3qCWUxbmp5HpxsSyg7/kyr8xTB38=;
	h=To:Subject:From:Message-Id:Date; b=qgurnKneFIe6qIW91u0JjvY2rxKOrlDyw98O6YH5SliDHoJx2JsB9X6d5eYeNBZupqP7VE6sMW6ODeYNsWZ6/0d4zqlyt5wTqRJWzgcbpo54UM2HYeR5duUn4853IKd7TelIyY0uyh08i+JnKLtr1SnuT+UfRiwZjr+9wwxz4q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txEhtSaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txEhtSaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E16C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741952933;
	bh=WlxLhB/6LiC/aGx3qCWUxbmp5HpxsSyg7/kyr8xTB38=;
	h=To:Subject:From:Date:From;
	b=txEhtSaGz4nig09Z3N6ZDeQMybm6ZMZVxFmsHmeIJeMYLmE+oCP/SHIumiNTqgKL0
	 O6H+gPF5i/WsS7qauyZzx4UiF4171KAdjNSMrDrSpi6LTaywrygk+DgT5FMZWafTHb
	 phcBYbQHSpjYCp6aeVe7MkNSoJttZtCqjeLHWm9b3QabDJICV7RMp4xGUuxF0WuO8h
	 TNdRBp7RqO95uanq8RfHdE04+bHY+XZoad65wSDMs/QjPy/veFfOzFvWexFqPfGROI
	 f5+Nk5tCJb8KPykaB9syVLiKohzyRnyk3fjmvuPyme4iRWKhy6J1Azf5PIXSqBaGU5
	 KbV/N32xdJTjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E75C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195293360.3215.13847842076423936580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbf51af227a06bdb9e050a111adb5727957376f68925787a2ce9bf1c267a053
Date: Fri, 14 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741952933
