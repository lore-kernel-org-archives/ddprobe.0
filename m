Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D051F19A
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715740343; cv=none; b=MP6RuhqGeS4WmJTTfi6oqznudPXrI+fFoTT08OHTu0+H0rVQkn5WK+W4sQZi/QG4ISA25PeGXfV9yZNz6hJG8RiSwEeCAmx7FwIM9TZsnfFI78bPTgD9zu4AnCOSfpGuvziweu/idixB30WDot6j8MsLkALDCg7rYTpsGOf+EnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715740343; c=relaxed/simple;
	bh=VeiV436xku2BgT6RpHBjbVUvFTU4uZTZQvCKzijHS0k=;
	h=To:Subject:From:Message-Id:Date; b=DOa/2a7mtvMOZ1BTiqemTvdNxw1ml6D3JKzSvonz1x9Nm/YOYkp4mB2dtCNH6yxn6TBAJRQExvTIEzV9kfRFPLCLOPIHZyxCd6/7BtnhB8PdWeIusiDSGgrDB8xmT7zW4yAF026wptzxpddKEZnIE69bW2+GLzE8f2aQUp26Vi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+0RTk5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+0RTk5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AB7C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715740342;
	bh=VeiV436xku2BgT6RpHBjbVUvFTU4uZTZQvCKzijHS0k=;
	h=To:Subject:From:Date:From;
	b=G+0RTk5f81S4rPHyTvWaxk6QcR7Th/l1hjLTdPggo/42ZWF2YFwZPKik175njrJiN
	 nYLoFGvdLY2/YEcSgaCBpjsK1qi79L/a5vc7V72nLlNly0rhHjwMVSst/CJN5LLdZx
	 1LLbWRivRoJXugjJfP2a3KjD7cU5/vEHiViy9JrqsmjKbobwOgC6qpIbm9Pj8+jr4b
	 Be6AYkUCkkozdjlQYKLT1dt22sfMIZJ9T00RC2OzissdBlsk9jmN8A5sxUjdqd3NHX
	 7MTleO1kAeBoFeXPnKlVRAZ6C/T6lq8+2BZxHa5S82gZ/yBR3WWa5rsTpSjCJDnZxb
	 L6JbktU3r/mOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3FB5C04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574034283.23679.14063604058309993820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4a8d6cf47f0862680898f9bc464e6b5e704166a57fc849da1a363ee46ac96c
Date: Wed, 15 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715740342
