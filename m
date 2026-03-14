Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1397630E85B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773462294; cv=none; b=syh862XvuqFXxuOHFe+5RgHBzYWWG04LQC94Cspf1yU9vzZwGLFuUu3ZWAuozgf3Ej3bONZPShJpZvouLtxPe4AmP7Aw30aCzbqnUD6dsCNjnOGx4fPwcarOcLbyKX+VrHzFDALjh2ujGVT2MZM+5DaYd5bxhjK+qm+8nMyht7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773462294; c=relaxed/simple;
	bh=cYGg76CqrxsG7mlZHYds0/TZ++LTJwGrb+H1otIu7KM=;
	h=To:Subject:From:Message-Id:Date; b=Zfg2xjwzsMam08OxCx6RxSs3+3liVaGQRWyBx6wx14CF9yrSlTfMIHbdU6jz/brcKGdA0n5cSbFSyTk3hkSzoiZwBxGHRK8/to9ALGtD6vw1byvGl1WfA5gimMIOzuQ2RbdFmmrsBjen0gV0p2GfTPVQwbKQi5NyLLqngzdFn6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpR9Yk5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpR9Yk5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9814C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773462293;
	bh=cYGg76CqrxsG7mlZHYds0/TZ++LTJwGrb+H1otIu7KM=;
	h=To:Subject:From:Date:From;
	b=bpR9Yk5+z+BWTuqlpSB270p7sCgU+QX+YlL8FAN42G1UHsntsYopNrijrzMcGNeZH
	 dZYVZmmipCz6AZ225obvGLe+5achGz/DvjWqQU86Db2X8QIMsVA7IdegNkMHyInxFE
	 gzRMz5FIFzu/VCMduDvtu9iS20kkYcmh35Ea5csGuUAzWBvXJulrwEZaEn+KWL3o1v
	 NFRdirCdVrmx2TJVnS12UpZuL/0LiHF9O9jpu4rS6s2FviPied0Y+/0EptZj8E/u9L
	 oRM1aS+3zWXQFtDJPGJ/2I4D5EzCtbWXM9Meb9eFe9qPlGUBuyqCE63ukp4egt9YLj
	 jLcLPrVEVwwIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97006107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346229358.20334.4900100114734242641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcb9daa831238abceb72be18a1c94fb5384113d856c7693d9f7d449789b987f
Date: Sat, 14 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773462293
