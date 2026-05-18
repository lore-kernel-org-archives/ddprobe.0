Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FDE3FDC03
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779106833; cv=none; b=C9YTbFH9rKAJtGPbjvQsUOqZ9i2g+qW3tK/D+31WJN47rTvK0Ym7gu+W8e9IEvFsaIhgDOEh3U42wp3HYLlooNbM+pXmLn+sC+Rx9p9cX5yoCjRw1CaHnjRDs83blLeNFKD/VJdq/TmxgVUd9s5aPpuejV4TJMkPj+IZOBmg4gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779106833; c=relaxed/simple;
	bh=do0ABOJDjwXL2hqamWHtR1MeVMmthrHMNewf5jE8VOM=;
	h=To:Subject:From:Message-Id:Date; b=rC39iZ2PDhmNMMtYZ0xMt965KaOwCoEHHgQjTbH13bZt5woIKTAcv/a9Rb4IzVHqOcWJcI0bFaVe0WiJ52JwNuAM6Ys1F9nnu0N58ZGvz1xjIPt9cQ7Q2bdbF8wXpsQFK43lShena16Vfy5lCrl0s5hr5O6VN2gJbhMEbAQ2kZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD8vQBkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD8vQBkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD771C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779106833;
	bh=do0ABOJDjwXL2hqamWHtR1MeVMmthrHMNewf5jE8VOM=;
	h=To:Subject:From:Date:From;
	b=MD8vQBkZLHpViQflW0QgDEUHvBA31b4x886W9/YH0CmhxHieoQhnHcv4xO30aeO3r
	 05qf+QMZqgs+DDgm4NQVNE9znmfLzax+nqUhI6WPTBu0MFNrYOpaxmJcZVrir/zCly
	 TImXfbySlPRpPMDiPzoHqSJ0HkCAWImelvJB9XHVDWIUb2exiwqISeLG7WzuYjItG5
	 SMPLZ+haYTuCOEUDKmDblTVDWtxyfiD/+Q6HjW+KyiO30pk3ihbSPxr6dBM3FCmsWV
	 zihtMETnux/b7vqAFTe/l7m2e9xcUjnucMDoAJcBWvs2va8YvwMcOFi3wrRni9Ufkj
	 HZaEahgNyjcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF28CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910683369.24804.366586397158767847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387a9755e85fbaa56affdfbaaff4f9a65b9a03f1aeb0a5c114842331b80e4158
Date: Mon, 18 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779106833
