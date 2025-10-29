Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D8170A37
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761772194; cv=none; b=kYcHrk/3NYvUezVyZg5jUlyg/NZ5oW9LTbseksdJ+eWLvVzgw11hV1y5UFmU2bap5bY6TYxibjcsKseyFMPbhnfkZX8ZNZ3a6bocFek3yN2KP5EBB8M2CP9BzgwuYwyaKlKD6kLZfvjfR5C0G/PgS4dAjy+nT6tOmPr55JefhrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761772194; c=relaxed/simple;
	bh=9almYOwRnXEMjj99ZGr//CFRmcAPx1bv9B7eWmFqaZw=;
	h=To:Subject:From:Message-Id:Date; b=LUySVteGjtx74XScUnbx1OEDhgqHv3u/2FlVfFtlNnigoSp36vlhETUWSwxT+1suLq+G/Ia3VjN1eFjRNGuvOmNe5hx+j9d5qORk23SgNC+w+uXRyWpNKbBJxx1sLXi1YMtU8IpqKwucXI9rS6o3yt54fr7Di10Xs31mCmQgGug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsn9rHn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsn9rHn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761772193;
	bh=9almYOwRnXEMjj99ZGr//CFRmcAPx1bv9B7eWmFqaZw=;
	h=To:Subject:From:Date:From;
	b=bsn9rHn/+mv8dZcsAJIPibrp/bvrixhB+f59W7pZpFNTllH1RMKbqMeyU3jGL1ZLi
	 NChWbc4wQy70mK5V9fc17xqhLzYnnw1+tx2ngOjqhRLQEn7PCegNyR7Wr1IhYrVpA7
	 +sD0riWpjpdVhQ8yWdtrp7UjUet/MvfS4hq/CxMY49qOk2v9DIXWinO9qIhlCKV70A
	 EjhXtA2l8geWGmM82Jd0TuLtxfyLK+LaqS27KRi2kmss8VPiw/Vh2COsERK0wdFBrN
	 5srL6dhiSHmCCJQWk6gCSHecj1ErlfoDF5CED12m+rpIgH6YVmMrxUrzNLWiLgcZUw
	 rt4JeZLbDOxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6ECCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177219361.15449.18024786680760400732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e620c2d994e9b5d2bb729b4c69dd568cee008569f3ec7d1731c8ee2b2beea125
Date: Wed, 29 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761772193
