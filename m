Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7914831E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747895995; cv=none; b=QST+sI5IUjC2f+jjN8q7wJLkYquGOgysokVAgRI6o3ZRkO8HQl6lPrnlkzmiiZjtL5TaCx6sXQLM2EMwxKv5nS+GR9xBcVI/pZnOGz7ulZa/fuutiudp2tTqgtn6ZbciIKof4njhgEKHOh/CCIAYa75AQM4gHdDkcXG+DQ/CNeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747895995; c=relaxed/simple;
	bh=qFJ1kFKmslkr/hpikH2RMlSPxOE1fRdh8cp0pY4NFR4=;
	h=To:Subject:From:Message-Id:Date; b=JePft7+az0ChVuGGxbGUF1c2HqYFErSObbGwVKeXoFdUV6g+Rh3URY1RMN404pdyetj3sZ65XPwrAfks1ADFFMofbqx3LjnvtRX4RDMYlStkCwO5WoaGwEdqCdi/DbZLgEp+BUDW6wnrOLMiYKT70Xe9dBCYbKiCL3ZiTtycbLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw1zSdW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw1zSdW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6787C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747895993;
	bh=qFJ1kFKmslkr/hpikH2RMlSPxOE1fRdh8cp0pY4NFR4=;
	h=To:Subject:From:Date:From;
	b=rw1zSdW8Nit8Hy81ZoDWe/HJyDS5hD57oxYk/qomh0yjtJUejhGuyYAX+5uFi+heq
	 Wmopq9MgkW5pBn6SFISb6JZDJQLO8f3hGQWFwAwxcosanjFFLTNLBNdYxSIJJ8idz3
	 cddKYLx0Zu1XKic1EXSwtuYCJ0YVQsO4yFln390JeXD1cUckD7lkfKam5/ufWAulEZ
	 HS+UNSfarjyOTtS/BBjdK5H0IzMB/IqnHFGlRXwNaue2HV8M9pA+6Di57633btIDDt
	 HxKGZ+jl4IEnayxxuzWzH6Wprps8KPGGOXXfIQ0JtUYK/44mSp7OjsLKQrdRkUGLSp
	 BPNNxWAgIwZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A50C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789599359.25725.9532368534242671036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266af6a1de63935ade3881282566f6c3b78d9172a3c7ef4d2315fe3a42192df5
Date: Thu, 22 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747895993
