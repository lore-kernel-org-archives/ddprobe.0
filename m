Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BA9C13B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756579194; cv=none; b=bOX1rE+YYjz+rfX2El+tWV4ARbGh6DOMl5mqzO5UQ17WPvvvnuHE9LV9yZYLmx6nE/NEGMqz3ylzkvQO0TU9toFG1g1E06kFCpdeIMSIIPkxrazq6p4V38NTagdVPQYxA+z4zhTNE304mZg9O/g5IgQtvfjGUEZD2/4zV7UqZ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756579194; c=relaxed/simple;
	bh=hDVoTLeGU0neOtUpuyrIDNLI+PDJKFKb7eagrR3aKtk=;
	h=To:Subject:From:Message-Id:Date; b=LBtrCe8LPaLuLt+QtHdoGvt36691gFQGVYI7tgKhaZQ+XawUhHMwt2t8vHItPAHF4Y2Puq1wm/+N0X7tdi5dAS1tDcd9SSy2MN8mo+VaqI/b6yS7mswbV5jD201YOUBsQgZovKDYPvmLEHAwlwkizAEn9aSkXZyjzLZzqT3Z90I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAZGbu+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAZGbu+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756579193;
	bh=hDVoTLeGU0neOtUpuyrIDNLI+PDJKFKb7eagrR3aKtk=;
	h=To:Subject:From:Date:From;
	b=XAZGbu+/Img22QW+jEUQUXAHLu3LKb04ogJ/Bw2jDJDAep+M8rijJ964dzhmEhsV7
	 BI341/5bCguLRgK+Io6zpj6vm+DQ9T+9oEzFvxLiNnVTCBPph++ee00qrCTSz0s0Q2
	 bFjhDlkf++q8F/zKPqqmKjvQJRVqtdM8FTPZ/dMDLekUaTS6ZLAb3y2CzrFzmVqgvn
	 vZVLKt2xc+wSmO8FfRjcY5SUdCBBKxT/LCymvyi/e/vTCivXLsZe+/mlvM02H8/h20
	 11/MfuYYEjva1Np+1Wm2EGHoHI/CHBZKZQAKt7Bhc89IJOS7uQk0joBlzeMPB/7wnO
	 9ISqL9AAbb/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92868CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657919359.24066.12921371396916595512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7602569ef71b6196191e8d8ba60ad57a138a1d459c12812c7fee911f60378086
Date: Sat, 30 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756579193
