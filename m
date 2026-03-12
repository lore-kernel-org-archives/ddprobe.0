Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B44283FE5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773277494; cv=none; b=fmnnDuKk0pltO1lBSFKbRpvqfJOgDlZK86pn/+4Mht25zw37AW2a2JxMuTGh32m/5Um+RBc1Dn80ernZUcpgmka+Lpc2DC9kYrDK8qZeywZnHTlBHNVBYRAsjBk2HIPvjw8h0/P+PPWF20a0j8+ZAYgR0+04TwzalEd1chc+j0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773277494; c=relaxed/simple;
	bh=h9Hlsz5ptQRZc4XsUtw8yvK1JaJSJSR3c/zxTrMOUU4=;
	h=To:Subject:From:Message-Id:Date; b=jeLozHUbE25Gj1oGG9Q9e9Sv4eDxI9PmAGvWe5nkxo+Vw/uToahq7QTVTINIi2bM+Qj/4PR4d+CZZP6i8D+nvg40Jg1+k5K2mygvRXCl42aK/iDj97nmK0yAJOWDEi+n7zc/qT7Ht7syaETxuVX10uajVVbBeK20TM8dKFrQifA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHrTv6OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHrTv6OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD77DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773277493;
	bh=h9Hlsz5ptQRZc4XsUtw8yvK1JaJSJSR3c/zxTrMOUU4=;
	h=To:Subject:From:Date:From;
	b=cHrTv6OC7bc1A4IBcLXWM3chmZ21ePzH8lNenGtqnAGI/n0Iad77zYElRyvlA0eB3
	 68d6e+HbeiJIHPmKVlbHQu7Zx/nQiEuRenfierAv4lKPVy3YCR/QYyErofuiWje9RE
	 2Mk9VhA4DYR7tTUS14JTglwtNK8o5B6ewXQdz2evcOlss9Vh3qmcKrRZt+POQM7p/8
	 OOd5CjS+PBMJ4ExignLQZe37zqtKqKtibmESslVpM/qXL/9RwyRE/mIPE5RLwSnNmm
	 LrQQRZ0ktAxf5bSg/WJM0vBYP60PTc96Yx8witIhpHMQub2JVXwxBJPQStKFolVlDP
	 pfujhLC0JIRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987DF103E2F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327749358.8599.17837865195062548795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bfbbcee499dba6d787350356de332a7d7d111d7564024d644d93a58d58707b
Date: Thu, 12 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773277493
