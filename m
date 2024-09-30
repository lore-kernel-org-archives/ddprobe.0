Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A02F4204B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727684754; cv=none; b=t89KqEwZ8fE94D4TDSEMqVjocKcQUfePK4/xa+RSOqDb0oJC2ltVmxeG29zskHKBIj6KGRVtnTdOBXwX1Q5L4WplYgET7xnM0vd+N3ECEZ1svSjSm87Xxv2oYrKNut0r7hTSECylKuQNGQtuhbQh4XzXB5SUj5GfNUzvCE4fgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727684754; c=relaxed/simple;
	bh=FvKxRtgtat04VxIfeDugsZjlHf5kt2R0BG02V3datVk=;
	h=To:Subject:From:Message-Id:Date; b=oIvQDF2NniPXMdC4I0VKVduohM1dxY4vcyCwK1C5z6jKj7JkfvVqMBDaPNJc31ctpqwEVQpwJ40NuBFrhUWG+fDFieJZDaO3VSaaTosgcXgj8lNWHhbMm3xq68OAoIp7A1Y2U1ncGWuFAHLOhEqxR+/f13YIsk/u1lJemNWe5aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBX4bYD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBX4bYD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE8EC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727684753;
	bh=FvKxRtgtat04VxIfeDugsZjlHf5kt2R0BG02V3datVk=;
	h=To:Subject:From:Date:From;
	b=ZBX4bYD7LwDnrHGC96cCHQY+cm6zvwZPbQ7ooLA8ZP2mtvx5EnhkU2Ic6UKKYQWch
	 cK18SuHKY71mW2UTotPhCeN75VC8TMJ0c13xsu0tNNSfV7qZ5OjJeSqy+rLGrfVOXH
	 YCvwsJGfX35uPK2+LahQ1nAp/RudtRSlCWGBhOlY4UPvfZkP7S3cBRhvT+6EOEV4dG
	 qQV0gMHPyagEsj6hLlO+pzhfkTgd1t7l9sdkqg5LLSZct9e6QTA8s9ubj8PQw6V6gD
	 aHH9X5ssC3vMo6Opvu7NIh6xOLf+NWL/aqyySxnCMFky6Iiop1GkCeyD1kIEhOssmt
	 7N8IiOVqUm47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C209CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768475362.10593.18226681384615562924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8ee1c1b49647113ace4111aa85c1baec960336059ce6ea6123ccf29ee3ad49
Date: Mon, 30 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727684753
