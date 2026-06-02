Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0630F958
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780386274; cv=none; b=gB75oonMvYYPj8BxiAX7rMc0HGHVWLwPl9yBo1No3MRHM8tPYniEEo3P+rYMC/6Fwte+1n3306qfgxujYB7DBEnNkBZFexgzsAGFm9jgT32RI9FIpqJNpYhl33Uhslys/oBbrLO3fULO//4z3J7axQ6C5d1RUlPdrH1FI16dMQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780386274; c=relaxed/simple;
	bh=CUggcZTMSys+weNtXRAI2korRvuIx81BUKPj76280bk=;
	h=To:Subject:From:Message-Id:Date; b=GZIWVxNP/wWJ4O0Sgm53/7nwGn0+XOFbOwwBKYFqiQRQJgOGIDOA+nLhq9AKthzwmOE/6zRsOZv940qQmalfkVeQk+YuLDLuIe6UrjmTrKlRhCxXKxKw3wAerFIvbr9uKyOrRIVq0zTKsKhonJeQqTu/YX88rs8j2haEinD84rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryb+8P8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryb+8P8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F32C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780386273;
	bh=CUggcZTMSys+weNtXRAI2korRvuIx81BUKPj76280bk=;
	h=To:Subject:From:Date:From;
	b=Ryb+8P8ZXdFqUdoJTGisDZctc2g3ko+M55LDYO8mIR+QhVutvVQSY+Zl/C4AE/pVj
	 Lu0yxln/1EHy3NGg0ZBTCFdUHNpucJ/Fe40PRhc76S85UXC3cTBzwZ8JReQYpXytwV
	 l0eeYkDNTibTnVfY4ncBZhlxhE4pIA9j6kGTcqr1z8x7h7DoXFiWI0iwO/kdr/UXsG
	 u34W2wASrMIxcgWzyE0RLPOH/PMIPDCUk+8ieNcaM1YWlYpue7biQWHMECqKPP4zR8
	 ekMqPimAO3x38BMPnb+kMECMUSh/pUT4O5+pPCSwFN7u7A6C4Qo/wJehOs1K5n2Knb
	 K6z9JpwzL7Fnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8093CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038627367.26147.7800246833994450817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64270ea153d084fb68adcd296529101a0753b90b982c59f317988556a316922e
Date: Tue, 02 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780386273
