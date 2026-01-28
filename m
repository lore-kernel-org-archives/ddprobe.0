Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC11FECCD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769561034; cv=none; b=hueV5IazKhksxq0jJkv+cJIV2La3Tmde0B6v24emPlKpocw9vzr+z70yC9IoJeChILyMtT1CODOrSwnAoCAQJieZnrVcDDYwwDtItx+uJ3GzXTeVuy2cYowMfQZsSHb5E7npk4MwwnFAritIfMz8IYkrtlWVdu/ucrh14KBtK4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769561034; c=relaxed/simple;
	bh=6d/xgTvphciPgpoF0Fr7VxN/xnUxGh0BmshyFY1bmSM=;
	h=To:Subject:From:Message-Id:Date; b=INDUtl+adCwDqD9oLS2bzCrYgfUKN23vVrJvNgvxZ0WkxuxSNL+0KkwMUdaMeOku5Kuh6AG2PsDab/xAM8cXpkn3PvSXLd3bCFtcCIdnLdbDa2nIgKEqAKt9nqx+r4dq682ohRMjDjxYdagA1cEyPDBprmfE/6lsdY45NOU1vVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p26bkDyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p26bkDyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF87C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769561033;
	bh=6d/xgTvphciPgpoF0Fr7VxN/xnUxGh0BmshyFY1bmSM=;
	h=To:Subject:From:Date:From;
	b=p26bkDyUa5/0gKUXBol5sdIL3HouPmNMyvrZuhgpEq5GkqpBNiBZjc29CO9Kg3AeE
	 ilt11UTtgIujHi1HecLSStkVOfKiwW4LXLm0uLvImZP4YQ08XytqDZ3eTWNhryWkfV
	 6a5xf72Ek1NB5LBRk/+EugEusoRezhsAHxudt3wPIC5EsuOgPu4ALqqRsw9JC49dSo
	 bItnFNaLR6+DLVD5/JeEo2OpEBAwX70Ma+Yyx+5bAmLf8q4jFOdCwUMqaUMnRQpIWz
	 W3jUd/9ELQzuyAdNsbfE/7dKNu9+4ehVcwfHaMWwl18WpT6Ob7yv2FY0QPLM+KyUeU
	 cEQMfXHWW8GgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB02D2F006
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956103357.6591.10746640214459302551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4dfc9e4ca9e59793ce96d924aff06ecc4f5a1d595a40af6e79403457f9ef2a
Date: Wed, 28 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769561033
