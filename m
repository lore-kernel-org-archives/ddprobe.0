Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581EA37A4AB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792213834; cv=none; b=RcuYjmi+MqvK3PCSFh9Ni/xwvE/NpHFG+wYlKVYdHVVpmXnJwEbsyxiyqxgyonSrHcfbctQdQRglTvspuwUn2R4WnKv9EAVOJIJZvUVNZ9TDCNeOxC8gBfDDb0iQJJJgejGltJ1iKfVPKWfio05Q6Q6+luB9s0Ou8oYOdF7lSEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792213834; c=relaxed/simple;
	bh=V67FdqZA7MYgd3S5z5anX2mK23636iwR7xjPbcGF6Sk=;
	h=To:Subject:From:Message-Id:Date; b=aJ/cZm/R4TZ3gLKhtUP2sjLfRq4FUvGVCBbWcO5vNqf+dIAjuKcZEm/66qOoe6XifIC3OjxVusbVoOjtHj1B09KJ5IgXde2N5cstlGieIryubglo7JKniiu4r6NjdqIWvG4jnLdoP3NhxV8efWvSBZcYgoiAK53HMg+PaBSn06A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKK6k64q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKK6k64q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D009BC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792213833;
	bh=V67FdqZA7MYgd3S5z5anX2mK23636iwR7xjPbcGF6Sk=;
	h=To:Subject:From:Date:From;
	b=SKK6k64q8GZPOxS/lMeQzLQzSI5gWT7qrdWMLSP5AVhNvuMoJXFeainGwMxA14WHu
	 H2jtBUscFtyP9eDLEuhG5zRfp+qEsn+bgIMKT2MIKCfknWguxlTrgm11320psdPxJn
	 KDLVWA4Pk+rx5LJvtHSfv5QhStRZ9d7xjOy+xi/Oa5TADmZdPne1f4BT4qOS1/nesr
	 ibBXmdV4XXaWmaz+Idh/ykDY5xfeIYnzo404Azwy2M3oeqHcchHjh6r3qmZMS2LxUE
	 2MTagSZAyFgxzDBoSnkZFgibcWSA1tuPlV94XD2aWmbtTFdDNGqyNKw5nQ4sWlNizv
	 7oAdQRAIGtv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD3CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221383370.7090.14933694765325144914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9189d1f5a72b285b7c88c61ba1f7bb6b0daf9e84b4536e67f1835ef72a3043f
Date: Sat, 17 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792213833
