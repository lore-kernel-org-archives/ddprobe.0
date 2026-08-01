Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444CF30C353
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785625834; cv=none; b=r0F8JObVQig0hKM0DtZhOcrFtIp8WyuYB2Vlln97NC2G+QgscfyYEhmjpjsY4YAHEqAvpTSRWMZhoXeBSsOwXVdJEf3DGJ8C5KIKzq4Tbs/kzUhCO47QYWeNp9Hw5hoVaT2V7pL7mKn/ww6IpuSJipxHM2aGt2VbzDyuPGoSrMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785625834; c=relaxed/simple;
	bh=lSBdPIbu9ZPJjRTV46TWmPb2SFP7rDhI/3/Lm7sDoEo=;
	h=To:Subject:From:Message-Id:Date; b=XLNDzRClci9jtges9d7dhI5UBMHSe68FErwG61+a5oVWtEX1K0euYNd6Kc8uu/ul/jEWGv0Ts4LGQkWo6fU11iRtdY7vWpsiIu7+E3+i9pLhzvn9bYcljpwwutsvZAVrMWTfKO3HIaoClRBlmp9v4ZXXKiZnpK3KYwTsjRvSeiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJXLV/R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJXLV/R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785625833;
	bh=lSBdPIbu9ZPJjRTV46TWmPb2SFP7rDhI/3/Lm7sDoEo=;
	h=To:Subject:From:Date:From;
	b=dJXLV/R2nSL5Cpa8711Qqcrn3CACVe8aSdCcU8EyrrHThzpkX/bbs6nHxNnqiG0J4
	 NPA0B+tOa4Fn0bNDRuMblMIXzrkT9jv865XWaxur34hUrzC7DulnqmyL3xulCGxitX
	 9GATf6ThC8LNYv0IdHBUFZf4M1MU0fim2wdDsc9kLovzj4oX5IBw1rP8hHgBIuKpOZ
	 XogAAuxQXLv9d14jJDkq4rqr9ec0LMfUQSGnefNWIhPl+/F8oeDQgdaKOMp4d/zGXs
	 q/CxcAfSQKBReUKaYFfVYxJT5zHbQHH+FxtPZE/ZwIn5ce93z8oLHMsiXjojjn31BW
	 5x4nKBDXqAL5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE102C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562583368.5900.11093009272091039528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92063f184a8bb8af1f435d6b220d9cf924703ab4b683afa7e2636d6f32b26bd5
Date: Sat, 01 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785625833
