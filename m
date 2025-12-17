Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A77D221F0C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765937634; cv=none; b=PCtLEasK3qDF0+bMxhPt+Rn0FpBMyxwVVTQKMWpo8jLSPPYLQW6p1OomnYo9Lm/XVnU9FQvwamB4XTEFOXxzLaT+0gUsGeyxGtrNbWxxSOtEmJxEKKKstQMZYVfcjmsk90iVgCfnVmv52vJj40891Ny2Ky7O65zu3+0SfTBXNiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765937634; c=relaxed/simple;
	bh=SjpyTL/5SsBhZRGRdfYn5u7/sS7wJMwhuCQuXpdAb28=;
	h=To:Subject:From:Message-Id:Date; b=ocB6fA+G9vzGJ7QnMQHznLqPS0J5oho1RPc8Zw/UZH7MBewGj+mb1kqfH/xHoJ0ukW6FzneV5+Iz2M0dZcLsN1TPn60K/T4xe+0g0Aot9eHqGV2fJ1JCrR+3N9x81UAS05podQuoE5kJRY1asfHtOzmvWqdlGteW05UxXYkxsSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtADMKW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtADMKW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765937633;
	bh=SjpyTL/5SsBhZRGRdfYn5u7/sS7wJMwhuCQuXpdAb28=;
	h=To:Subject:From:Date:From;
	b=JtADMKW0fdTCjdQySn9Wm0QBUczUKpxaQLciv0/OGiErMVtoshNtqYZwNmzw1T3Fd
	 pKvan5EzUjq4vocK7VBQoyFYkKD6I43rN0vrkhJW1CdWw5g2icSmUO1/oSpuw1msYQ
	 oEM/uglwAW72BcwAlUN8PKJuANyAn/CyWJX7b0ynDCAi4C5eNrbx2X/LQpLyZEV78y
	 YfWZ3Bwyx75fppubBTRf99eq9d4+fIdPvo8KfmSmCLu8vXXSF9T+sbIbJpVcAW/cUT
	 0rmLsI6cEz6k+FyvNad0VkiW1Ni9YOqomZxrB0yb/N0VO+pNIIqd7k2c/ziDqYf+q0
	 dofaAt+Z/mXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94078D6406B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593763359.25272.652985711646312585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f774c07ec5f84d6dcd1a3474cf2bdf6a3a02de995e274074ba0002ae137999b3
Date: Wed, 17 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765937633
