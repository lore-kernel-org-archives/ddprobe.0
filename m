Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E11514EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726837554; cv=none; b=JStXkJ2EdBShSX0QIfyCFSB8j5B3zvAk7fcLn0fTKxBzuYHeisX08butbM+zcz/6bRtU4gajZAxp3fR98ucAvPGRUSTHz2XUm6ZDUg0s8+pFmhl8IP9+YJo4FJ0vJ13MI2W9k4cQMl+lb5/wRczP2+A8JBFpgVVO+mh91qktzmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726837554; c=relaxed/simple;
	bh=28Ptm3wAiqHGN52vVdvZh3k+4gZaNdLQVHwigqMvgBQ=;
	h=To:Subject:From:Message-Id:Date; b=nh7QINCPsBBJGRcJiycVINcsd+bXg8Foe1/zt1LsXkeFQWz214J1owH8eFhC87safbxH7nm/Rtj1wYuG5mjaissLyak7hktPqobx1mBzBDh8AtVa2nR+9rA8dAt9ckwm/j9GmvQZC9Ju41RP13bEKmBHBaVY/p9660Vu6DHZWQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiN2mG7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiN2mG7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF427C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726837553;
	bh=28Ptm3wAiqHGN52vVdvZh3k+4gZaNdLQVHwigqMvgBQ=;
	h=To:Subject:From:Date:From;
	b=RiN2mG7jNw3hoRU/kDWXtEa9NOpMpl+xI2jPtN/ryOKfYzqgKQ4ZTqILBt3E07Z79
	 DNNc5V9Ov9Jz+Z3n8MvYZYD1NgyshzEVO+p4JS6I5Rp3QUj6mTdkAt/ZOa4QtvCWXv
	 QOtJrK3c97w3wsTmQ3sqeM6iKhaWEdJXkkYfN4kP1674b8umLdAJik7pfjoF3zMx+K
	 0LFneUfv8B8eYEWFGwb/zk1+BjW+GRQJV5lrItvPh92o4+ZsqfoWUXIq86K7lWACBt
	 BHiaNsUb2QKZt6Kr9US5TLozr2l1d75RER1jKIh3noOgfHE2qoRrQUtHpuXQIrOHLO
	 g3/+H7OuJuITQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4BBC7883B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683755362.16497.17541351740230876113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3700dce361d06a33f710b70b0496d3d09173227186c0d99b69bce8cde4f3c06a
Date: Fri, 20 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726837553
