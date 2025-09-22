Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179ED442C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758554394; cv=none; b=BwHhMB6aol92ioHmQ8oscUWqyJWFL1MD2hJ1UwkvK4K3+XbrwekiKSz9g6Al33nHkSV/D36u8kv4RgaDM36QOcs7ZoOhMDQxSllSb+IAyWTyEqiilTqXvP8QklOehDYAk5W7oxZdlF/IbiyM3Xre7LB0hkIXgAbOn9S3c4ubI7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758554394; c=relaxed/simple;
	bh=RyULL6g3lO58KSXvcUuyroanKOSGsc/hQwaCxbsFl8s=;
	h=To:Subject:From:Message-Id:Date; b=QO/TvH7fCg8sTHgvxgUBBIJGpZ2T8R808qIF80eYrji78NHsPV4sHXWCcxOjMa8VBYp8UQjT8JqEF7BhpDCEhVAwjK1zcNXLoSBJl/uT+MJc7DPo0nySkF/O8Wm1/fvxII2gTJRsP6xtaPzA5rBRO8zliuaxhAamtOOjoat+SJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7KSNafn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7KSNafn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758554393;
	bh=RyULL6g3lO58KSXvcUuyroanKOSGsc/hQwaCxbsFl8s=;
	h=To:Subject:From:Date:From;
	b=X7KSNafn4QflD6Pss0GfyFVtntbviNicLZk+O8FFEOW5ctiPQEGFZJBQfSVjkCTPk
	 0NQq/R+TTngKuOM+dbcBdTPyB7hzDexX5XTPxZBTsEmglehjItyZ3eUgDMlWWUOmR9
	 9JFCQP+7xV7cdAURBNdKi/1rX8tBTvTSyNV1N1scbI3fEH0R2Y5TQy4Ybk4zCgFS9X
	 TR5PcoGYcpFgXCQwPFJTZb/h0l8L68dcbB4B9zLoM5ZDCtM5EKzttXh7O7xElRePKU
	 bIwmWAnFqb0+9KlgA9CPMIziEygP6BFqkb2m0syxoEILGe+uvLCyDakEG3v8gjHST/
	 Z2UQc5nvJ24eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED4CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855439359.2539.16259526386175935891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094ef228dd6a37aa3c146df12db660f2aa38188b967cdb345522a64d0c96ce01
Date: Mon, 22 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758554393
