Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C45BA45
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762119594; cv=none; b=phlLbFShR69d/QwQmRLKvGJNeP8S5a86svvYiugPqJR9B7xyaS148Sdy/AjpMuyfqs0qfM5rBAtT9YLBrHTGVymMBeh13HKB9ftBwr7Fj4ERw61ZYqsSTc3XuaLxvSwPysXB8bsILsg0YxNiZJqgepwiuJM13XdSi972lUtzKpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762119594; c=relaxed/simple;
	bh=sdofIsnvWsKh8uTpUukDeHl01tvqErUsasPGYNJL7VI=;
	h=To:Subject:From:Message-Id:Date; b=m+4RuJENwfYPu9TAi6BOWwK5UJrfYedSTQ204QGbVusCD4R2wHrl4+hMht3gDp++SamrmRAo1yv/rspJ+ybGaTMlWo2iDjl6RQM4M8daQtHi6rF0tpkJXZo6meykYGQfzppBdCZJVZWmNcj3xing11yDC/HZlaQubzMfbkIx6Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjsV96u1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjsV96u1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D7DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762119593;
	bh=sdofIsnvWsKh8uTpUukDeHl01tvqErUsasPGYNJL7VI=;
	h=To:Subject:From:Date:From;
	b=XjsV96u17x9JyNDRkr3HPsM9BzZeEbR7LOPiOUY/LkuPnyiK45IuAot5fmBEKqT4M
	 nbV3m/P6sDkpgfzu4BjAD4zg5zB0+VTivpNIaC7b8pwLfIF8dB5p8MKT2f7l4gxDcg
	 CO6aWpga9XcxJ43tOZx4ARtPC2fGUXq1kGr7pP7SozQ2EFULxTPhuaTSyIfO/53/Bn
	 y7RYG9xlbUV+FC9zIwqaQhitflU1AlapT7IoHfgH119C1jCalLGyL/BP+qbJU/LJAO
	 lk2ybWZpd8uZyvdgxwIG+aEbbpaSi1+sG4IcBVmB2s/YRkTQ/0kv02x7CLubfYCwsV
	 DeIDN7UoMbByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94162CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211959359.15626.15981979373355409994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a956973ac87cc9324e49b5eab580fae82ef185ada68756907fedc8bc20b731fb
Date: Sun, 02 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762119593
