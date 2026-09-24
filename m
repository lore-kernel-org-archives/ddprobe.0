Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0784AA01A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790280635; cv=none; b=jDxyujRGqV7vQqo+EgDiNTYhZbrPjMjwNardc6lQC9t+tzhzxMFwcM+NfEh/4X4OEvpVDZKmvhTjJrarokEa+3r4n7NNaXMP3dRQLDgTOzpD9g3LBPpO7bVaB/4OHqCsYthY11ix0BRooqxaz5Bt0hmRlqu7VvstwJiO7HwmTbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790280635; c=relaxed/simple;
	bh=McHHqGei4ko0PwpZaynSnpOms3DgRhMkj1qyObGUtIM=;
	h=To:Subject:From:Message-Id:Date; b=fk0mBEksndRDGZheH+s2mc4CDgonSHlxQI3bCF+BBTYy+UE2UcUm2Gvz2v73I+PkrDL9RL1OVPABjGtxjg+XjhhnPPEqLoORHV89VhgdufG/9Il9PdJ0I63TbZXSDO3chU/XtYfkfXx4rsZhDdkJ8/R3zS7T2pyob/uVa9KFPHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpFOYs91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpFOYs91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66E6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790280633;
	bh=McHHqGei4ko0PwpZaynSnpOms3DgRhMkj1qyObGUtIM=;
	h=To:Subject:From:Date:From;
	b=XpFOYs91sE61OLit3mmZ63xMEuS10sX6WtERdpUPLJY+tMQQNqakMBTexaQ3v2rOI
	 jZfr9xPNkC0QnMz7MMZvBXITo0YKTwrPxbWekCSG+Ip0iFRn9s6FPCpvthzMfhp7u8
	 MNVWXV7Z4Dnm7srG4tlVajMsGeZ+PCX3nzCskM7f2A7VQQW/100LZ6hv7AJiU1G2Ye
	 OeFy39sPjCOZXUIGQGnGCS7LRq9E6lkjhwZdGWIOqtcP/RsGKCwZwZNhSgRuamdH8+
	 Ti6g7N9opk04SzXE53e/z0PHGtX8QByhbUM/VaCbCD4x6DKN0CZdJdGNIzkLlyWJ9Y
	 ZHof9Pva+GKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B217AC98321
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028063371.28596.14232887707950011174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b3dd6f2a7feec58763215ee6583719fa4d5af766f4554a70202b9680e937b3
Date: Thu, 24 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790280633
