Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF089B672
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754120993; cv=none; b=Qedze23PaPPMMFONYkECqAn+RDCB7aKT3lTMAihbrPojKqm+VX0oJRwljDWZ7rms07iI9YhihSk1fFR7ruX49kRPlh/NtTzyzKWLuCJ4DgEk7FtmI3ZJX7aWxD9AtMFscutOnY+qEWSpybYeoH/TQnZaCF9vXiXUMFv2o20TFbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754120993; c=relaxed/simple;
	bh=1TEOoigjMHXpaPk4Y2tcM2tBBbHNnflwxe40ZsMkAKk=;
	h=To:Subject:From:Message-Id:Date; b=oiCS3JBstvl0xqwzd8ccMTjf6EdZVjowh1NwvPWijfzvdPYoAkKKxzjnx9fZ4nsU38pFT1S3fnGaIiZSFRl7j4sUEhZ03hr8FO3Nv04Kc20XBSjzP+2+oXlxIyudFgYsM8olsWOwVLOShLHZ295pCjLURSOIWgYfF5ySMleFZF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVS/5Zjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVS/5Zjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754120993;
	bh=1TEOoigjMHXpaPk4Y2tcM2tBBbHNnflwxe40ZsMkAKk=;
	h=To:Subject:From:Date:From;
	b=fVS/5ZjsWz2IYSJuO2qZ+3vhz14/zZvxThpFLW8N7XrNUEwU044IDMudyXqTczzLA
	 FX2J7He7r9YQ6klDMv1/NMy6CnvkiCtKBOwieTDe2N31YkcS1D1n136kImmLtg/gVW
	 ytDqm0PuXLIcFXz+yd+/Q1JGkiP5VccG+32EsVR5sCc5CtBEjxPqXmy6yowZiVgNV4
	 KY2qrboAZLmK+z4cIQeOrlcnynUbSwmibYqpdCzBRRdTeHVmq2/JdptJkK3nSWtXAp
	 9+Sbke4Y+8BSvoawCdSS8JhQ5kl6FXRkRHyO/2tZZK+z0cIseF7MNoWAlJpHsj/n8O
	 0mUsmTLwItQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F381C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412099357.26450.13556808005166007872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcd510210ea6b80f44dadb202b36e531d1b8d3e26b50febea010c166bca994d
Date: Sat, 02 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754120993
