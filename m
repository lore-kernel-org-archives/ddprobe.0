Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD952B9B0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727775354; cv=none; b=r5j9GJ0ujXtNl5Ut7DpjjzmWTrq6RcGV0sQt9xPJYv6n62mPTwHFlu3WYcs2LdvcvCCLrByo0mT9pa+SpvZOAzYH8a0ybRvnhXpmP/V+G6ZxHUr/hDihRPzCllKCen5F4iZ6Ck2fXAHUwNflpes+jf+48eH4vhL9MV2ruvuiqEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727775354; c=relaxed/simple;
	bh=GXvFK/BlpqrWgBkIZUr5HCBD0hQcmrVw/3qI8dTVpWA=;
	h=To:Subject:From:Message-Id:Date; b=lKEH9FKwaNzeHNUPZg++VN4ZKN3pRnWx8wbXfITvHDJf4UTcDabJnx4FL3Pel/CdKS3phRdVjBDqcumunnXX5/NXrNyxJFkKOxD7EadBw3JOAB2fEm50O8XR4inRMqkcHRnMKQEqaw6ouzIqY+TOpbDwjQX9w6cYQkleKIcfnvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLhbIw5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLhbIw5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9783C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727775353;
	bh=GXvFK/BlpqrWgBkIZUr5HCBD0hQcmrVw/3qI8dTVpWA=;
	h=To:Subject:From:Date:From;
	b=bLhbIw5kYq0q/JohbAThEfobfrAHhfXMUXQYebfEHBj1O0wPFXosUA2ilyvk1kfmO
	 q+wpatW8+7kmikByfKdCAxxWCA7QBGWoFvLezlSkElW+rJErjF1xdOsvnFP9UQJ+zb
	 /mnJ8QV77BgHCzL/6KuENVyjoXnCGYo1ZXDX1hGx16bDXJv9pasS6kcuYiAMYkawIp
	 L+C+gHWoPJb9Y1CIgtdPmp4WUmZ8bVN5NSiVmeCw4VETPqC8NCnREiY0E/uxoKQQS2
	 lFN4fvyoh/SoCHLwmgN2AErkgbvraBjB6yvTEQUIi3xoSxChtZ1U0tmuOjF7B2+mPK
	 7UJEIK3p1wt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95097CE7CFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777535359.11684.1211638843880708823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e0f2d6349a717ac1eecc02bf5c9e68c49e08f05968fe95fae1d0ec42b871c2
Date: Tue, 01 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727775353
