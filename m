Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51490324B31
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783209514; cv=none; b=iVTiaoaqSNlRMAsGyFUh6eMhkOWRUgVFH+5A/+3no89f+CHDsLiD9GYcR1xxk9EpEERc7clWMhbIaV9iIofoh4WfJpgFcSvgEuRgMcZrYIoWg5DP320vCS0eO1Mr8rsU77p5fv8tXELoNrhcQt0X9ZDlA4RzYiI8a2cQZLhQmRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783209514; c=relaxed/simple;
	bh=S2i+6oMUZQRgCr+uFnfva52493hhReOkHcTwxQYoU3M=;
	h=To:Subject:From:Message-Id:Date; b=FBXF1DxF41vMgjqlbHcd6YAHAOw0Pj9k2DypSw+bS2q+POld0tH8cIgkU+Q7vG9Wa3QiYHzW4gA3hK74Brx+sgRqS1RvEYResF+m25AbC1mHOGRh+YYEJ3xKuYVet2BhswNPQxMqqvY2cL/3dPhoL7z2kumP/tsH3mRmwu/VJEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhVdjWeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhVdjWeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4210C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783209513;
	bh=S2i+6oMUZQRgCr+uFnfva52493hhReOkHcTwxQYoU3M=;
	h=To:Subject:From:Date:From;
	b=WhVdjWeEP3ppb6nfCBd5ex+Gu4Qg/vnA12HccITESDZrARKAwuigCfNCMPpRr1Aw7
	 AwiNvLsHNeIW1NAdwnH8dvudu7duoFXvDFIXyVsFeLznp4qP9CYdNqVNRYf5WL4blT
	 fs1uzFw7nVDlVxxQnf8zLdYeNCjrO9jtiBNi4Y9Qa1cF2DDhl3hiJpXhBK787fa+EU
	 N5o0yX4K/z36X2DMc6ClZcyff+VUFjGL0LG00iPcxztWXlXFkfZSiLXfrcgqFa/iKH
	 OX6VU6KU4v7k5qlDaFloAWHEkz/9x2QaDMflKxGV/3kQcddn7jWzDnU49q4NYqttCf
	 rx+nO5oOgCnwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD32CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320951368.6819.9923292364055547995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaa9c6ccab41f036acf4ca02bc569f6e601b7005d07880aa09a0ab17af3723c
Date: Sat, 04 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783209513
