Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365F6800
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745189394; cv=none; b=a/Id4EWXn9YUEgmhLm23/zmE+6lxkV2ikBw977Lcux8x0Uwtq3u2naw+KJP0Y1ouwPXjhuufGcHRjH34Ci6spbbblYbFFqtFOr9lSE/0coRfdXbGPPlc/IYnWPiv1m4lIIItLuw7epp47urB5SRtiMG+VxYsd2goM0FTWUkBA1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745189394; c=relaxed/simple;
	bh=sPToj7LpakDsqH7qhwO2yM+Jhia7/ZJgR7u33mEbLPo=;
	h=To:Subject:From:Message-Id:Date; b=qYLOIMXt2QM/z36No1/6Rl3U9qVyt7xofqQVzo9lRF18/Kcvodv3KFdzhk8C3VVMZheUJVvGWX1Brk37Z/2NIFdafMrD1GoZ21U+HJGLyia5Zsf8o8atjLEgviVQhLTPDf4MPuitqNaLTcyuVAWHs0QU65oGPE+ogeEBc7gEZXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wie7+d4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wie7+d4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D4FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745189393;
	bh=sPToj7LpakDsqH7qhwO2yM+Jhia7/ZJgR7u33mEbLPo=;
	h=To:Subject:From:Date:From;
	b=Wie7+d4nRpAn3eXX3704gqgQvR/d3At0kvJDi1OvwnORa46lzXcP/KtrCuAPYAiJb
	 RrUMq5Q3nw+McL0wfJpGMNf2k2Y5FsX7zHZSibXpgsau/ql8LP47P/e79wW4TmtC9n
	 VoCiiTjK/7raXjVL1cI4TJTB9+xXnecdyqNfGNlkkRMyCDBvRh2mg068SvxZVPR3WM
	 1qsO0sZcPifMVUguhKQ3TDDipDt9VqDlklTpwEIbZqY5NHTHU6SxhEh38kTt+uZGev
	 5hniXJlJPRZWaGjO01aSzUX3dT+rg6iEiB8T2vpgD6yKbDrHUXEtBYSB94Q7yafLUc
	 YNUSlf/wYE+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FBC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518939357.3245.10794354963643353300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440321e3b3050cdc3f91ca81d4919e6edab8f9cf988bc24c9060693daedcb237
Date: Sun, 20 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745189393
