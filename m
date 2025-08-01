Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDDA22A80D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754065194; cv=none; b=XJuO8k4jGQliP8sSclTcXuB/BHuOuUVILo4op2f1LU63JRCP7Or42dUMy3alnToh6UOCj2ah429Z9ezg7/95Ox24/9TqFdqXSVaFduDZfjoRFednQkiBbQMaFU+ZQlzuNHwe6qYDdmwbRR2Ba2Qcmt04u8ieU5GPwQsFxr6Q32M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754065194; c=relaxed/simple;
	bh=4jUS10o7wj9HJxmbvPdux4nenHagoypzAn74wpmjVC8=;
	h=To:Subject:From:Message-Id:Date; b=odmF+bPfDGYEDmAIX0fQuhT4xDiZYgMIN4LjXLkEx+Ia71SgT8nQNRbuAY29KOCyQDf8+AWBZ3zAOjnUpYRo34xQQgKOag0qj1bQ5uZKXc+AOH5PURSI/SojV/ROKChVGq4kSrbvYij3uZ+rO0lr4LCySL/tsZADEV7q5bvz2So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX/Np46w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX/Np46w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754065193;
	bh=4jUS10o7wj9HJxmbvPdux4nenHagoypzAn74wpmjVC8=;
	h=To:Subject:From:Date:From;
	b=CX/Np46wL6mPBacO1t0ypCVS1SDYExSjfe1cUAC4kr4jY/1ZM5g3Yr0ByFWqnhQ2z
	 D/8Lo65wDPDgwISaYjXcuonkal43uyP1fOSLWUY8xX3sJPuds9XQX6RyD/PWbZwqFw
	 h8+gsul7RxwRSvonjiNdikZOI/L6ciyWs67OBhYgKknYLym+2IAlCAxXlP7rMnh+ED
	 bo3AKpcuSR98rU2yaHrxG+NZW6VvVhUDlsJ2ivbZz1rMco8JTEPAKAFnfxhZzIXj1N
	 S4ygbnfSRJgkRtRKaeCa3/Nq0V8KEISTFRUlw1CoaVS9vlCUxS4vAbXGuAOlMg/yHa
	 RiueB+0lx0u6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90490C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406519358.23951.971059228496830218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8e929e4a6624f6ad6e88ef0d3356826b9404bb74c66e7aadcb20509efe55ee
Date: Fri, 01 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754065193
