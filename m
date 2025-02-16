Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DD423BB
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739743734; cv=none; b=bPwoJb0r+udUvjiXNzTfiO9PwQ3r/W6yGXJ6BHmAYt/8UWadSPPXADCdzLFWCETaqQQ0BcuUXEKFb4nf89YqZT6THR+karZC3SRxgQzUamzA56UbHNDWt6gn2k1WcJ3f0anXlBr5HnvESo9fJFt3mO7G8ch+M866ScsN1e3wU38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739743734; c=relaxed/simple;
	bh=lq+1jfawiGqVU9Sn3hSNsTaoelrrxESDVpD+/ZnFZb0=;
	h=To:Subject:From:Message-Id:Date; b=ki8yjH2l6GVL9OGWYnXPgGUls3+PNUwd0pW3Qz4NwRxmhOMhw3DsubUgiFaiTBbQoSw0lxItXmx7bFybV+fwaDpCh+e2NI5P/5mu0KkPbRSsOGQwGHDhSBvuDYC/8fiHqEjXkMFAihfFJ/ESKdu9MY/WnKYkMWdCN//qmOqJLgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al5+Hsh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al5+Hsh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5879C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739743733;
	bh=lq+1jfawiGqVU9Sn3hSNsTaoelrrxESDVpD+/ZnFZb0=;
	h=To:Subject:From:Date:From;
	b=al5+Hsh/LKWf2XcRr8N0SZ8LoypBBVCJiKzWD5uHeGE46fSmWgo0dHnRehZUYYjdE
	 RoZy3eOhjglaVT9Opl+ezD+MKHQ9K96Q9KwoaioEz5URzihsc48IIpaE5yeZ/B0o1S
	 NUCorl5O/JcB+7DzdRhS1TI8p6xx9Yvxm8QfaKyYxmW4EZh7JA/3TqTaEl2f3RMlzG
	 8kyPxHzdQXtSx4dZ1faQAbxlmSDR8mYlPFVhcLtA8LAOEEadxPwUTJOPAXg5bn1inN
	 PDfi3uUYr1LlaJ+YTz+vaVHxPOmrvL0AMWeEXvg+7O6go1iXZ9GO+t+gcCkaxN2ILw
	 tcucocucRN6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53C0C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974373366.22015.13109832544500227243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa33293fe2230ba4de92d26a32b70cbec014f7fe07674ba32c1e83c1470d77a
Date: Sun, 16 Feb 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739743733
