Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC1A345EA8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790227234; cv=none; b=pUAXZpnExmc39miIKqb+0BFEf+PIGFlEx1dOMTZZeiu7N60wl8fBl4JhXcA2G5USBi7GC5Tz7wyJjc9tFP1iH/EHfxrXpA66czfDkp45UMpjR+kbW2rcIH2M0X7To1IW7nmjAGbWU8eGow2GMJIx2ulqvAy5ljdHsmH8b+38Z54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790227234; c=relaxed/simple;
	bh=v/cYYRMVUlgfAsKEEddb26aDkfw84ol50xL988cetF8=;
	h=To:Subject:From:Message-Id:Date; b=M93L1qT9q41AhUxnCoG7T7X7fOqHUzAADBlhyv7XuMeiyckXMJYC1jNU89QlAsyq12bPcduBnjIZuP5BLGHsWbGK6diTEDPVpFiKY3CR7utfsyRQnONp7g7DJ7I8uSKyCLDFUKToVdzcI9youJjzXnRR2AVGqsa1r3ia6t5XkAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnqUV30O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnqUV30O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790227233;
	bh=v/cYYRMVUlgfAsKEEddb26aDkfw84ol50xL988cetF8=;
	h=To:Subject:From:Date:From;
	b=dnqUV30O/sJpzo7pV52eoF3ZuLhsZd0eFeftPbI2RRZ29IbC7z/AFBeSz1hSFzoNX
	 slv2w6ZpAjU5WAULTvaZARQotpeC39hJgXigJaC6oucxBop3mO8S2TloYSfLVxOCQU
	 8ufuhk0T3eMAUPRQocejA71teoojsG0/OHDpL5vuwZOsyYnWmJTNfn0SH/R5xAK2Qo
	 t8Emxi7D/UYQRbLUDIsVBX+8lX5pccwat3dkESlHN/fbiUHMKybumQetuoUO8ut+a/
	 ScjTQysCrMgqHBFvUpTyOBmIFnnVvHsr28M621tScmLmWMYQM4HCJReuz/+Aq3Bkdl
	 /LGGMlIde/5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA490C982FD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022723368.20791.18222528276460606390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89447f348106b8e3630b8a5e1d0712c968b101ab7d5aa5c495224ab0c9f70dc5
Date: Thu, 24 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790227233
