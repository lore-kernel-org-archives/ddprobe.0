Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507F21F4289
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743006594; cv=none; b=WR/huUvXYDeD3XPX5W51vx6curlcXptt1l/RuDOBYd7MVtFT/JKorZaL0dp0FALuXPmtWZJ8reiow2mL75pmzdsNe+tLjxRnhzkfN3FbFxBqtYJYLcp2QJ6bmIOCn4OpJXqAe0YsuSyzpCtZcNU8kBHqDE/be3hyAemOi4egRTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743006594; c=relaxed/simple;
	bh=v8rcGcJjFE/AVuGyFJIV5qo8fb0kZoakl5PgF/fLupE=;
	h=To:Subject:From:Message-Id:Date; b=ATO0JgFXvHpFjrh7fYss4GkC5VQJ5N/hqw2r2S3abUdqnLZstKyCpd2ydZW4EM39v5q+ZWczs4kzUQ2ZEiTE/vGILtYrf9Zm38vye3LGVFIeiXyTlUCu86xZdOpbmCg2VA8c9IfmwD4YY5v665P8j8r4gzvKazt3qozgKt6eAL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZShpwcZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZShpwcZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FE5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743006593;
	bh=v8rcGcJjFE/AVuGyFJIV5qo8fb0kZoakl5PgF/fLupE=;
	h=To:Subject:From:Date:From;
	b=ZShpwcZn2nug6/+sGQnIwOCnE7yaDAYCNn9QmjaTUdum8bHDssw3VsTMSD8+mB55c
	 NnMDZLLtW8rT3JgZnsQ2oSdtbQxqa8C2RIe39b44hqK9qaPK/o/3EqhwGc7aBKoGc+
	 I9TPI+6PZ262Hg0npH1RBortZVKKVBSbmmkjmIN3IjlpVtoj2P0Fy72NWV9e6nyVVb
	 WxVQmhh0EKgcYaOgep2IjCzp41bUQCdJHz/S3LvpWM2m5q/Lp+xbieUx/WAYhU3dgn
	 alvMlVuGgVrBZPIntKrvZ40byybqqVo3Kc7w9cB8ko8zTi8JM/X+liroW3L4SQmJf/
	 MG4Eh/MiVZvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF89C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300659364.28765.7073412947085486181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd7d7173a3734536ed95c9113eadb4d4c6015c908ef07cafb466ec3668fbf6b
Date: Wed, 26 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743006593
