Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8E41DFFD
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750970994; cv=none; b=R84nOc9/byNsVGDFjEyyFsRLMnsXzl4M8oYmqkea6tKUTDK+eLS7vptIc9QFQ6B2wFLM+Gpd4KsHsWy3mn/co3fqoz6ItuU/t+fi1wJAwFr0FSp7xABIK1tM4PPbwfzIy0kJPG0q1YNgJXJqd2Oh0BQMgeeMKGZr+0tksK75zjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750970994; c=relaxed/simple;
	bh=q/gd524wn7RaLqj+KUd65nBPhYxrwwNJHLKdYRjY0Ms=;
	h=To:Subject:From:Message-Id:Date; b=phzXoKb2AIhHu30WU7j/nIJjzhKH+91qIyO3aqmWQG4Xb4qqr+rU8YhjhmZ4AMoML4x4KmwWfBfCEmIPFJXvqYcSt39YdWAYpZ3ILUmNt4CYW/KdKO9w6LLII6jL31RsNtshGKrxyjDlZBunjbWp7eG8Msby0u5oAGbpRksyYUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2THSjtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2THSjtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D13C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750970993;
	bh=q/gd524wn7RaLqj+KUd65nBPhYxrwwNJHLKdYRjY0Ms=;
	h=To:Subject:From:Date:From;
	b=M2THSjtuL+VM6clqI/eadOAFqoaWYkczAy6ZBDzBuLMf9JBSTJ62jLc0yhgdG6hL/
	 545sDhEP231sAZ5IDXRBZWgxZ13MIZm1gU0nhFQ9s75N83MyzBvUkCrL8VWVbiWSHY
	 07ohii1vd3Sig2NuFK8h5aMg4i5VmkVCD4XUSLqOB8zULth4Fe7Z0pB+m2nugZtRbp
	 r/J64EesFOEGbyj7bZpWAKTOrYSYJL5GCrUR56XdrwfvMunIWn7igiYtQEht+hKzPl
	 xLldGCROKTRbQQHjnVRVknaN0tIooib+XTTFoGGfsilnudn7KnRpTU3vtv3AymhfkW
	 EcvRCY8hdBh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBEC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097099362.9802.4129619451349771454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409b4f1a427d60e95e03c8cd6cca94e06f63604ce9c5b6270b0f9753df47855e
Date: Thu, 26 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750970993
