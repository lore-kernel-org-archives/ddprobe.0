Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C271FC4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790245834; cv=none; b=hNP5SbUWb0yzVYbHaqxk6c9rcqmnUKZ/CraXoQahnUgYmEud/0ZiBrtYt3MYdgkD/co5xThAs8in1Ez4ccPGtrVv0AHe/jwzydxcRTO2vJZav7cotnpeWFgoEA6OffkA1FWjZ9+7qSNYcy4OcalKVf58mrvFyWgDf9NZkYOWgDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790245834; c=relaxed/simple;
	bh=pHAg2WPI2c52YrIbmHiO5Y8ZWRPpy7VamkrAx4doKxo=;
	h=To:Subject:From:Message-Id:Date; b=XPF0V0ntVzKhs0u2xf2cTYJIfBbEYqu59c4mljZDYACeLHBPgaZSlXMhsKTq0oxzzjdP7Ewfk91x2UalFA0S9PJJ9BIyo0X/D4780w1HkJxgdWRBi7L1ynk1idRgCfGrUXdN1ro20ACQvZEFk7sW1LlolCPBNOcKGyJys5yBQmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtTZITxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtTZITxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BDDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790245833;
	bh=pHAg2WPI2c52YrIbmHiO5Y8ZWRPpy7VamkrAx4doKxo=;
	h=To:Subject:From:Date:From;
	b=JtTZITxNJFCrcFRS57cDff6kC2YdNf7YfvpJnLklkMVbRXEX2idpEsfG7sxi+bRHY
	 SoUy5Hpxo6A1CzMtH3NISEDMreuxASvusvUrLdPfUFHNbVDLubpO3gjqEjr/AcAz1H
	 TZl2is8JuDa84oFu2F5YozgjYhiVKmZnI/arbnqB40XDB0s0ZmxrvD5AVmAZYM956t
	 LZyfjlETDkMg2OhiVRfmMoa5Q0I+GLz42MmYQwUKEiB8z7Ml5mbD513hNPeZHxB6K9
	 MJ6kLgDwW3WXdqsbJSaON3p9krK3tj7WYLOTzY5MeFMz2JQ0vE3dqC3bTsmoorY0iE
	 CvmgvzmvCnb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E6C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024583370.26845.8658120326865928199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46502262f206e59cbe1b39acad6015ddfbf46ad418b6a9a0f472c3024542a805
Date: Thu, 24 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790245833
