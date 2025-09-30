Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E75173
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759246794; cv=none; b=CYyTRrr/hBh/yKv3OktHWOQbD8pH8xx6IUHR4i+YJLs8o+bfAn8jzKGcMTmMuhcNixDLgltErU4+zigYKuc+va1WCSG9eIFnBefH6zRWURqZ8aTLcJvLJ16vQiecFEI3qz2mHyPkwY3fJR8hb9Dy7JlZs50VogEstAJC7Qfhdsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759246794; c=relaxed/simple;
	bh=qSS0m9sVl4V66UEZx0yTyBSkCw8gSV5pkZDT9kqRShA=;
	h=To:Subject:From:Message-Id:Date; b=p8Hz88wRi8uI53qd6xHGef1K/QuR4I9dunxfJjOoD8ZR0vv2ZIihTa5aK6uo4V8NEssM450z8yeDJt6xRLss9MSaiqLqMLak1SSYTuRR+FkEX33qIr3m+rqsoLUZguHl4O/UuF+2vKeRByBoW003puw5yFLTxXJAuD48gPhlsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyl0EKqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyl0EKqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759246793;
	bh=qSS0m9sVl4V66UEZx0yTyBSkCw8gSV5pkZDT9kqRShA=;
	h=To:Subject:From:Date:From;
	b=eyl0EKqL/vhCf/pCLm53YLx/C3VCypO8oVEaPk7yhQxCyDLXeFVeYcOfGk9p/YEZB
	 B35PRgU+0DFeATMExOQLKuUVnfgvMyBA1EhhRgB4Z1iy/O6MKMoE/6Mn+gmMEV9Beh
	 XYQS2Q2Zfd9wclKPrBzfT4Ny52SHIfbDsPR1IH8+Bpv3w2FQPeyrtMx2abRKMNyZJr
	 bRMQz3o0Gk9Yc8o1oT4QkAWLZlZLLcln3jc6K0aiSdwrpbKlrreQzXMlEEeTTxy7jO
	 x5+ZNamVVKPU1YW4F+GSmKBYh5zBmNoIF1BSCc/v1+7ghySK/bRmC+WJnpY557Y9e6
	 KtU6uS/9Qaj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B8CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924679358.6615.8793333715076527618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f778de8bede136966c3e4ba4baefe17313d57a10050a8fd3321f61d4a501086
Date: Tue, 30 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759246793
