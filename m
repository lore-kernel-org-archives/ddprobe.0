Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FCE168B0F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713972683; cv=none; b=in/0cuEKTvWrzo7VOLvMs7Kt5C/iRilAOu01y/nDo4U3qSUnanmh8h1hBO/G9r/b2uQWhZPtMpnDgEMHh7Ck8sp4cjTs3U0dEGHj/Ee9Lu7hvJW5+G634zdbclLqNggyh0efGN8Rispj2YNnN39umIRfm3onx/kiDgAgm4iCS20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713972683; c=relaxed/simple;
	bh=cfBklgvMaMIZ5WCxs1TAKkK7rURlpKqFQxx0cWvPMA4=;
	h=To:Subject:From:Message-Id:Date; b=fLpqDeuJcHEcQh/MPLxa37LJEY+U47ZDfjDG/Xd6H2DwzNwSWvxiwbVsdmceBip+vxog4YvRN8X3AcMVzG5da40Caxg963Hm8L0Wxte13rDpto+kiJIPwRhqtDVUdipTStiZCxmj9egKW2LEph5uhebiBGkhWVS8dRpOVxBGc1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtAJZYr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtAJZYr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0421EC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713972683;
	bh=cfBklgvMaMIZ5WCxs1TAKkK7rURlpKqFQxx0cWvPMA4=;
	h=To:Subject:From:Date:From;
	b=VtAJZYr3vNXwrBz8tcOmz6vDbQ2UAMwDJFb24X7kfKV5crHWfO4B6rWnXVJpgglgq
	 GACre5bf7bbK//dgSm+zDixst3D79dpm8xUkOsq/oQiUIKnuPwIQBB4yDBwwzpIZ/x
	 csM5kpCX4ZzEaYYhCX+koQUwkqPcez4gKU5YzeQqaOSY0CaesKLau6o3QSTcG2Lv0C
	 ehqxVPp0wYVCpu8COM8cwDCR63rYi6NzftttoB+Mau1Sr3Yz4ARlE18gTHJvINwJd5
	 Q0KlcMlOGa/tD5fEXGuBhzO3tlmzw9PoJEZWkSOmJJz1kiIXUyhR/E1glOUgVKn9qk
	 Acdfff0VgojSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC33FC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397268286.5333.4662731413100191970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f28ccac51502233a19138d92436a6eb75b9483f0a9e51ef7f5700fd1a44f27
Date: Wed, 24 Apr 2024 15:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713972682
