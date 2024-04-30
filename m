Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8512B73
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714507343; cv=none; b=aL98Rz0HRolxbaTUAJ3soQ3IPSiGwx68De3JlLqpFTjdr3vdfEf2R6YpqF/r7Yytbr1f+AYplV5lhVAjXmmRlDuVzDv7qsxGRmRytNXCfGLJTOogBBMMZ5lqeJwS+3Gu4AoIf5N+q/KnsD/JCnmHXyIAs0RB63/gBr4ygKiBJyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714507343; c=relaxed/simple;
	bh=HSDuKxKmxdwwH+X2zMVa6svkRuO7bnoWlcpUa3LHAhU=;
	h=To:Subject:From:Message-Id:Date; b=erqT41A0Hm4YDce8A9n/fxl1vyMtlDZpyJJ8VDla3CO+5QFJe4PGAtOHEMRrI7ZcdCIh6Sh/uCB/4GK0Tn5d6bSc1B/c9UFdVRE7qrhc5KpvPl1NpYNGGs5MZF7uVgtCnYruhw4GExvtomgQsY63ztsdJ0MuX2+kGCvjy0rFrGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbrnyzhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbrnyzhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3168C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714507342;
	bh=HSDuKxKmxdwwH+X2zMVa6svkRuO7bnoWlcpUa3LHAhU=;
	h=To:Subject:From:Date:From;
	b=JbrnyzhqpMvKpq8GMK+dijM3m4RCgoTUcKejIWqqFFGCdV7rP0hRS1/qcqGlSH57Y
	 ixNbGfWA10R8DTPvUxtixvlFygDJQDvdMxScU8FI82cz+1ABvZJhXHv7P6uoQMDVsq
	 XwODgq+R07cQfT45ooCporryZG1HzSxy/lmsdBbwaUfzhaiVNDcJqjuKG2yZhdAI32
	 ngwzGpcvjdYj+DZHhMk7gkqxLfl4XFozR7G+o5D+rcx8/KEM78c+i553F0nWDwuWlN
	 vhG4TsianJwmGf08M7OZVmFBbPANc3pU617vPKWmPqfdeGBkZFP9gIlkpihY+37/gm
	 x91Ljx8pgHtnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C8AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450734277.11082.16299095082051543688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bb2b2f335657374d72c32b7e8085623ad10c458e99a682b95d66f7a6f42eee
Date: Tue, 30 Apr 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714507342
