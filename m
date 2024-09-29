Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4804CBE4E
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727591754; cv=none; b=DOBa0tgBdH5ziEpB4C6DrQvw/Mth8umIgp8TFlaMbmkJUViWpRo60/kKErc+wYzkFY71/IcUKFCyTdbQk2BAINiDRcrVttlT2/DyiTILyxkwNZN3HlKDtqAG92m4X7plily2swWENu4F8aTQzOXzidBqldq4BYM0KnvmZ0z/VSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727591754; c=relaxed/simple;
	bh=OXPOb0sjKXpGBMyHbmkp7nGMRcoTfhGWJOtoUAKxDe8=;
	h=To:Subject:From:Message-Id:Date; b=fc5FjE8/0htk4tKFEQKoWk0axLjiDhb6JGxr5mwYnAkBgfTfzbro/E11u6QQhnYjx0bgmgwLwQuOorXrA6GiwVw+bI+GyMMx4+HuAZBjAMzabJTDLBQiTmh5Z+SO4aWdFw0UpMUiLOki68igyqoSvDvWHC6VqOohfxm1bbEwbVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC4Dw5wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC4Dw5wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B047FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727591753;
	bh=OXPOb0sjKXpGBMyHbmkp7nGMRcoTfhGWJOtoUAKxDe8=;
	h=To:Subject:From:Date:From;
	b=sC4Dw5wgVgJ69Tno58ZF+YXKjXfUxkkLhQe3pz2kuyUxZoYjJmDUl+dy3EFj6qXba
	 wEdpDVMUT9AZk7cw5DWvmIntkOYDxe0yLPXQ7r1U/fnMAx2xMfNF6YjwMHO22OUmfF
	 P4DIpIKi3UEOfS11Vp69QNVD4pd6ss+qPOhWc2iw3rE2ULyuSRZJr4J5CwIu52dYKP
	 iGyiHs3MyOkT6SrTX7xTvQf4kA9TE18/DrZWjsh8ojaZhay4khf38R3OR6gKzVu7+B
	 7zQiTeQH4aubhPE33wFJgnNmt77E0XO5DTYNIdxm4ibjEHUT6wcFa7tJc7Ju/Tb4JV
	 opYxJbNG9AXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97756CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759175359.10949.7492195289740574102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62669e054d69c11a7e01986e33a086bc69bd1561152b9b40821d5da37edd5fdb
Date: Sun, 29 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727591753
