Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1710631E85B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774836294; cv=none; b=t+dAutkI29ezbwcs5ThaIxM0C+enaWuWzwwAulpWYDaqBVjM7crug8VZRpixWZJNTzA+0Z7/D97EbYskaNCfBLHBwwhWR++qO/DveMRV7uY8szGVt9DIYIGy/hjc9Du9OyTVnMrZ1K32HOPsTG90CfFFk553a+C4I04XzW0PHl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774836294; c=relaxed/simple;
	bh=/pfj5n6igSw/WEIZFLNzN/wjTwzVp2I431E4p8SvF3Y=;
	h=To:Subject:From:Message-Id:Date; b=TzZ33fj3HOZ0RYN8W17ojAUbsEUD5vu/AbF+r/5Gs+7K2r2lxz6q6bjqUN/FWQA77O3Xt2E4rEvlWxGOcCH20KgCSmsvt/lHmG/XmPufodtSHGdRbC0peqWy80mJGG6y52/iFZ328Ude7Wjzm5I3k3g45pey/6LTKrGUSTm5864=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKBvIA4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKBvIA4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3970C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774836293;
	bh=/pfj5n6igSw/WEIZFLNzN/wjTwzVp2I431E4p8SvF3Y=;
	h=To:Subject:From:Date:From;
	b=bKBvIA4QxDIyi/NUr/wLoAtK6YPRw3lAc0mO4nWe3ya9MWdaEBjtpUNRq/w39PRHm
	 VZHvMUXS19XZM1aQ81JdT1giAI6m2voZiLTgpI79FzivjNpuT7erKprB9yzH2nKRK/
	 Y2aW1GrxJfmvJ0Mpyol5e7q86EIxRoiZXNOSnvBFNqb6QmCstTcMnt3GIaQFlL92J4
	 3nz4o020ySGddGUUsWI5oWn0MiF/iJtkckrEk+Pw5+PmqtPI3ooPayu15Gw6D+uYXV
	 anRcpdrFNiqNoHg5sfJTgQuqVUfcVamjKk+F6pKQip7jpoRdg6J912jwxRYzlkjnP0
	 m2jANsGUeh8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90270FF492E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483629358.13886.14682183299224607416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1664d743032272941e92d8e5d70ab9513ab7bb04df4d7a654da002b5d18f1fe9
Date: Mon, 30 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774836293
