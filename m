Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4449A4A1A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738046754; cv=none; b=P0enSea6HNlMNeOOpBeC3+tL/5ANO+rV8ucEagx6W8mJJRiiooLpy1YEqdS65bOdTworPLyZoMZAOo3b/sNyRQvIi4OjTM5Za2UwGWQ8M77coNL3iDYixy7RqA3MHCYZSrj9M2OTI2R1EZEPpxmQmNYDrZ4QzCE3gJklOPfcgxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738046754; c=relaxed/simple;
	bh=d/sXQu9LoSwetI08un/PP/NxeoehHbL36vStjbmtPII=;
	h=To:Subject:From:Message-Id:Date; b=PSc4plW/9y3zX3rF7/At5qP7xqdhO1ZA0409PEI/7BPAHYUOxS4c+AmSjHR4nQbzfjqv1BDQOHdjiyDExiH8FC6UdVeoSPLgA8secHqDZP6UJuSkEqYW1YIiApXGDI/E1QVMHsG3swK5H33AuHAVrR8VeJpu7IlsyHJnytb6EUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7Qz0FZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7Qz0FZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B18C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738046753;
	bh=d/sXQu9LoSwetI08un/PP/NxeoehHbL36vStjbmtPII=;
	h=To:Subject:From:Date:From;
	b=A7Qz0FZYJg17zgwqPVgEdcLS96H1U4n+HFCMibbLeVu3km9sLGIh1s+3Un8MOSxN6
	 q79Ly928N+0gQAHk6KMn3Chyqb1761y2wcqE7jQn1Gdy+eCzGZLKdW0JpdXRdKMCZp
	 f/Qiu/KafPH5z2dB0vTnL5YTHjJjvfo1fyBceY/WO3J/d+UzXe8bXn8WstB+pp2hvK
	 wFxJiUhsd+Qn8miTSaA4Cj+aY1OBJcU9OyL0BKWO5BM0vupdhosKXdpWOKPYzVH1jJ
	 DPEOUZ3NhOix8SptSNwlxhQNzj0fGZbfTfAq3yXwfJJWYAmkmh0yZ1CQZ8lf16W5hc
	 oaWKctFJafspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C2C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804675359.24884.1665229498510353011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d59b4200b905e7115591f407628fee4479d5d42295f615fbd4e0e85ba4d1f2
Date: Tue, 28 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738046753
