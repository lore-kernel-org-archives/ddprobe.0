Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2490B3594C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754371194; cv=none; b=LMxrEMyPSBkhrelMX1NnkvNo3whjPHCysUGWdDQNMbv6DdwZEyu7afgsSjs856SsluZTk584FP3rwkYB6h7ZvJy8SVVNdzlzsd/f8bcf2QUNC1HEWb2f+RiINkbC6KQHE5uwyDOrqbUsfUZCXuQuT4lqEMAnQ64oFrtshkCjmlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754371194; c=relaxed/simple;
	bh=tPTn5Pvlg8wpNLC02yy3vDw4QzvflsbSk7pjalgPdus=;
	h=To:Subject:From:Message-Id:Date; b=ZlEgrmwG7zdZq2pM1oZT7h+OqTugipKx3+RtMa7+q1LP+OhL92Y4g7l2d2nbDJhAgwg4EyP38JyebwMxIVnn3sQ1gBVrFZNgZtL2T+9kBLNapCl7xJhZLNfPgGOy1BScXJAOkUk2rvpswtGSlkOm9SDbzYTmwwGcK3DD3cFfBME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of3nku4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of3nku4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B5C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754371193;
	bh=tPTn5Pvlg8wpNLC02yy3vDw4QzvflsbSk7pjalgPdus=;
	h=To:Subject:From:Date:From;
	b=Of3nku4tEaDAqvrBMujzSSf0dtG5kNCEXgDjFIoz2n4egHuM8UQDXPqSJNTvByzMc
	 i0JX/Nf+L6jiHBN/X7KproxwYUxxnOGlrZsLQzXAmqO+zcBwWqSb6xvP6+sAQoDMbG
	 Ryic/eIHwUMbIZKcJMK+LDYpyz9NO1yWc0aZ0X/0/7frmUegri6KadfXLcVb+QTSK7
	 6UP9hfLju6DnIA4kPuzarRE8C05fmFPirZkGo2bkTcS+AQeOeJiK6/L+rm5UCHH8rb
	 WsETv7guqhLJWY1+XLfWsqwBrCqIqZ9vtSzbf9aDyD4IFHprn6yC/8PRxBgWw7aR7v
	 HO1cgjc+gTCzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BCC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437119359.31334.18040637415721481740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6783cc4c1224c6b29a7cd91b1bd519d1ceb29ef081f0ef8eae33bce76f3ab066
Date: Tue, 05 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754371193
