Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCF41F5859
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742035134; cv=none; b=hrC7alYpLtkNmtOpI5SCsKWM7+rIr9m5dEu+TzkHuSLco9DorYpdMbOallZLJJnGq5LX7Lw4XH8ruudcCiWykfTHd3rp2aQyPMtuGHXYBaUsUCABAm3jEw3xs6spPUdx+T9PQZ9P5D3tRia8uvvlH0EjfJ5DZxrNe8qhGHK0zck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742035134; c=relaxed/simple;
	bh=tIJkPzHUm6fACdL888g1GJKeaJ6b/tFwPILxzF6WxpA=;
	h=To:Subject:From:Message-Id:Date; b=ew6Rus2ZKeJLYVfM5auUKdLR+N7VfwAZKKObZ0oik9en0Lc7uLA4/BP2jh2DSn6wPb0vIs9HYAu1RuqVkyO9lkbQqmd6OU2ijWiVilrEC7plpyKfUy09zM2JgtYnTAtNqkEOUHnNXtx4Gym1urnp/ac0311E3yavSrS8Mqz8f04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1NjSJJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1NjSJJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B4DC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742035133;
	bh=tIJkPzHUm6fACdL888g1GJKeaJ6b/tFwPILxzF6WxpA=;
	h=To:Subject:From:Date:From;
	b=F1NjSJJgTwjdR0m9OC97tBx05U/dEQGjb5t5iSB2DfCZj5pihSvUA/l6G6I5tKFIp
	 DcxLHTgCVcfkv+UdgunEkObWwN+nPSLIe7k0pgjsHxd1i9ggs3lYfAkpUc7zHyE1vZ
	 YU9s8o0SdnYB9zFgJguv3JuzEd9KOBsz1aSVYWRr8QicemLItNStmiKAqaCNCk5skN
	 UpIwdpmJDnsJB2jD/y01LfZXC7/obBBlYexiKk+/3pJXuX6aVNL3qItpwX75Z61cTr
	 2xL1N58VMLvXL2yYDnHMKVE23ol0hikzK+KI9TL21DDhNsAVnBBBzI3I0jYNe4Hq+m
	 LQioJT71RPIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E264C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203513363.30532.10339359287239852852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5019ff1dba718e71d92eac6e5f4cf93782f14a154f716ef7d023cea26ffccb
Date: Sat, 15 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742035133
