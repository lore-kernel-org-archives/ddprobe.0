Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C15B5111AE
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790691034; cv=none; b=ayMUp2Ued1L9p7gUUGaZ7n/31TsnIk/OtugRsFBntHUnDsO/j7VBozQNU53qyEiGS2X8dXFPy40Wb/NcHteA1iPbWLkySLi8+CdB5OAHejEMuztcd/E+cMiqpalCJKRi1bTznOhWdn5M37bA7Yc9/kemFaKGhhsenCJhgUsGRZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790691034; c=relaxed/simple;
	bh=trmuD0zysJJLpb/lMVqbesh+TBXN32J7KwWxr115Iso=;
	h=To:Subject:From:Message-Id:Date; b=ZACg6fD7QOq1r+4m3SAHTFTauO/agQOCOQRmgjnW8OJQa/m4BbHCxOI62+PYeDaW3u2TS4sFwrVAtZ6z3WIoF294xWqZZwbC+AuNZ2UZllTccBKdfuzkPsecrNl9Cp1eWNRXFRYpAKKD1Bo9dLfHKemN3ycxSR4IgOXmRmjcsXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THlXhsKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THlXhsKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0C6C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790691033;
	bh=trmuD0zysJJLpb/lMVqbesh+TBXN32J7KwWxr115Iso=;
	h=To:Subject:From:Date:From;
	b=THlXhsKrTbw4wa53lIODek1W2tSVOX4REBiwZ11NuIVUBiiJ/jsb3EUAVJrRKu7SQ
	 BKc3lbk/bT7YxAQom7WUAZOnYWRau53Nd33UgLk55wIFoTfkBTx1sZ20++kwA7H81G
	 AuUk7/EEGw0jjjgbu/qAbqVKfqAS9zHh8Oo7qDLJxfaKx9nm3+Lq6cTcTkW1ReIM9P
	 Xa7QSNQUO4VUvt5G1ff+OGENh421LMhrC2qZo9sIyox5jAfhJ2UL1GbrKyCobuXbU4
	 D/Y2PkSPZhbsyC5ER0aAGarUmmwgJTsgWPXGkCxdqdXE9Kdi3NC/eTNOENAv767Gbv
	 +cX63Dpx6ZnaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC044CA5FAE
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069103369.20754.7553064869794496281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473bfe6f4ef837bfb8f041d653d64680e0595c4813dde772a8bbcdfc2bf07353
Date: Tue, 29 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790691033
