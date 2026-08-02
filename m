Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413B6356772
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785648634; cv=none; b=RNy/VmlmsxsQsY+lVSxIgA6U0MGkiaNK8ixeq3cCW6ZwdUfep7GDLVCjpcZe/4dcT0uggyy45LUBXbS5uzViWR7byzZZBZlCcyaGrU3/DwaTo9K6AiRR52wBGMMVUulv+8Xa1ocXmWpKLAt7QU9NCss/FLd4CsTa+RZub+mcD3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785648634; c=relaxed/simple;
	bh=0bdk7YPL2ltgD5pWg3deX3f1qwgsLcuiAOtlmjLRALc=;
	h=To:Subject:From:Message-Id:Date; b=tRO84ATB5a4IkYOXkqGNL2sNqqUcotQT8ZIXx6ybrLPqKnYY/5ZGlKw9X/MmxP8bXVuDpMeLMaOJvL27G7xef5El0V5rYKXfhponCy+5+/mJwRsezUp5X/SapCaSptUeSbS7pNpashQJvgBdjEN35JLWRozzBtTeGJK4Kvp9jF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrCSQOcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrCSQOcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF59C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785648633;
	bh=0bdk7YPL2ltgD5pWg3deX3f1qwgsLcuiAOtlmjLRALc=;
	h=To:Subject:From:Date:From;
	b=YrCSQOcjHKrYx2l1+TtKOPW8lpcyM89HoW98UnxJvvc9Q5Df5hlHxjd40qVKDdkMu
	 OaxXC2K3NUAQMBEayGrgRFFe2vsZhs7xkZZZF+ELPv5p2GUK5pFa3kbpWd5r+3Cpyt
	 cKb/SpZc3DAFGG7QhMWNiGw/RWv93pzHu9sN2Me3ICaj77sw5cQS2g2sZbkSWRCrXn
	 iYRMM2dUb29dayEtx3rKQiXoNwIytjt04VJVmwvsKxHJjAcDUeOlKa35PAKlpDSBNE
	 ALygiHhZgNgcmSFUbYFOvKIQ3THr37XTCEbdVKlFkpgXOxYVFv8Q+w58+SeeGt1LGq
	 +puQ4DDCBntFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FBC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564863368.18047.13063640536672839771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165641e0e6a2cbb9179588fc8ff1bf29a32f8790add53e3a9d9d8b66b12749d4
Date: Sun, 02 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785648633
