Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F210205E25
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776683854; cv=none; b=rMZpFQl7mVXcQVPTnJyPuDjP/uv+OCFCcPF640ggx+id5UcdJnhRiK06xyf8MDigjazQuyTpo/Tg9Eb0tNdWl/gDhhwS1UjFVsKiFRBbA2ROU0SKWXvjTQM2FGxC6cTOwdu8ebh3IJSVYg6dAuJCfYBRURv1CzDNtUsMdPCOfts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776683854; c=relaxed/simple;
	bh=ITDZupz2fpq/XDgGTp8ELzUk+9n7VOoxLxcTyAO3zVc=;
	h=To:Subject:From:Message-Id:Date; b=aqRmUta2pNnbn8qcws8S7y1mqqoQlm5tqV2L+vJJfW2qnGXW6tieeQJGNXVdRGfNoFWWMi6Wztn/mDRG6hz+7ogmLSxBT88yF76oim+lTKFofk4GIyTvcxhnET8pgT97SKfVeeiPSzI2zKiohBYR8UCM8TWTDc7lXzmtbhcoK7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY00/qHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY00/qHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F4C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776683853;
	bh=ITDZupz2fpq/XDgGTp8ELzUk+9n7VOoxLxcTyAO3zVc=;
	h=To:Subject:From:Date:From;
	b=WY00/qHmme9PURRYd8Aw7flQ7KXIBVDtP9JYHFkYaYD/jfZxxUvZbUm2cIlom/4hR
	 CzxEh7IJzN/3cI1ISXO88wZEq0qEsE6RtU9z/hsMxxxGYykhWqFTvT/sJ4AyKBJ5wS
	 pWkhn9SjmVxcSWw8B2/mF8ku1HujXyySCGYWbAJLPQ8qMG8iThSncpVBCiUVDeKgDu
	 QWILkUDoZ3P6G5/vEE2T10nqIqg0zipGgCdCzmYE0GIcHcFMbQrHHaTOIadU/NtnOh
	 5VQntIuTbZi3IM6BzthvVf+NYyqW4+YfrBhAhcHzZQVqyNHBQwC53YEFCti5S44WdX
	 cAFi8Xa5kXoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD6F55813
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668385368.8232.13563696812261711795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394488b8c1e3935202fc42114f64b7f1200a2d08ef2685cf39e7faa6ac89898e
Date: Mon, 20 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776683853
