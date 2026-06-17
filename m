Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BF13451CF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781721994; cv=none; b=tzOipI4MFmKASvupT5qFOKRTH4+r+DvGFCXl7pqRpW9QqXNI+9cGgXq3prnxVRVK5c0lNGX8m0WpbVstfAqm06jME2bT1ic/BTDaQANfVFF8WjXh1O2webGGhI9aWinAo1PNv7gLMrNozNuT1oGlaMc7FdvGgPshh8dYFizuyMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781721994; c=relaxed/simple;
	bh=NFQru6BdY07Q/Vuiulp/ByxKp1HbEnWfT6qDq1tzl50=;
	h=To:Subject:From:Message-Id:Date; b=ENH/UJE7WeQ7EBTBNxVqApsCcoLL1o+9lMVdAEorsr3KvEUriBfcD8vOgfqP/WMxv3ch+Lf1hvrNd0v6Zh67Uzq4clj/XdIJgfuw0FNR0/YIfsn3gmKvfgm0fg5lbZklQHM0SHRwd8qSobZuRMPI6pDXYzcT9abjaW0uwmyDnWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd/tKMj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd/tKMj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAAAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781721993;
	bh=NFQru6BdY07Q/Vuiulp/ByxKp1HbEnWfT6qDq1tzl50=;
	h=To:Subject:From:Date:From;
	b=Fd/tKMj5MK6KRVEsKfkm+k5w2fNkIE2FLJcBnRsNBpmik7lEm+hVP39cdmSn7YZNb
	 D4xLep7mgnJ29A9b8GsrHAC8UdBxit2lSauE1R08TPDH6LsJDwEmH+cVik9Ouk0By8
	 7czsJPdfCq3tb35XQcRSMAYUQcQO4GtB9Im1rUif1Gl2Kxm07y5JA8I2wYRJDHmiox
	 MhNrcyLYO1n+XnmKtvh4XVaYZJpn8gQ+DcZm1iuCatoc6ghaqQ74EsJylWAf1gnooE
	 tuY6yInx9X+aMMx0YqwZSjsgyUTiMAE56k2ts0fZ5o2I5YXR6VL9dCNiTYwiRPIfsH
	 S/mgjSLTR9etg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F6CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172199369.20456.1724121551634037759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bcc0d8b32b312f8d874d3f00ff10339d528c0917b77a39334517776502ea65
Date: Wed, 17 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781721993
