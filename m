Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F7C3515CF
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790985634; cv=none; b=r0+SnwWnUsBJktMaWHGlwp94fkNP6Skww1TvoUhD4eQeO34fgw7L9C5A2dm9iU4HbAVLVcP20Vsf0RNikthQ/iA9tcfNBqMSjqIXywzdZEiMbDx7OwZ+EoLNKMw26ZVxpvfW46OEUh3CyrlYzjUcYOGg8VK1mnCe5WbGoyfH39Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790985634; c=relaxed/simple;
	bh=/6xHb2zOlN6c6/RYVWYmnHENnhBtgO0ARQYwyTvbIv8=;
	h=To:Subject:From:Message-Id:Date; b=tSIvNmB7a+z2ZHdOZ0FlEzE8++5rLKuaIEk3GpLBKyBTo+9mKUzCcZIq0kt6ywed8tes44vd04E1qfC3Lj0k6g8cwEEXj/emLwILvVNm7p31Bn937f0lVDarzaIlzPHlYgIW1krKpn3VzvMUwRvb9J3LC/uWTJsmcPI1b1PsUhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7G7kerc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7G7kerc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2416C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790985633;
	bh=/6xHb2zOlN6c6/RYVWYmnHENnhBtgO0ARQYwyTvbIv8=;
	h=To:Subject:From:Date:From;
	b=n7G7kerc7oEbjZOf91H0abp8TikjuFPHrSN94PcBWH/Fkk1AHofPg27x9hedVqUJt
	 Eo/+V+rXpnoWGHHpZj6fSWqxEG5OeWeq38L3EGbLovvmKN5XOBbFznrB5D0+lgHvyF
	 J8kM/brUu9rt3KvcF8Z0Wq1K+GRJ2hpagGw6MC/lZw/rpCXETMc/jJUCPIzA025UyI
	 T6qrU+jN0rZgEweGSFVbiuOMHtG8AbBjANVggd9vknhvtAO9vtaAkexi0/x/4av5Oy
	 hOwF44HAZfevu975icx8xkyYFFo94YdcS7d70sip2O1AI+pmDDkN7Db1KtAOUdYCXp
	 lGBdseuerbv0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF756CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098563368.7418.1409840800117857807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf899a8c062826e4880608f88faf1c9fba069917357376da3338f0ff7c0e78e
Date: Sat, 03 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790985633
