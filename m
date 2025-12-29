Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2D330FC18
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767028434; cv=none; b=QrIY1NCqIaPFe+z5HfJPk296+feHvujeezvlKTkXhfzejfQzwI/LpbSfJHhvDIgCK+s6TyazFV0p3iJBUbGPKpnPfxlsnZf2g6ntnHT79OQFmQjCld/UvFtldYqb0sZVszpS4CcUXs+vqpR9bjzORFrBjubgczZUAO/brca/x0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767028434; c=relaxed/simple;
	bh=xdam82WaYcFKjz4e5EMoB0iWCIAo+KNBQK4lw7m0/1o=;
	h=To:Subject:From:Message-Id:Date; b=OiwZZYpbB3Xzd/amTRPijJoMHHurh01ZGBxhRUC6GBGl8J8ZyKPdcfTxQuY19/TwwYo/Gfww4ad5godjAgYCYezgNqiMP5IDP/YzaXw/k/72piYbbfVBWOFyPUjssfUBC7iZx0XGVnLaooJGaPP/TGwFRAUnlgvdVHXRBj0w0k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9122xAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9122xAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEFBC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767028433;
	bh=xdam82WaYcFKjz4e5EMoB0iWCIAo+KNBQK4lw7m0/1o=;
	h=To:Subject:From:Date:From;
	b=A9122xAfzRj/8ZbIemsXp3zSeQQhJdOEY0HnPz2MkRIdItbru7mqKUJjQdURm8P4a
	 zINvXwor0qDL2cyRlFCf4xTbg9KICZQUbjScagoipqYkr3EWSuL3Zd1txEn0ZXbAKE
	 Jk+TrAYAUI968GQ9jfZMjDJ6AWDNU0hL51B5A+/MLFrBKqOnYED9kn9COdcHz+Jx8O
	 3jZOlI8VrXHS+H0Zrcbh20VnjyH0Dc+chPKCigU4Nl891frbpq3OZGOzxeTG84hZ9H
	 9+UuAsSHXEO68bL8ntdtvu6PHL2dfMdk8PjHPgObp4cWIaGCk6zY7/SSQo+7VLX8wr
	 GuGf8tlclrqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A63E92734
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702843360.9720.10469558348080601084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354a7fc575f2890645983f4d122817df2a572bc9dd462fda216f7e325dcfbd9b
Date: Mon, 29 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767028433
