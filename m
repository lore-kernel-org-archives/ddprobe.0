Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D702125A0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781382394; cv=none; b=b/QwM37SB+yhClNLLqEkXqm2+CEEfYiyQhW9MBPtKjIit2wGWCbhSFmLaDhPJ5GFqRTf28ETBOA/QCFNCYylp1S59XMiVAKyFBAv8LZUtQTtYbNQ+mpF1NEM3Va9rZ2KGukzxXVdsof7k2+zOXw9UjxI6Lvkzbh0eOmEAdK/8t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781382394; c=relaxed/simple;
	bh=dfS63og4QHrwViU/EhfSVrg2IkP1pBxMlOnRVMiCXJ4=;
	h=To:Subject:From:Message-Id:Date; b=uf66OzjPyroK26EwNHk5bW/tHWxdud3N7cA8tQujAw+I5aXeyA5NuE3wZNqpHyvRy9j2xmuU7yxsnTqg51NVDTOMQKoia8Hj12mwn1f8BVFhCivN2wLu2serbYMgyBSDrhw5+kzu3x2H4Rl/8Li8+/yTHEYfZjvreh+QtUrQbE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8zg8v7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8zg8v7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C139EC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781382393;
	bh=dfS63og4QHrwViU/EhfSVrg2IkP1pBxMlOnRVMiCXJ4=;
	h=To:Subject:From:Date:From;
	b=s8zg8v7gr89ZpS3iUG1/F2WsbDSNj62rLKT0Y6/0OTr2H8XxyXs/HmehpheW3AOHH
	 39Fas8EDwtGNjqq7xi9ce7MX4bqgQPXaD+aciqO6FeKX/16Q2oXprvTkvnIYAXdSxB
	 7aYeWWU5ScTMVc0/gU9HJtD2tJ3LaFzndFdvzRPTWHYVeQWCrWZSlGb5zd/+NE5oJK
	 U59STcCXlLwK41ZbIJOTZTIPUV6vVOaUS7dnJVu7sokf6hFwBksOCsFsNQshUwKe7v
	 BJc7YlhZHpHHNbKTH+h79cwQFOtnKATLnvHMBaOHUeaxsSK9FMbkMLq1QshTVmt2ZI
	 Z58DZGmF/s7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B1CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138239367.11916.4640370239176858294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f525db94bd3e11fedc392e71c6a9e8e8037dcc13de04aaa335f7f44392dc83ff
Date: Sat, 13 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781382393
