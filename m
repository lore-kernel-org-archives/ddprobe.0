Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BF11AF0C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736682954; cv=none; b=Y98x6gnCQTIe8aqZDvFWofMarKpBFVTzSKswJDqIj3kKNjeJA0z4D9Ba+4Flmt6CoedbJParbnVmstW3tb+kqCwIiowzZdeK6rxlnRj1niUrPKDmTu219npcxDDrGhhtNF9VHeRGzGBq38VziZYvZWrIbq7xkcFGMHb8RVQPiYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736682954; c=relaxed/simple;
	bh=LQA16Ca6kkEoX0I6ayV/jUD7rBxFqmI6d0ubiZtWpzo=;
	h=To:Subject:From:Message-Id:Date; b=QV5td/kAt6cJUvwYkR4PfKfTsWweowL585WlAFV1L98yJ9nxn1jukib8b1SYckgOAB3KvuuFS1t2u1FAkwW8govrAvlam8fL0g0HWW3TrnPuKSXpFDLbvQvT78+dCnXzgTNLcWBmfsf2NYILeTS3JAqGSzB5nRIZE0ESvAM4FDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxrPxFDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxrPxFDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BD4C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736682953;
	bh=LQA16Ca6kkEoX0I6ayV/jUD7rBxFqmI6d0ubiZtWpzo=;
	h=To:Subject:From:Date:From;
	b=XxrPxFDaaDrQPz1hIci15Si8gpK7YYqmWaI5xoh4vatYxkAsz18xBGcTEEnj9haYo
	 ZCq5hM0tuMRyDwLCwkKY116nzjLk7ax4+5EX0y6Fe4peTtWuKhfDNQa3HPjN8g4HpY
	 MKuq6Hnzw1Mu0e17VoNR5bdBj2WDyVEQ0XoXhODfgqC4BhR5tz/U71inoT6b0POIYo
	 VBoESnF4qmU/SiBZ24d3AKKWYJ6sib77SRWEK883u14syob/SumJXKWsOCyUxqW2vu
	 DzJmdxspaOfG55uPX3yU/R/AL1CXu8eqfTH2EObMiakXcjH4/34BNtCwchP6giwws1
	 jEOQkQPOawjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97268E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668295360.18200.12536543729833961284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff39b60746cd99acae39259cd745ffbb988d52a43d16e75d24205f5e7a7700e3
Date: Sun, 12 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736682953
