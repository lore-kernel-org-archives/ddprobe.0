Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060D2255F57
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763240454; cv=none; b=h77euQIAlNsYoLGg+XlS08MBz+L7C/14ukZIfiqg2NHg5R8wXJxi63Mxm+jCeNPBJIKiazKhwjiXp4KfL+4OlmLmUIyPcjY4bRXwQZzT395C8aUjp0J3IcEWDKprR9JDZ7LIifsGJbQIYqD9WEib9VhpCriKjRN9YlJD5Y98ou4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763240454; c=relaxed/simple;
	bh=rmfgHwLoOObFPgoK8QyK0wihKyuttUIUSHJ4eA1U0bc=;
	h=To:Subject:From:Message-Id:Date; b=YiHbV3afeKRlIz89PD8UpiXjJ7dCAjy5DUZcvth2l9G6jivxZYFVklGcpt/yA8JEwY/UZNve4/U0HUuOJBNB1IoL8zp1O/SoznJ/dB8sDml19fvryfNB9MNujNZ2QipDYXCIMcJgtQu6XnOfAonuBk+BZkChbOWoSJTuuJ+HU+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So5B31Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So5B31Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7E4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763240453;
	bh=rmfgHwLoOObFPgoK8QyK0wihKyuttUIUSHJ4eA1U0bc=;
	h=To:Subject:From:Date:From;
	b=So5B31Vp68OTGsTlcH7s2wuoHL7rAudxMK7MSovE3JqXh9ViPU+hy5qmCMuEBPneh
	 GRhiH44EC6xPxYe6IMRn17YrMlY042Ly/hiZyHQX0XaGH/05gDG/G7zaMwIbCMvJea
	 qyyh3UU23FWXxAJzoZD3OuxBqhSAR5VGkttrFK3CgKEPn5fWN0pRn6SbP8TZVeHeTS
	 jUe9fPuPpP/Ixw5uWFrCHpPXJN1O3+pqI1oI2/3gBGEYyOIqA5GjnYV+uHRAZ+qjAX
	 gfDZFadql2+/3g/4IoLV7ZryXRrK25St6VhvP4nalZYL02Afz4+bHqAWKuvf+HMU23
	 52AnvUmsV7kmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E1CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324045357.25498.2819201671864327916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495a244886e3d84f2181ac465be7a9bf5b0a6b227d14cb8625673159f028ff2f
Date: Sat, 15 Nov 2025 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763240453
