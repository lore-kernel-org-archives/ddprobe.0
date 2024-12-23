Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B319006B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951354; cv=none; b=T2+ik7NYWjSkSLmZwOJZf6FxAdITtn42TcP92Udab5hmV/bM4G7clC96/kw2+1DHUgg0NOBs0dbZJUbBaEVC5W4UbXwjgg0uQdVgxaBe0w1B2/FBUstVhigk7zj9UDqkupfBlpXf4Xr6QWiBNrLNcV12oFxHMBXNwoH1X+7TwB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951354; c=relaxed/simple;
	bh=vFxs3m1BAjzIcEcuHtLrhFs7rMRedbXAVWu0GOngY8M=;
	h=To:Subject:From:Message-Id:Date; b=ZRv6L8Hjlwb/oF4qT8Ke73zwcc7DfQE3Fint9GLBRBdFlUqNeHbpY/zpCgC8dIX5FWVp1jnKAH/AGU5GGu1JcDOsIh/XG+sdbMec7rnudEwGsQPKphqcxxbIxvxHPKph7MGB0i53QyChWU93mMGjzVeEj8MKqbAq7GzLWbiXCCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry8Gkurb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry8Gkurb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF136C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734951353;
	bh=vFxs3m1BAjzIcEcuHtLrhFs7rMRedbXAVWu0GOngY8M=;
	h=To:Subject:From:Date:From;
	b=Ry8GkurbVFUJa/sAZ6catdMMHhY0YSk0INOEbXVnk+3yqezPnqEWh0QzReD7HFfZi
	 gQHxR4sDuEunL4r1AgQt3TKwASL/9yTwwmQ53ZLSn8mCbwgRHon4JmxgrYBgG91roe
	 g08Sc1+S3mIc1ZddeQ5MjvCAy9KHXodsdKfcdTmftDoOXV37iYZrrVhbDamgjHU100
	 txizCTMT46dcvHfF41PkrJzshK/8d8+QNGWhK2OkQZLV+u4MbNXqFPgetiK0jH153Q
	 N8/hx9AV1eN7bbEJfqYVu7S/4GndniaD7ro1dax2jqxF53vxQ0hn5i3cg1ur11OrM6
	 aeC4BhxJB10iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F0BE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495135360.2018.16232951970905984224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d15fd91f3d60aef0a355010935fc4bad3e9fa564483576bf3b58f9b7db0c154
Date: Mon, 23 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734951353
