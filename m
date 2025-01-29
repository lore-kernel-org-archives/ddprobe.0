Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F47171CD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738124754; cv=none; b=jggTB/Dltvwo0Ud7JGKXkF9Ipf/ReW3VPw/zf8VfptXaToILB0r8I7kmjcFu+k6xCQ1CwqHTKnGA6TnVr5SejRQew8GgPeuZEzfVEoDeA2MhuyIQJSAhEYoKyfZgQlQpebqhCj8Vso3BzfiXTDiJ7etBwIlYmMpm70yNKJSj2YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738124754; c=relaxed/simple;
	bh=Zu9ldaix23l23AFkT7erlDgtDNtWqqEbAYGxevg3PQI=;
	h=To:Subject:From:Message-Id:Date; b=CBqbEpHwJRfiPkGoGhZ7OrnAzc+vli8DU7gHFQBYbqeF63XUkRuNvQ2h7D8ilLy0ZmYUBXDmDuQphuWlZ8l6k5ZQKmJ/Iw2ctxkKbElWyx60DK42LTyih0/tnTH8dLhwGzIZQvDirbERg0Bo/njDTRQtndjTRSDcdpj6pECpgDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2PDtt6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2PDtt6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A5CC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738124753;
	bh=Zu9ldaix23l23AFkT7erlDgtDNtWqqEbAYGxevg3PQI=;
	h=To:Subject:From:Date:From;
	b=A2PDtt6t+zHZ76LlB7f6x1VyLEwO/HwXCG80khr1Bi2cnntgrSk+GgrEVfkQGvphf
	 BxpS/bJBMF/gZmwv+Y6Zjprj9mo5VGOmI3ua6+mhQA7UIpTv6aKcYL5MHe/f/Krl64
	 pouqAzjx8A2D8OL/+0eXlEM9dsf/HGz2u33CoWaWiLLcr+KU9s/wWLDWgg88I7rBzK
	 mgU77No59pLzTJPoKMQP5Abh5qTiGEj7TgtTPWTziD7B7DSIRlIdBoQHisonJybJrK
	 1pUyl6hRi1BnYz+pEzFr+kRFs5uCuS7x4XD27tiOSmkqFrQQ7vceNpiHg3CHvrLpOF
	 3/f2aHxmJmm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20C7C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173812475364.4612.8038601373152547763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60c26e06b22640f36229c634276120e2f536badd6cbf137ef0c709b809f718a
Date: Wed, 29 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738124753
