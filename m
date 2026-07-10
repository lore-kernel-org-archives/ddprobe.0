Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8473D811B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676314; cv=none; b=LQqYLjuNN8PyOMoc1CgAAAqL5qpWaglk4sKwmHxxU6e0275FnY5DKSg7US4HBuPxf09lmlVjYHJvXr7xoC8C5X+7kRfM0Bgws6sV8HONWvSYV3H/+DFvZy4oLf3Tqw2ouZNRVDrTzruUSw44l0liZNJqegPqloBxUL/efo1nTsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676314; c=relaxed/simple;
	bh=JG4+UmEEiGn+P/3ZcDNViV/fQ1jy/0bfjFzPUKikm3w=;
	h=To:Subject:From:Message-Id:Date; b=Z7BOiSrCStBfa4F497Xm5EfmJ6jbN72GKJ7Umo43GvsGVevbGBGZ/QwFHQO09rk+2txRAAuMAfhIIdYcne1cqi3VzTp+t0ALBewmcrLc0+Q8CWESPdtew2SX2J4wx6svOsHEa5x52LdCXRON77BOyWqQSVRqwXhCddz+HLP2dDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYpUpXrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYpUpXrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C985AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783676313;
	bh=JG4+UmEEiGn+P/3ZcDNViV/fQ1jy/0bfjFzPUKikm3w=;
	h=To:Subject:From:Date:From;
	b=NYpUpXrCQ6a4eEpgqxNjMb+XtnGYgMMEJ13c1FCBU4MiEQAs2JTnp9T4JDoaZEkdW
	 emwwQhtboaMW3uja6S8Cgqn3SKfk1986RPBL9ky9vD7m+82Mg7h4jnpOPpAUwdz5Tk
	 RT0rmMlmICEg96vfaW5la/usWkfpMOj5c66LvbRjfry8zrLb6A8TKFycPX8rxJyoqp
	 XH5FDTpI7cOrJUMxjTZyxpV2r57/IyyUJmKMzWr+yQyluz3Z/2d4CPj5QWQPJisVT9
	 YQinJkUo5hv7yq020F7XeRtzps6j3lK8pnCZ7wjyDbx2MYIJ832CmfS8ZlZ8K/1uTL
	 C2wHKwRdgyWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9EC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367631368.15378.16200113317660659984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd0ce677531110070765b88b6d1350ac359b65da182b1ee18e9d86c21a8ae55
Date: Fri, 10 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783676313
