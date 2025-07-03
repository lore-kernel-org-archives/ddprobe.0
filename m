Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93032E425D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751538593; cv=none; b=YJQ3Z4GOs4Bb73VzUvBNydpi8JLbSNYRA/tJ86OaDgnN9Qq/KdXolkeTnbcNDptGxJSlFElmQE//aCRuv70o1idhkfIfRB89MpYtXNBz9GG/pMmbOrbQmojSI0G+llpITVLknIdwP/gVJhKzAymosGE7XEwwPzGDXMhUJn2nCJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751538593; c=relaxed/simple;
	bh=OJK2M4g5CCJpFAbwvtI//BHOGEzbYMDq6M6zYRvVDoo=;
	h=To:Subject:From:Message-Id:Date; b=W78Ikzt+fz46msWAcfr7UO3wFEY/L7GbZLtqABU+TUxlZEQBPYur9I+lJe0ssLJ//enOGynD6yPAKNY52fqRSP+NgXPmhSD+e/v1kgH471IJzSsUCgAZSpBEroQW2pco/iXCmBN3LCthYXHbjjq4t/osmvQXNDl/AcookF8tfTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWe6ljQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWe6ljQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F27C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751538593;
	bh=OJK2M4g5CCJpFAbwvtI//BHOGEzbYMDq6M6zYRvVDoo=;
	h=To:Subject:From:Date:From;
	b=iWe6ljQ5yh9iTyFvbsBxFR8MuXiIUxVuQNM2gYkWIMcmvP7QjlFLsEiFIjJH1z9Un
	 d7Vc1HdfEEMPmpOYhsG6Rln0x1Ms8v15EIQnmZbICjiYwzs1p85WcFEBH5kjF7sqh7
	 5D+mJVR3S4WrMGM9HWd9R6sX6TmoA/GjpMd2mm8SUTtD5r5rD6Su6hb2Q/GIbZeugM
	 j1eeuk7u1FzF2Et6EQhpgxpc9plW09heag/C+Xd56rNikwgJlVuOpiffInCZjRaw+H
	 mmrrgWqslsNHTioBipPBOddvOQkE1cYAlWw1HpP8EB5fUHUTooT+N/8lVEy6W1d32q
	 0Le4fhKoHpwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D2C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153859357.31413.8086323672684709631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588af5a13c2f328911a30e1e97fc7f6f89935474f593c111a9eec3ffaa7bdda6
Date: Thu, 03 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751538593
