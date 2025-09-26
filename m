Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D328506C
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758870594; cv=none; b=PLSSsAJgLGAiYdMDszsFrtUmDEPpHNUx5YzPlyHlo3xsyiJYv4MJsmFdMj0bU6puZiafrUl2AMTXv0CrlE430Ge0npArpnSOTVckhwgQyizmb5lD9M5Jn71Hd1CTdSemnSgiAo920tdq5+zDGQRjRpqKi4sw43xwovFGbtFoeTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758870594; c=relaxed/simple;
	bh=ywrLfuigTKv9CDu2YvaFSmgcOeMe0MokDiKKK9jb71I=;
	h=To:Subject:From:Message-Id:Date; b=pJbRaJCM5DEnI9QuhPHv1XY95lNfZZn0QS/sWY7UWfqtt8O0WPttxMt6yxtLsh9kaexe+ZATc+e7PVLvNtfXWEeK2/FpR0ABSlPy0BaIJ7ljXXZwUJ1J6Bc/cMBW9D4zD2I1wkXi6v37YcI/AHkzEmrGpWWYzPX8kgYA8/E6KwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uweSe4qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uweSe4qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758870593;
	bh=ywrLfuigTKv9CDu2YvaFSmgcOeMe0MokDiKKK9jb71I=;
	h=To:Subject:From:Date:From;
	b=uweSe4qgXxV4H6mKttYtoMnCY6gDq6L8CitnVf7Lg8GA5EKdmeR2SBENNVCLsqZCc
	 nAuXXQVjXiEX+E2CQbjMY74Zv9yirlGvzedGwZkwSFkXw8XGHqlX5N4z62YdB3AJRH
	 4FSPC235sxxEdNLeGHJyud/SOCeL9JlF3YUpXOdyZHWCZ1L10xrczlEavSsu9TAMeJ
	 4DcyZOhX0CBy9WKbovg5MrdjPdXTwriNqZQHgy1UYk7OsKP6wR4c4mAiLDp4IerZVG
	 HxtzwzuLr2QwI6ztm9fmVL4RVWcvrDrDOdh+oCEL+Romqp7N+jj13zSBH5mpQLLW7T
	 /bfD+hgJ2pO8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A2CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887059359.31855.12663948809419932313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280923b8dda6dec2d65a074668aaa31080a366f2a71ddc192eabc1b29abe30c5
Date: Fri, 26 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758870593
