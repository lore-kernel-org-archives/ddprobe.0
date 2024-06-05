Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB512207A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717558583; cv=none; b=sdskMMVtzEdfu6cOt2GO1TmFkmtN4U77VhxODVDLsESAVZ8VSeejzPR/d9mCWiJNhp6TqsvHbGzJBe41ma/UVjXqzvGuAIkjhedDdA/FvyJ/AUWb6Mh6Xp8UVnwZ0Ux2dYneiJbH8AYPR4MVYhbIXXVXAhGrqWc09FyZoU/zftw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717558583; c=relaxed/simple;
	bh=nUAMUKHul7HN2g+mfZJxeQJ0BcPcg7L56s0bNRmrpOY=;
	h=To:Subject:From:Message-Id:Date; b=iqYhSXksvvTj0EpRMAgCzYZvAqRFlEIPTK+X2dG8GwkeSIMCWuctFek/bQmSEwgGTWZZha6emBILnTgTCBc9ia2rzE/MAY5hV1Z7kTPzx0i6SoHUtHfQf3Br/rwVv/kwdHAsOhD69LDd/3rtcotYFEUu/ExVD8/1U2R88uDyTQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6t8iM2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6t8iM2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ACFC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717558582;
	bh=nUAMUKHul7HN2g+mfZJxeQJ0BcPcg7L56s0bNRmrpOY=;
	h=To:Subject:From:Date:From;
	b=X6t8iM2XC3dQ1sImiTlVaY2tjZI+IGzMTH2NEWBloSUUW6lCo4HuRUeGwi0PMIdKN
	 27CMzDM1PCfPjJEPkVGId7pTgDZELzHrgPdLhbWe8yczINtVkwFXmfDREaGymfKyvH
	 kpy812Cl3yl9fMj4pDcf4dgl8YGLEmayc0AXBO8dkWC2lItOt/qeoZlzo+CxyvQ+S6
	 2humrZcgCQitcxGnvwjSznzJkc48pBwzdHbOgpHshpEQn/dAYMhatocqtWCrLe36Du
	 Z4W8/rKBl/zBBZZPgzGnUJVl6q0fLzJf047Pg9+YvVkZ+11AbMLT3bCcw6HKK8FxcL
	 QBPlX78xitSZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4EFC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755858283.8610.1821707103096922328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6be6a8e657e4ba2e053f85508d7d459a21d7317c9d8a0719381c45a79bf995
Date: Wed, 05 Jun 2024 03:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717558582
