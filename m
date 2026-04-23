Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1582A17BA2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776934054; cv=none; b=jLYlvjbbmqPgQA3Ih3M16glGiFLhK+qEeH3Yj+m98T9DgrkjEKz1kJD4kxrh1SA9A/QEF2snZPxBjmAE8DgeIceVuSdX7HL5tPbUAtQCxQvkUH9XYTy4pVqtWZvwglZvSv7PeGCuCM3OzsRVVS+2FvxIRhfH8AFnx4ua9yfhs8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776934054; c=relaxed/simple;
	bh=OHmErWmeXPlDOI/YObc8z9uZRd5NkBvI842cSYXoqAU=;
	h=To:Subject:From:Message-Id:Date; b=DW80bwm3fwirjdfke4zQNvNyupFcT+BSRgMKyenmXF/iWCY/D4QZ64JjR3TivwZo0L6lB3Qyiau/9VwGjUzXPwC+s8fx+IBWNYkus3cb6spEgLgH90Ie7GLQefObvHENatOElY9/q7MhNqFoNcdcf8SdbkdlWQOCej1b5IqVsBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hevgGq6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hevgGq6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1624C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776934053;
	bh=OHmErWmeXPlDOI/YObc8z9uZRd5NkBvI842cSYXoqAU=;
	h=To:Subject:From:Date:From;
	b=hevgGq6Gcpv+OxBHgurSpviEMFV+vc7MvbwRH4nPLkc2FgKreczZvgHIwS4azb7GO
	 i5ui+sl+S3zdLTUomy0itMi/ffFjoEeFkQ7QLKntynSOZQuvUnK42Rz11Ewuala5pQ
	 FnOQd1Yfe08VU7ojjGegP0rjQFFKaMs+N36j38k0twOhRUd4B/TZb+7eskWdrsloCB
	 njRjpsAgyBBcIXg2qTZdk9w5jhb/Uk7j2gSPSThlR6DKmwpUhq9A8i+4bMsW5v7AHQ
	 iju7bjAkfDswUYcOq7k5qgaZvgQ9TNCQUVp9Onw5bfa4Wk2lOdQ0ctgWlMemC9vaoa
	 0oKloeLBGMmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE91F99355
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693405368.1349.3197552508972154380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd21a72a24a44c751634214d51c61f1b07292288676070716db170b45082b2f
Date: Thu, 23 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776934053
