Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C946B8C11
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737087953; cv=none; b=hhQtTwiMiDEB1/8jMsCGWHMLBRECcadJlFpeL7hBSMEThz7BiLM8nsbXTbb/sbmJ9jIDf01aEZwO1UppFB564zv7M2uCTBYJ9kJUIW5CVOLcoWpCzaP0h/RV7FeLgOKB6oJr7mo3H1dFH7FjKIm/V4fPBVXabwhuG7ZixR7Hfdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737087953; c=relaxed/simple;
	bh=RCXEbNSNy8YjMHCKkNt5WSFZ1dRBja9HWNi+wBmyGqY=;
	h=To:Subject:From:Message-Id:Date; b=Li+OBv7ssDSjgH00zuC0AJPPnYQhljIPxQG7YT1LLBvZNAlaRFr4A0UDzllDbhV1ZcLfjjcFi2LKJR0Q6Ydq9SDnt4wWybFLoEWnGLm4sIV+C5+18tdE3tmDmEs5lA9dgjifXO7ebg43i8AH9AN9NV0r024qU31MA8V5zTOM5DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko5/m3ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko5/m3ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56DEC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737087953;
	bh=RCXEbNSNy8YjMHCKkNt5WSFZ1dRBja9HWNi+wBmyGqY=;
	h=To:Subject:From:Date:From;
	b=ko5/m3ti4E9vYq08Xu6BemmGPtM3H08H0XV6cQHmUzw6dTmcm/9qtjdpuiJ4UW7Ym
	 HnnZArZci/xOs38OZv/vWf7YnezwIqFyq3uSu2/X5UhW2hAHZJVaw2+ZBjN8mWFbIe
	 uPZSYVys0emN3KpnMhyvqdksT413OkMrBk99PgdsU+jYYNoz0U8D+VaCRW747xDwr9
	 O32invBn5LBj5YLcR+pIeXI2LZj7k1CudufOP82yJBravebbgN99D1gRTRdIQAFfgv
	 N6TGE0VGOGX/fHHd2sFS9HB/bRKRl7qF+xwvogwlOlY3WFXjUqmN3hGSnwG7GOtFLU
	 tATQs/kx2elzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E52C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708795359.20782.17993757823580633161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ec8c661e0f3dd0ab5b744af583717240deb7dfbedf4849ecf8e28bab4ecc23
Date: Fri, 17 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737087953
