Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C360340DB0
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775917054; cv=none; b=MFUkVHWtfkt7aRVJ/fc1uFKuw1XeEiGkspsY2MJPts2Szb9Oo9j9Mz5NhW4vgS+eecN7ur5zF5RntuooRovdUkdDf9xO6p6Qz4kVu7Z4XTabTO0be9PuCg5EJJ8yTdjkOjlGRDZk/WFuLlP6G5drP/fznavHI/edWAcLpHLRqFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775917054; c=relaxed/simple;
	bh=FNdhPRdREjOfdjMHzHgXT2fItYOIUGGUe0pEw8O9KJE=;
	h=To:Subject:From:Message-Id:Date; b=huMh9U0z+1VbUF56f/YVazE7SlhwmqVs5hFSYwuTed+OlO4yDEOY4THwL36Dn/0HNp1GJuIo4hZKCXTlslig4/+QEa7lmM/uAfytdikTsJbZWp6VJhqMTQLWZDsKhERp52jZLDbvYPfuJc3/HRAbCEtqaM8cy5C95Srng+1EF7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru9l90T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru9l90T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DE3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775917053;
	bh=FNdhPRdREjOfdjMHzHgXT2fItYOIUGGUe0pEw8O9KJE=;
	h=To:Subject:From:Date:From;
	b=ru9l90T8lW6sLDDhP76qPXu4sYi3JBnUHuKsNUAdRhwYrVXyxNDba2Ds68A1QRf/J
	 IGqhlJ/D+luCLdIngiFZJK5YYZsPd4BWCItSbdrfLYPpTGmLlcPsjrb+jmrwfpXj+A
	 45FwLyuiKtOn8PM6esj13Uaj4aVTvPdIhjSQFn64mAh8kLmsTF49uTJDNPf2JlEEE4
	 9afwG4Tz6ifFbFN2zhPueLJaJjzbNa933AFRhEJYEJRxoH+vVuQtCZeN4PNya+4HW4
	 J5h022VZ8PnHb3fg/5kxmBtIFzmUSoonptvY6FkAkXp2UgK1WhxNaQfkw8In8Mtz8L
	 eiI6yzbzpuczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B376AF3ED40
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591705370.17844.16626623421629341059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336f1de55d4f1a70e7a60f90578b937b5255b27434fc4d09d017cac8c369585e
Date: Sat, 11 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775917053
