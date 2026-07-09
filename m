Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C197332917
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612714; cv=none; b=jyIgsaFvftFQAw01MJS/Rn0HmIu4IwKQcnNEcwHisLxfN/EPwwz/0rVmU/PWYgtkzYT054PO3FBT2TotlU8a5Iz7s64wb9JnLX53FXQzcrCEJIJNDzhBwJefK7hkzi52dIQ7Yu2ZoJmHJcDgio+bXcBR1CXaMR53K7duERLMXw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612714; c=relaxed/simple;
	bh=gXH1gQXYq6QiIJL6LrjSaWfEXMPuGWA7YX4lzTeSaEo=;
	h=To:Subject:From:Message-Id:Date; b=ZSIDVGQcbgvEcR+8k/es5Sg9pW79gKG/pgbj/RxxbRXmn5UIykF1E6xlkCKmle7djTp+rvurxG+vbZHonJsJUoGl5bA7+UTZuu4PAu/nclCk6OrfdOYgfbYxCIHwR+IgL0L49+KBD3+5pWwq7V5gPzzuEj6wuFvyhOasbyVpRsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4E6D575; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4E6D575"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB571C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783612713;
	bh=gXH1gQXYq6QiIJL6LrjSaWfEXMPuGWA7YX4lzTeSaEo=;
	h=To:Subject:From:Date:From;
	b=r4E6D575Bj7Py+U6OKlIj7iMh6FFqCyGrQjY4+bBlYv7XE4strDQOMzVkiluIQNdW
	 OXvidFXu6KCj1GMv3fZLXlP7dZIPdARwV1zCC1jEbo4ZuVgBIiZ8r8XsMaLFBJqtRh
	 JFk4W6r+ZcRbj4bFkpO/5zzUyck9ltuGwTrBAbIpT4b+/CnHckMd+iK3j1Tu+dCedX
	 0RcelD7SQOgEFnf+yWR4iRyJHSk6zssDN7Zn+BYT41IGtLQ6yKLmMrhKBgo8ugLyg5
	 teOEDgSrZiA3WCdyBj+xJEWiYGNGbKNPzPDFVYqNrT8k0J1j/SW44yavnqKJp9KXtD
	 N1nob4dwXt/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E68C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361271368.14486.5440506993622136600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8c62a47e42c9fd6a05e38ae9d80f944065d51bd8b7baa174bd3468ef603c09
Date: Thu, 09 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783612713
