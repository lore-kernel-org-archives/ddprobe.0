Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6803C3905E7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781387194; cv=none; b=dbaY7LZkF1Ef+0H8DkVjcHA+xQpt2FhtvbW/YQq9CtWl/QmJTheSWQthouPpsOXk58qMxgyVHmPAZNu6VFP4xcdjQFtPciRVspZOwFD+UazH+Z+NqIFfVt7H13o+FA6qO+baHm01Pll7ykK4SCXspDXLGq0Lv5J54bZtPn32VdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781387194; c=relaxed/simple;
	bh=RS6CIGqbrBQaiTS3aljxiuqbQm8Mdj5cFjktMICjKZo=;
	h=To:Subject:From:Message-Id:Date; b=F3A0vKK6Qh+B4gO7XAVtCZdp4umCzWwJMduaXTWE5hO24jJzw0Qj5x16XR5WRL0hLWFhOYF05/XuIy/pglzr8ACYvxwwrGJBfeudKtez2vHktkiyD5CRd5iqjbyMoNnwgROlYXeYC+/iWSS9QPQ4mE/YHvYKdRfx9xo+ShvO7TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKClRNIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKClRNIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A4DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781387193;
	bh=RS6CIGqbrBQaiTS3aljxiuqbQm8Mdj5cFjktMICjKZo=;
	h=To:Subject:From:Date:From;
	b=jKClRNIggAEpinyQBCSZ5rYzBbyFimxUbaiLjA6/Av8RzmkVA+6YQECfeQtPzHmjm
	 Rk/xZ/J9I31v0jmjS/7Vf6ICE7VL3NcCN/Z18+o0l1MkM+tSXRZy/zgwF6rYuPbG/l
	 WiTMLv0ccYFxgg/w5b0B+AXm2q6MG9l7lP9o2dos0mRaWAcZVOyQaIG6jyNd6ck/I3
	 /8uECDy11ti9L2HJqki/j+O2xrCZqKRZ9rccWIWQ854W1q+M+zJvRO0ht9KDjUJ8/n
	 Nw8f15pXmVHKb/Yjiq5L5N4a49Q9v/yye/CinaeMMAvKNCSbj/fpkTqhRwhnYaGjGe
	 wmCEGVxGhxdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B603ACD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138719370.5392.16709563457821814470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63a5bd36dfe5182080d7fb54d2963ffaa59890a01726db8dddc306a47cf8bdf
Date: Sat, 13 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781387193
