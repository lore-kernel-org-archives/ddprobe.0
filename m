Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F795286D4E
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770524034; cv=none; b=U+CvfdxRLplp1p2lSWIjhpGsA6C8YgVYJTM7bK/7GLHyqDgZZB8x9WHi9JmYJ9QTkhdzYcg2Cd8yBipZ/3BhDHMKdus2q3Qvw2mZRSEMhwEFJuKbx9j5Rv1W2zes//Y5S6oBH3ZqSpLXzEH62WTCCnw0CqHkzKNN3+6l/74hYgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770524034; c=relaxed/simple;
	bh=CNQ0AhztQ2oldXhDwIm60r+iMs2pU7iEqOw9FAyZlCg=;
	h=To:Subject:From:Message-Id:Date; b=YOKVTd+q3E+fyglRKCLYZNc66cuxmUwRe17NvQs7/gMVuW6OChDPBvZKguZAi7TJaD9T6SgImhMcg25IkbeKuqWGKQk4u6qYe0sG+MqZ8oMxuWw2g3CskUZzImqKFflDGdcDyYg/+2hGiCVIMMRIZgPwcCL/wSnmvgK4O8PkFH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T55Ve5yH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T55Ve5yH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF05C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770524033;
	bh=CNQ0AhztQ2oldXhDwIm60r+iMs2pU7iEqOw9FAyZlCg=;
	h=To:Subject:From:Date:From;
	b=T55Ve5yHXn39BcXaKkV9L8Ae1bdptVNz1Zlr9oJ+8ujGgJzJd46ZYLvGFlr+hMtQj
	 v4RUntjVF4jW+KBGfBszI+mePkA1+s4eh7C7vQOMy1Y5R4wf5rYmcNuF+OE95zT0fB
	 s7DjwWgqPbo13RKCsYV/VxnmuJOAM/i/xUkyJB3PaE+Jw95ow7hQpkX39ozFCitho8
	 dexVyjIPKT5SoHTIpOLW3uuSXSx8IVlgsg1ptjdtjTzZmG73zWlucAcsr5HW0/gI53
	 8EftD0xeApRVwS2+AzXqmi908zY29+Z8FeOOMh+va8SqJlokgYE0Kascd3f+KcdAjG
	 r4t8CMNnJcMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95364EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052403358.14327.464993622581453489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0caeacabf6346855dc207f0c333dbf18ae9898639f876a3be36af0130d0874
Date: Sun, 08 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770524033
