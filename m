Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479A5153820
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724514954; cv=none; b=JXBkWiLUkp+qitGU11YR6C9FszLEIYFxE7YI4eqggFxWTegHissq89G9bBls2+i2ncCYRXulue7/PxAz+CTrKHCUPUxvTGVB83V8Yfc4qqkRB7sONvwWcjV6Mn2nlBWnulvUAlhMTEfNpwGjBlKuPJTOH+01P3GfWoeScMZ10yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724514954; c=relaxed/simple;
	bh=vDANjm4kl87cNkNPnPChhftPvROlBbiL9eE4fs0fdY8=;
	h=To:Subject:From:Message-Id:Date; b=gOCjXyjmDD3YBfaJNZ6QGHuZHSG97cDuFwCrHWVs40bmBoYKN+XvjjZz6fPDzgvPVCzjXUhGY/pn1VrYtbafKo+DtH0Uewebrw0Ulei7RWKHFP7qd4lTlrtciaq29Bot2wKQcS7JiWkl5w5oqi+vTlF2uYHTzMwIgOxyoSHchh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US7brqrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US7brqrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AB8C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724514953;
	bh=vDANjm4kl87cNkNPnPChhftPvROlBbiL9eE4fs0fdY8=;
	h=To:Subject:From:Date:From;
	b=US7brqrOQNgWgWLGzqAGdxrd/ErAQ0r+jSSK8/qsVbIKpH5By/qeid7A8NY1EDxWy
	 7wcjn04ftm0qZAM9fQBUvRjajkchc8t55QDd0AQPks6tvuEZVOa++iaJP3Yyj7yCfM
	 HYL2htpd1meQEeob1SCZ0DMn7GBemIsw9ROrzKuBB2RYef3eKORIu/1lUYcAiiTIW2
	 VzfmSAe8er5p9/g7uvIDxMvMRdZ9nrfCpmtcInRXcXT99D/Ow8L/xfbu1pOaY9mtj3
	 4suAvdEi4sGhSKjjAOa/5y0adZukwPn+WQOXUgk1NgvnH5xf1kIkyQfThuVfr6sBsU
	 aBI3qkVyJ//Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1A8C5472E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451495363.24637.12028716418161563669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605b0b458a460dc451757a4b415b48b08f15203393436e5af28c8d99778d87db
Date: Sat, 24 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724514953
