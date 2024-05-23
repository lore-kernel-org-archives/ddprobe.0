Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091058174C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468803; cv=none; b=MwQutvIC+FlV1zYoQOPCotpRddmhtTFbgeHKlW44oq2o9bXMpkslvLdp3uZ7syB6YMOzOiZqUA2xWlAqP51diHAsUcGnFudHG4484A8FHXtxtWUG/DelpN5k08dGZqr3PIRvCvHDAOHqn2CWStTl7uoI3n32RM59n2uGLehzD2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468803; c=relaxed/simple;
	bh=tteke5P5Jswt4GVvOFtsx/pkxrta3yFIt/JFdvL/l+Q=;
	h=To:Subject:From:Message-Id:Date; b=lrmClUYGQ+WazvWKbG4J7FpxQptIxrzRT6WMpg+PYNQuqBC6uSuVN49qFLChKx459JFpqeaSoRyuN0afyIXQ6XJ064Hhgnoc/r08+SxWYqDxba6MU5ynfkiNUABx1k4f0CcH4PKiQJrQ6LOA6qPsJ9IKB0lwio48OjGltLjQIzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHCDFx+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHCDFx+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD399C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716468802;
	bh=tteke5P5Jswt4GVvOFtsx/pkxrta3yFIt/JFdvL/l+Q=;
	h=To:Subject:From:Date:From;
	b=hHCDFx+kvmIsUUwQUaoeIbbHIkmtTkMOtyOSZrXbRSKlIrYUiNdtARI7A+v/C4lOe
	 hJhY4WDLuimxRMbehFFm088F0o+mqlqZfefaLIV1C+LWXiuabEuF5etk/UbH6zzkEV
	 4z6hwiFqyJyzZMVIV4ATbchdpLud08gRpdj2OuI2tuQyz2al90uMfOViDbiFhkfthV
	 SVaPHvDeOg1qEFyrivP3ml0i+SQgS1xJSLXH7in4XNuJl4lrtSF+r/NVk/RKx0EkU2
	 japb4pz4DX9gWewrbTdvOxqmyL9+nHQyrPs9kPQAB/iTTsk1ZM0SpZ6Q9d5jIfRYBf
	 hKhTt1WFEM7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9B4C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646880283.21003.17907065176504227377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda1751bfb0ef5996119cb5899512852500a61a0a8c2a7d9e646bb0afcff666f
Date: Thu, 23 May 2024 12:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716468802
