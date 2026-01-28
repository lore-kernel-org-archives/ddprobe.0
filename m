Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257C21DE2A5
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769559834; cv=none; b=Zkqswp8UkGSHSNvFx3vW5dNWuZnO7mqJrvMf53Kl9CpOfFrpSkd1meYLTXhEmeVdafWuoRZmlRWjWL+X0uosSD2pR7yoz+udq4AK27WTXMYBHFDEFLv0H6mJE3NQmFs9/hTMqvXAF5kkcWddJ+6nqmQtrsAmsjzGqTvFcNwo6CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769559834; c=relaxed/simple;
	bh=YU8VwDlfrZKlfR28fSH7z6OBsWlGHPlMe2XErtdilvw=;
	h=To:Subject:From:Message-Id:Date; b=fIh1cvYQHt0sKNYlo24eED+jSY0sjVSs+9fR9uZGSOLPe2YKea+9xrsR0z4DbAdd1m7OaeUzaRlymjvujS0Ki5ss1y6Khz0zLKAldBzyDJ2o5kBmZXWJzKfxfwBJbw8MEmnUanqKz0Qm5Uhql8KvnAe1g2ymHc/M3z9mqfCZYGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQYi3RZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQYi3RZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C18C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769559833;
	bh=YU8VwDlfrZKlfR28fSH7z6OBsWlGHPlMe2XErtdilvw=;
	h=To:Subject:From:Date:From;
	b=hQYi3RZIUDWuAlMNbeQ7hhC1/h6cw9pVJ2qwhCawal8TL1QdreBrajsATOaKw53Xc
	 1MrAHfzhj6hzX2+LjTzznunFxxNuGxwXrzrK4cyqTfhCQ0Di8azSy+59UGxO5IZXUn
	 4KBtkCKMlgDEbbIc1q8nmGW3sG4w20rWxLaI91qvhmbIiIgeFJOgpzCe6GOAmjaeUs
	 dQepPHIywRYBHgejwbKkEPgxXcW1kpLDbuBKyJmXzb4Q83GXQFoNf4XNALX6W6Sshq
	 ClFcoIPtw0YznYAuMwjT/WNA5lw4OV7BzQWtRHpeQJC8lGH2CNpapNXycLf+eRpcWT
	 OQzwn8Lm97AKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E359D2FEE6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955983361.15786.772175021785737314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e390df8693ac7fb9c4971697a41f82e43187b50d31f7eedcc306dc117bb0a30
Date: Wed, 28 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769559833
