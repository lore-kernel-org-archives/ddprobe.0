Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114063382E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767969834; cv=none; b=hOwLd5KV/maF95vJ/3okQJTntcfPvLkPs/I9kbSF9w1h4PClD7N8CkT+k5y612J9+YQ10VIC6zYZ9slOD8QNd0cAN+CjVMV3hBpJonO9hyT0cXaekz+Wnk0klydcgqdeldiFspx+B/OLpJxcRifZ4o1Bl0u/qWR2nUyw5l0KAgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767969834; c=relaxed/simple;
	bh=ZjZtY8psZ2bz987NhqfKetX8+quSqpqV3PwZCaSGMVU=;
	h=To:Subject:From:Message-Id:Date; b=e5HsgA99m6r3AcEspm4OlJvT+Tbc/W+peW/MA7OAPaDnuxcHF2tOCYyvqCIyJjDLxhll/XLV94NyxML7IHLsUMLcRT791UpmR6U6y53V7OtZ/llsg6di14m44RtmEhoA6OtmEMaOwvX7fwzemQEmFbFLXCOnB3hjArxKBioQdJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPBPn549; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPBPn549"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC64C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767969833;
	bh=ZjZtY8psZ2bz987NhqfKetX8+quSqpqV3PwZCaSGMVU=;
	h=To:Subject:From:Date:From;
	b=JPBPn549foN0EjbU+fjSw791NasVZNTk1KDLwbzliQYAH6H0AMm3VaGN3Q2+Eecbe
	 +E3/RTzlV9VCQBCR8NGUlzhBoxTnwoGwDjqMWc9fqcsKuarnr+XqaDm1d5S3wcG0NH
	 1cuJJQRyxDZmEtylMPYdBpvFUjzqFRRKuaymV0RUjgOtPqFk9hTjb8DE5lCfl85Rz4
	 +47oWPkjwEig2FsKT8ePBmsvpOvvMAFHi7U1lVwZjCA1PIgtQ+CHUppvxe1au1eino
	 aFLChkgXC66tzmjAvQF+IswknbJLmazQqFPomyBm7eg4Mtke8CAEjIB3sBH3UD+c+x
	 0nLGwhjrVJ7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C7D1A63C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796983357.31145.10500737191711996895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26851fdc06e555c8a59201d273e880ad3a8b600ec024e612fb84aca6f2ad9948
Date: Fri, 09 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767969833
