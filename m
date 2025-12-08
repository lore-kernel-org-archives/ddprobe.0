Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B54626561D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765216974; cv=none; b=QELqSPYbA0wym392h7lr/Jfg01SLVfLBFFrBY48NjN3XhEA/OkMjedESJuXzP0vLMz41sYxAxjUSuwODxamyDVR+7sE+FucUd41yuRih4y1h59DT2Lp/cw50imhRXUxqLirwfocrajmW/ro9h4BlZzEX3i+8yp5av03X/1oE+hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765216974; c=relaxed/simple;
	bh=89bsK/nBUtb3fbd/rI6tAuqLwORoMXaLBbbWBN0tu4w=;
	h=To:Subject:From:Message-Id:Date; b=jDpxCfFQVlGd6p+7N19aHq66QTBOCE3lKgW2FniaMC8ITXKZR8u3KHd7kcRqo6K3Mk+Jdd7w3FxUPkn8YniZ8QtPC5+AGCFATq5bUZNRtvr8/uqpol1E/Yz0iYOFuDtKK8+xZpscX+pH09f9FikeNA5HVWvMDSLVMDjLzv4+WUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbUKvfpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbUKvfpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10C7C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765216973;
	bh=89bsK/nBUtb3fbd/rI6tAuqLwORoMXaLBbbWBN0tu4w=;
	h=To:Subject:From:Date:From;
	b=tbUKvfpzIpGLhLIhZcyLD5Qa8IuZfUyrQz6k1XczudzrIzlSkOCx6mfsl8/C6OS/W
	 G7nXbH4M+K7V5SPUUQmYJOibZWlyf8vyxi490wGzDhOy2dBVUytP5E2CmV+FKChOnD
	 +h/xZxYDjjFxMfO4Zzup+R700ii0Dy++nZOlVTs1OBl1+qpSmKFBl3E5UOoMlHMNSY
	 RjJ3UkCJ4BR+Sp7G6iNAU9WXwFrjDU0eN0kv0ZfaIqRpOkWXNJCM23/dBY8GnGyVNY
	 5mFpzVsLXyNwIJx50Ls6MRE5tEHi9KfCRtHclKhNEJOnjjS/34/ae7t6+Big9Cae+v
	 lV+CdZ9hA9eeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E28DD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521697360.24761.17006524457490401200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd2d51f23c7ceb1eba2a50bbc0d0135c037dd1efc0904250ff2b0eaa6154c2a
Date: Mon, 08 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765216973
