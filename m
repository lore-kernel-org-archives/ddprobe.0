Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25FD12B94
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773719094; cv=none; b=EV1sptqa7xf6beKNSFKAXJeRpvcVzMLD2oZVbJzA/nD38diqgwDzU44V55JZJ27C92YJf6AdxamEL6G+pfDL1zkG81Xo4QUG92IaGzVDUvTdZf+9LRFK5+LSR1VOMcXDu63Aed6lg1ctbNs0BDzftrvpyxwa5CeoBcD1ucJVqyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773719094; c=relaxed/simple;
	bh=27VrxLztpaETkaBdMFOsLFBmHUCaQgtYw4A0SV9Y7aA=;
	h=To:Subject:From:Message-Id:Date; b=EFTtRpXgyesWx0Xj4e5tC8jMf9Roc/UDWSZp1iyCFmBrFQOanLmh1VkrWHofIs6tMn1nPk2SDuaacU6toiQd48jb2NzsHgzhSiuQHiOKClnhJ/VlEXMs70SAljIkxOuSpRsx5h2BKUst53/Ji//3uFc98NZUveEX1quxpFkDP7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0eifwXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0eifwXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CECC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773719093;
	bh=27VrxLztpaETkaBdMFOsLFBmHUCaQgtYw4A0SV9Y7aA=;
	h=To:Subject:From:Date:From;
	b=L0eifwXOIfuM7JjHu7bjxL0uZiQiRuBteoeQLtoEQNb8osfLvxt7ZyOzU+IvnUzlF
	 ycZiCYm1GpTUfAQ/R2ZQbH4QpZIeOWNStC7NxI+kPMLH62yZxv6minb5gGCE5xs76n
	 ZO2+xFJ2tcaTcjtI7XUTs5E65nu8v7xRRTKYd27R+XOFrxAT/+jjWfgWvJ4S5g0lto
	 /Wh6s8PQePjftQPL+LBebukffrZZDAtVuf0d6Db1YbqgFPyTd8HEhnnvpYNl2WAVQQ
	 jDVzgtTkTgkjEX6sGxbcLiAZzJQ5/pcAmiOvmEDFmV4q6LiUKtRC13GfmEhell+smr
	 ugnDuI7jc09jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1CFB5EA8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371909357.23763.17021081556904663744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e9b33d713f0e4d86bcae9db37c3dfc87a66000ee7bdac0b0128eaa260ab9a4
Date: Tue, 17 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773719093
