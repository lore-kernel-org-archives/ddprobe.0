Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAA519AD5C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768645434; cv=none; b=JQ42UTdp1UDPXA0zdFDLVUAb76JDVKl32PpD8CiIzLa+VzF9rTFz0nf9SPmM+hHS0RGIR+caLh/QKzvPUc2Feof4o3Ro6Ou0Rp48chFUeNbiCLQVNxciN1zr9p7Ow4INjVWtV2oN9vRx9X8metq3Rxs/9rry/xw7LAAmUTPJC18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768645434; c=relaxed/simple;
	bh=lVUrTJvq+0gpj8fWcmgRRLYZ4R3nbT8JlQchsgrX/kA=;
	h=To:Subject:From:Message-Id:Date; b=GzBVtfp8twTYQ+vnsKIqQU7HV0NkqxE3uANeEhD6plxJdfJP3XsyIGWCY0yie92oRjWXqvvYF3yqBGZXA2AGbsrHLR16qhEXtSTh8gv6mIxgOheaod2DoX4/m+YHVkZ9AnO7T9Cf9czJrSf6QXNVv7R1b//xF86evX51CCpWMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGiZJnqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGiZJnqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5412C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768645433;
	bh=lVUrTJvq+0gpj8fWcmgRRLYZ4R3nbT8JlQchsgrX/kA=;
	h=To:Subject:From:Date:From;
	b=vGiZJnqzpXL1tXWnoNK+Wff0UjpyrZQ3ErFhpLpFiyBSwbnCPWAUJhmXwT9LM6yW/
	 6KVddOocJuLvo7nNiQV7dKWZ0Bz/mLqWajBT2kXEN4fALtZ2OxPgrBwGmWHCaH+43u
	 I1avCXeiFkV2QFtO8te0Sb45bFAVm9MWmgydifO59353b3cI69XqmRChiWxUeFJ5M5
	 +Pb4602PJuuglLlKp2egNlIPuiQob2/52ICQLKZwPyejgs8vXAGdcQ4iD9y9746sXp
	 ahtXGPMtXDm++JcbHM+rzaLQ9C/Aufrn12xSwpkbt6rJGY8VtMohy7sUlYTx2stTFX
	 dF0pZkx9xxWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974AFC9831C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864543358.4934.16290123678503959053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6245f158f0af6a559659f76fe5002ce547ef90cabbefd5af703b100b2f9f710
Date: Sat, 17 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768645433
