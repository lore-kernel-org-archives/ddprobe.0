Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276863A0EA5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775806054; cv=none; b=PAYL6h+2F2cOw2NL/WIqVmC1bka8oM8NQDCBnkUdjnPBpBN7gPnJR0H+niK9ez6e5kyShklllWiZZ/YdQTiTcgRaDaSkMauE1OBF/3fVICMwerXjzfi3X0CNKd5+sVT8R2N6qMHy63H2DTiXrT9TxzzKaO+qdwEfKbftjrpY0Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775806054; c=relaxed/simple;
	bh=FLkm5MhLZFPu464hNPWtXmxktGzsh+dpdvPO5PriVM0=;
	h=To:Subject:From:Message-Id:Date; b=oFmchshUypLVg1u2uoksxundkAkGOF4s2LLre04nQCWTA8pqKYuNtAEvWyjOga0UHakvBlkq5lCvNj1Al/0adHjdPLk1ZGQZHp1Fv3m5lCxtUEa2uqE3VFgD/K/PNCBJpMR0k4FbG6OSk+sgH9JnlIyHpOKqWKO1uJtAbQmn8xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk9AeOcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk9AeOcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7381C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775806053;
	bh=FLkm5MhLZFPu464hNPWtXmxktGzsh+dpdvPO5PriVM0=;
	h=To:Subject:From:Date:From;
	b=Lk9AeOcESmHbIQ3LFZY1EZwc/9j4DWZkqTP4xW1RpG1SYtcXNdFWknmQON+o5zZAe
	 KmCfFF0NrtKDUeVTpSnDp1GgvAXN4/z7UGCac/lXHYsKNBiBmyEYuXWl9Rqp+leK/V
	 nHqtm7w0nG4gc/j+l0XBPHHm12ZmZQ12TJvnncy+24Yy19xfaSeJta5Y2unPlTL1f1
	 gpd6IzBU/N2LIYKMIvKp0cMmPL5dtJ75J6oXGxXUE3G0Gs64+IL2TTUAJewQSI8gR/
	 /4ecLQHaIrBcXiL+dPUtpvtMBQhpOL1aJrvVjsNOqVAT58KXl/oO39CkjfL0oamULE
	 /AWz45HsFdUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A8E9904C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580605368.3064.15041381861557321686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d2f16e78eb984dab482092e645cd7c9652d5401d63bd8f834bd59bec489e9a
Date: Fri, 10 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775806053
