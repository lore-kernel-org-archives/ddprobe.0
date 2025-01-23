Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A38381AF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737632154; cv=none; b=AxVl1BuBrRNyYqFHOjW1qUMo/3l4/6+70nRcHBni27G9HEH0a8WtyF8F9P9F4b4BcWfDxQVYXMPqhEGTTgoSRaheiGNhA4jR1xDPU2G0qnw5vUoGlhCmwqQLSccgB7OSBz6s/JOAOyMqWPTRMPdVdm7c/ngqIYn+yFBJsskiaJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737632154; c=relaxed/simple;
	bh=RQuGfdJQFONRIeWHkUSiu8CxW7+Hd4sR7WvqIgSdNsc=;
	h=To:Subject:From:Message-Id:Date; b=WgsZfCv1Xd6HWFWNxJIWmICn9qN1M2Oj0z28NRMTSiQZvpiI1exhqpRXY+vXjXH/kDNhs4h+uEGa1pygbZCZkVJp6RaWtSJAiSXhW/3UBPiX/yYVUNAhEV/uTVOGzXy0BK9jfCujUii57trdosk8qet5cGWLmf259VgLtwGmtoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw1SR9oB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw1SR9oB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1036C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737632153;
	bh=RQuGfdJQFONRIeWHkUSiu8CxW7+Hd4sR7WvqIgSdNsc=;
	h=To:Subject:From:Date:From;
	b=gw1SR9oBE4zAy2VtRDr3rBAdnbQ+PoJ0pIHoLDcp7PzHY7XQHIoMI9H31DcrgO/IT
	 ZtnwPaoj0Efe5ggA4zNm26Ygtu6oeuZXTywAWo+oYfRmKWXhFlUU/ktnpUzs028yYr
	 E+huKMD0uMD6Uo+A27/FitUgR1iR6vwrKa+M6GivbjqkCQJWKUOy6D1iB/BGyDRTox
	 UdzpAgVgE6Vc/RO8ii26SV42wasxtmhxblLlLFODsBGZBEwzTuQOr6z3fRB6qLNnxp
	 BxZOednyXf0nWBngR+T5ZLr+OXe24wUjsSStmYxjDm3VJslHZea+ctB5WCD0EOL1kl
	 z48QWEVN5VY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A87C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763215358.21212.5773652258356059060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532cef8c836c2ba870ccccb1f3eeb0cbb780ecfee5af011402747688eaa2e886
Date: Thu, 23 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737632153
