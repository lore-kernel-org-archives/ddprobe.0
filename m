Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8E218AE2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777075653; cv=none; b=jnsvj9U1dwryrebvvjyj87VzpK9RJLip/QrN+Kp1I09ww5GmF13WsKGKY3M/7+y/3hv17nYPPdva7OYTG9KXvagtNoSY0I6cXxIbZx6FZH/f74/Kx7jV5/YX3Ygix2LU4comSg8ZO7GPijbxJKJT236middmkCjJ8f6+bzJf7UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777075653; c=relaxed/simple;
	bh=i15lNb1R3NokoExvFkpNjC1gmGmtk0aguYAWo/zdnrs=;
	h=To:Subject:From:Message-Id:Date; b=Aylnj0Ig6DooNarnkSmKD/N6IAm+FdvjIM7hr+mLpoKKSENSnH56TIJUZVSpbhs8SqpAV3MuZkMS7ClzCaubEFfR27hmJPsHJ/BKhi3SyWdNc5oojYz8dr+kJtU8w0jDEtxj7/354BmZd5ZOvkYtfLbbMRLfeYxd8fevRe8rCnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOujm5or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOujm5or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE425C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777075653;
	bh=i15lNb1R3NokoExvFkpNjC1gmGmtk0aguYAWo/zdnrs=;
	h=To:Subject:From:Date:From;
	b=MOujm5orDCNRzm2OVosgAJL8EZEkJCE6AYUW0bpjNcYTQfgvAZ9f6i9ULfxAe5+9i
	 RSCo5N1/zmQG/Ia6GFcopBm5NxZvkYNDaZVIw8D8RIJeAYFyh+AC6l2EMMyFuIXFFF
	 Dg6kkrgxmYu5pnjXVRhwMGkbwvQliLuh1o4uIKVA2nSXa5uqesbrbABj42RyRTWls5
	 4Gkwb5nyxadJ2GkQZrZSjTmnLOBMpFCV5meJPTSb83YqB+T8a+s+Jt0NWvAZ7uHdo7
	 v5K1UnUPJZ9Z5ADiJ7mcT7unsxeApzL+xnWkm+KbDFgsBHAw/0bFOKPzuRG3OK2I3e
	 nnzNcaS0f4AaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD46FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707565368.25247.5817833019601373487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa50b5e10ce47e51f5f452a6cc6e9cb35d45ed5108c6a3848ff5c1790c2169a
Date: Sat, 25 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777075653
