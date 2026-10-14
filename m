Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658A1271450
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791938434; cv=none; b=kCCWOm5OUYSPr+IIxnBW+Nq7nmFGiwUI7gZUyEPIWcJUTOqG5mWDSJ1pLrQBkD95pN4nJoYYR977qF/yXAbnNB7owDlGiEhV4so5e2FdvicsBbIX4wVWb64KG5ceCEuK6wHFV+hF71COMvMsU6utcg7TsLBKzLuTvTkUFKf8RKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791938434; c=relaxed/simple;
	bh=awMksBCLbWVO7WeD7rD8glH7rNTtWaBhwNUU9uGa6mo=;
	h=To:Subject:From:Message-Id:Date; b=h1QFc4O5bLdG4F/rt7WRPw1q6G8R+J3ZkmzzwlUzKvwLmRZczI5FFj5WCeFSzsjIGrqTzm4X5PNiK2+8AWq3mbNGDzJF4pFKsNeFSaGdEbrheP0nTTU/HIv4ykxORQkKn7knnLr45+nxZA0zZSq7d8DxsNkB/uN9hj1rElD4NI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCJe7XWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCJe7XWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D711BC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791938433;
	bh=awMksBCLbWVO7WeD7rD8glH7rNTtWaBhwNUU9uGa6mo=;
	h=To:Subject:From:Date:From;
	b=aCJe7XWH2qHW5yUFQwd6WOOd3I+UvF7v7tcuyOnHtvg/UznpKJxzQD2ygOMSCXPWJ
	 +4uY2hwA9hBttJ7SOmwTiKqNc2tf8U+B5P+5Tm/cOSF9ybwKLUTmSKZL6ciZtm17C0
	 za5BPDuMZmS5JTrPJES6TUKW155/wKHzauSasr2fdMUyViE9qCgPnZXvmVmE3zbS0x
	 LLrxFWC/JOmRuie0UmgWyF8oouE3nB32LAq2w24sEES1jtHvJReXb8BeCXKN8qe7Q5
	 rFkvbH2Hn59X61MZ3KZoU8njAkDc7meVIFjDGjg9nbQ/Xu9qHHo9WHfcxmVxfDEOnV
	 3CjOOETEjGqPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB118CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193843368.12449.9557867580343639472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f839f5158a823f8e6385b63f315b71b2ede5018d905e0dd78d87c40ba040e64
Date: Wed, 14 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791938433
