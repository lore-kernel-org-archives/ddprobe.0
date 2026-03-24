Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1295035F190
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774367694; cv=none; b=LQlvBkaKajA8AuMkeicKnGangdnxCc3flXn3pCk5/BJNV8xuxmtQdRCY9/3UrkZrhZ82v47mvS7HCTwWZMoGcGXpE+aOKGy+iK7yzMv8V5SZZx2t9KSbA+N8gGcqk0LJlx8DH4KIqrpeC7Z3IjWfo1Dr228cdhRYZ3//zzDr1UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774367694; c=relaxed/simple;
	bh=h6z3OoWTH67q+ZC8JW+ALDFoNSP54w67wPNNceMcvow=;
	h=To:Subject:From:Message-Id:Date; b=YE/vU57jmIjBaK/YRBMRQ8MUS7rAyGsoU8buqGt+sXkwg65PXhxHYK1QAZ1QVbyThxdX5pVV+loeNc1bf/J9FMlpe3ddxXLV8vTIPNO/N2OUlUxKXnBUKdKm+VHnGooG2ApcfFjqZCz1P6FJvub7XcqHQmPeKfGYcrOCT+Somcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6/sp9aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6/sp9aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8CC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774367693;
	bh=h6z3OoWTH67q+ZC8JW+ALDFoNSP54w67wPNNceMcvow=;
	h=To:Subject:From:Date:From;
	b=O6/sp9aKaTSrfL6EG6h84m+J1ptAjQQre8Q4jhGoDj2cdKneZpSnzpGYq6ERRVg6I
	 8ZJUvNQwLEDwaGIQbpohxINAOl6gaZoo2+LukZfLlm52Kaoub6qi3Dta32xHoaJAlt
	 uw+u39ZDmXnhLtybp+zFRZ/j7bwYG3XefNQwdiWmRVenwOJvnfDyivF562/u4rBtpY
	 v4iPeKipJBL1x6FhCT3lCEnbXVmYp/cihEdoIGv8TVW/MLDucchLzSU5pmrhy2iBzF
	 o4YQe1zpsKkxH1gpdlfG8evDGCACTSGcRoh2rHlBe6WZ30rMupC30YY5RsGzDrIcec
	 Qlbde/grxljFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91321F54ACF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436769358.7225.4916261952469617992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b344a8bda17931cf1eadf952d6bf26cb9a2372c038ed538c6540b7c5d8f85ceb
Date: Tue, 24 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774367693
