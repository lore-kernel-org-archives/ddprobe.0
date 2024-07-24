Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F891C69D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721795754; cv=none; b=SCPTne/2QvfeZN4Bq5vAWnG/IZFysW2sKA9h8lvl2v5mQTyyWvtxX3JfDmusRotcfPmXnO0YZC9EqOwarLko6yheTmqkvNr3dlm0hPLSorkUemgqwR1pHRD+97S+4Dd2ZHwF/Hik+/bWSyBfM6kROyz7mwLbtIcZ6vKG9+maUW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721795754; c=relaxed/simple;
	bh=jFFL3fS0KcQWDfa6L/Q1p8fUkbYVaek4wKMuXkkM4/g=;
	h=To:Subject:From:Message-Id:Date; b=sNXeJqYsBrCtsRDccdx7OjwoEeHgmlp+hGyAR8Sq+KXQUefrl954globVeczVZO30PyLcceS1g4dDN51+K/dr4O1RLG4xwpxA6os3osJ/jwoTZw1OuRLcRcv7xuaDS2XGeJp1/9wjXadrUsFZfal3GRSJ/DB5+ql6umHZhf9ogk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwoewJVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwoewJVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADECAC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721795753;
	bh=jFFL3fS0KcQWDfa6L/Q1p8fUkbYVaek4wKMuXkkM4/g=;
	h=To:Subject:From:Date:From;
	b=WwoewJVJDO9doHqlS/Oei/vvrrlQ542Eyr0gYFKhJ7CJOgl01EzjpoxFF8pm433bg
	 oFOieQGsRN41ZfKQZyw8VqbxPxLvhp1oY4DWieJ0th7MbKqti5q5xb+7YwOpiX8/lw
	 9vhsKVLa5yrck/jZOc7TcpUIZfgg/SeZIqZZSl4RsEuYvU3oaSfKPWlGDhwCtYcnjt
	 RWJkcetFhJPnca8MHqE5M4W6AC4NoKBeykEgN9wvFtUXPPlyKNQveLwML3yGUkHWSU
	 FVvY/LiKFKq0kkKRZCzcNu/ammueeNaRbkfrSkj4Mu1nacmygBVbR8yk1A/4sqnrka
	 60TwmzoGnv5ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE3C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179575360.6483.1372673286279476272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352004bf291e25b75b26b19009f023f62d328cac1733fd361dac210f167ec01e
Date: Wed, 24 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721795753
