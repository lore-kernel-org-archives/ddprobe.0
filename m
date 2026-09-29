Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E884B4EF122
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790673036; cv=none; b=WgLqlh088NytsggYu7U/V8PUpE9320F4Gz+sHJlPCf0CN0RtI+vElLGM4bpvOpSl7P6eTMdDQT651QqTqK3krEUjFwCla8ldZfBaHijSPlyVHLg/s7INrNhBzsopTkFMYlioykYV4Z5y5hiwMbZ7LVJNkPLuQnTImeEtDoZ/WP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790673036; c=relaxed/simple;
	bh=6rZk8KDAJPLEkizwNfCAzi2jAN8q4rIZ0wt/IjoQ6IQ=;
	h=To:Subject:From:Message-Id:Date; b=fJHHEse+i10WN1W9BiwGGrCCCJ1UYjq/dS175yArDthlzdhzxoMwXKhCQqq5QI+l6P1VNGJynJkEiOEqmigQKkcbc+WQQ9qTRyfWG/W9Se1sWD1kPkZd7Z6OFjNk6OvQfVkhuBlz8Fu7kDqCr5ir/+ec9KQQTtEkHgEO4mK4ofg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQu2cUzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQu2cUzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8045C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790673033;
	bh=6rZk8KDAJPLEkizwNfCAzi2jAN8q4rIZ0wt/IjoQ6IQ=;
	h=To:Subject:From:Date:From;
	b=OQu2cUzmfbFtT7oCcOiQVPjX/UHVWdnD5s5LBU+OHCZMNdZ8yBXHwV8O9H9wxv0vR
	 JVeDUyeU9QCtc24pmqTA++pC+GcmqWVIBfUen68xRQmD3oRnUCLvlRRFldyB7BQDVi
	 6KhN6u2LIUTQgPO/rGMHXM0CZnRirOxLSEUKrppC0PhdTyFF3uyemTviGXgKP+Y1l1
	 xKau3RWYOIxoR+QeljVWNNLXQM7ZUB8sboWY9RZhf1k4fhRRcWKSFQkAY5VEAFK7JT
	 2KsXaNnW5NUZK0TvjVP92FiQL/hZ2CesZCdOpgskFLyo7WPWO1A2Z5jq5rw08Mf0WL
	 qrj4Q7MuvwLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D10CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067303372.11954.2052190982277309462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba71c9d12dd39dfbcb5845546862b51257501613f07336d994a94c9d85985394
Date: Tue, 29 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790673033
