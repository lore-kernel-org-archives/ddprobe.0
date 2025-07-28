Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8E22F56
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753663196; cv=none; b=SQf3kYkyaZtlXCHHW5mdM9UlW8ytmbQMW0u/lx6w+p+LlF2JxiSqkmmOq91pn5bRMKlOV1jbQFFe1sbWBM6u0nK+i+3PjB1gTPNL5gBlITE07ou+B1dlyexiD/l0T3l/3jLapO3DbS/4Mz5MTSprKckfBNwcJ+hhvTwHrsEBU0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753663196; c=relaxed/simple;
	bh=QZB5piyoENY+R5oMKk1haR5KDUuVVkx+uCZCrXIer3A=;
	h=To:Subject:From:Message-Id:Date; b=TBX5ioJz+rspuApEncYPkPlF98EieZVKYWe/m5u0VjreUp80AsIoI5ts8M4h6EH/u0dSO/9ezItc88SXRGEyswIz3Qxd9C7ng6QYR/k41leIjzPR9yIBCrGj0Te71vuJcA3kZO8dVSzwLu6dRxBTirt3ht48pimm3inS2au4mJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrx1metR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrx1metR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF94C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753663193;
	bh=QZB5piyoENY+R5oMKk1haR5KDUuVVkx+uCZCrXIer3A=;
	h=To:Subject:From:Date:From;
	b=qrx1metRpLkvt1RQAqfsJmlKM+UBGD3iZzugPG/hVL+qJL6pCkTDRVChjO6X123xp
	 bvymjSOavtL+kY5O4J6szsVGyj585ZZ7MmtKSurbClMB/aIt2foGJrW5tYW3VNPvL1
	 cJ4hbQeYSyzUDzrs7oqkeAMVFk3BhEWDvGeJV6S2OwBNUHQC2SS738KNDENFCbExxa
	 c/ZSbZXfnJ6o1VFEmpRcLOCNlMNRoxoQP1tSY9fPM/+NYcHMkK8hu7ioYC+9tiI+Q7
	 opUa8X44cEuWdTru0VaGD0MTvwGV1xClFtwdQxx+0YA5N23dt2yn6EASWjZsyqNjT+
	 dSuSH5MCShm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD1CC87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366319360.32724.13559136647278699097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813dd78da98ffce9166ff8ab1603e7271eebe7744728f4889bf2a0b04fd403dc
Date: Mon, 28 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753663193
