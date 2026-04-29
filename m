Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3104C35F180
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777463254; cv=none; b=I8mIL0v+GCE7jZuFliPXCN3wBnwOFIxu2fJXp7VKoCBW8k4/Zp4Ndyb6bZlXnhM1NtGmAHiSwW/r2IB0iFAQl6+ic7zR40tSebdKbOALeocTCR5s4U5v9+uvu0N4fH9gQLReYt7MWjDKlklh+RpzxPqJVC7n4YfenAWzcpgKVqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777463254; c=relaxed/simple;
	bh=10O2pBdbNIadiAWo+gqSGdUGOz2ljSqK0MrAt1Kbk1U=;
	h=To:Subject:From:Message-Id:Date; b=FNNgpc7pB84UrHYHY/zbVSknxrwc9yIU8Vj4GTTS1DTrEgEC1GB17il9CEbs4kBCCllT/LuJN42AhSBsJU0R2fYSpsHxDiHKr54eufJUOimyHFJHxx8yFc2vHSE/Ko03Iz1DYjnswoGcGz6JWrEZrT55o4yHkjVQWbR1QZdyz9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxzw0/Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxzw0/Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D3BC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777463253;
	bh=10O2pBdbNIadiAWo+gqSGdUGOz2ljSqK0MrAt1Kbk1U=;
	h=To:Subject:From:Date:From;
	b=Uxzw0/IevsgZJswhJBB8xGxqgk+NFSRLur8cyqJW+skAiuIO7X3W0uPccf6JTeoyF
	 C2nb9tUqCLApCVHEKhYvubLwxfomjZpbitbnjHenJp54oPzdq9+2vE7Y5bOY7D1Jmj
	 Q74g5MaZpyb0BXluTHcFwQBpq/E+FaI/0t0eufs0AkCb61cKgaowbMLq1MAPtb99G8
	 e/tkLX/1raprHv3YIaV1FORTnEyRdNA5vGUpcPoYe0bejw4TrC6UA/lE/1bC1yQ0w/
	 LUo+h8NcCzyRp3bJae0wWLPNluIjwnUq1ebRfCHOqYBRDN/Cn5CB4rdjJN2eM6V0v5
	 CGUYM08FFwxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8884CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746325374.32596.13632912412669461261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb893b96d38453f9e7e78ef301ffdec5ffe2241e318e66193c1f88c2c8e46a78
Date: Wed, 29 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777463253
