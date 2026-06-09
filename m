Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512CF270ED7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780981474; cv=none; b=NSh3MQ+LdztCGJsktWPIi38o7egMgSYuU4GhBmDbeA7YCcX9SE9OXUQGgyY676a1+Vqix+9tE1f+/owl0J+PIIK5Oi9FohSB6Gz9TgbjMXBtE4DfhqjX95zY+IFBo1RvJwyo/yeR1l1kP89+bOCqAV2zmGd0iVTbGENcaGL03n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780981474; c=relaxed/simple;
	bh=R66ZtMu/PxjVR1ZBbQA9pgH3+JA/NrK+O/OhyOtzc/A=;
	h=To:Subject:From:Message-Id:Date; b=AaOBALUuuFTOUOEsTzJdm2SAFWuM2GBmiLF5IOyiEOO4fKi9qr82zTtpKykRHCstgYf0EMdRgyGh/BbMh6ynWzzBo99qx8UboaFBF1ATXqvDvBpAAGWjJcyiFa3IW2qO9aIm7a2uj0prmS5mmAwdgQZQYendMSjv9pdxAWG/tp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxHWzP1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxHWzP1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D629EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780981473;
	bh=R66ZtMu/PxjVR1ZBbQA9pgH3+JA/NrK+O/OhyOtzc/A=;
	h=To:Subject:From:Date:From;
	b=BxHWzP1dEV6vJ9hIYvaLNXjgzRf52OrAc35fuvT7IM1uDlu9G1bdRGhTF92dP2VJi
	 OTQuFtpL1wwejdz8HkWpUYJY15Hf/+R8zx4aozsze7Ev6wR4TfnrpsvcdOxR24tr+/
	 av38rDNVdlG14GeqsOvlkUX2/PlH80OqEYn6z+ZiYv5TC12UQhIRrXbaO2j4UOtzv2
	 3UG7/RLmlaLmyD3YN3HCdJOqpbbiMYsb4iajbcN/8K375nDRPwzLGGQnqcdUbiWAfe
	 OGi0BhJE3y/wyRUnRb73m/3sV2wX5yA4y8vCXu29odnHa0ruo5Gr2xhlBERxv8dnoW
	 Tlu9HI3GquoMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5961CD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098147373.5418.10911019748504708190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2fd2baa4793f735569dde18ed5a1df90418f429accc9253e3a7d6968440f09
Date: Tue, 09 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780981473
