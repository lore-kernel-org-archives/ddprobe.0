Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6DA323416
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784098714; cv=none; b=FZ+OWbLPcOnP95kdXUZlPdwH9nd+kK2iXiFBjchEiIa9wmnd8WKJDn6ZqdEytuDl4N2Xdz/JERFj7VnBcwmz/wBB9dWKw4FAtf2QJdIy4/wCz26sJQ3TbQPobZDM8shGyTRDC6AgJKvQYjcUG0OzBbWNVmzdiS9pHVOEBdD//ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784098714; c=relaxed/simple;
	bh=h/6fxL9xdG4udf4FjUOvsP4P9t81tGpAdVdiAHhyxUM=;
	h=To:Subject:From:Message-Id:Date; b=PNIlHKccVd1nsrLliY3J1S3LPcg6cEl0yhAYUfL58Gz46XISwTp8Ds3PaO6bgF5NLcVxWKt0I9QNMOkSswVMjaqUtIBAKiDQMdT0fzH+kicm16hFMINWMN8GOBLJL5wkEB3hV1R0/0f/+D3Ga7DY8LilmKeHEhONa2cUmK4O2Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abr5mpg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abr5mpg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBD9C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784098713;
	bh=h/6fxL9xdG4udf4FjUOvsP4P9t81tGpAdVdiAHhyxUM=;
	h=To:Subject:From:Date:From;
	b=abr5mpg26Xe7Q+WUXonDjkYmKwPeszV38S+6mMXLKnbq4he6oxIcfEyFFlLBz6/Ju
	 lZ3x8cUns+xrKHTzg5WcgAaiVk/C0/0EGyYSUf8Wscv6kg8uWfJXhE8rl8bjGG77x7
	 gqGKVTRfwJgwVA89KaBm9cPvZWlMb01R3YVvH10XKe2cSyrAmQLxz5sxgWwwT2S6mS
	 VEV6tyKAVfR3TWDQx/lpRlxeUW7YYSjC/osoFmSL4YBGcsJDBV1ZLpWb6dEaDKr2SB
	 G5LbaPROejTabAsxblMHM4o6yrCFKWF56oxsbmFAT2cVEjFf0UyGwet9QeqS45d+wh
	 Jl1YHLRap69BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA87C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409871370.14210.16388176973040612306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d85270e25157922202ce631b723bcebac3e74ab8a4d6f56ab0f7acec5dbaeb
Date: Wed, 15 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784098713
