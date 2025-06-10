Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F8E278E6F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749553194; cv=none; b=dFvHFWy0CIFgEV2sso0iOgvD0d92jlezK5hLou3bxumbaZ65CyaiPwQ701x7nU8gOubLnbHe88AjAsWQ3vgInYO9pf24+KE/UZmr0L4DJmTSPFdaw4F1pZsXHjAehrYrvr6WcRGTV9dvPyfqK0ZYQjc42+NJ+LufJXfIxDgS6NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749553194; c=relaxed/simple;
	bh=B8RWM7LCASGCWH3p7KAwVzJbOH6+8k+k7PYkUd8KjC0=;
	h=To:Subject:From:Message-Id:Date; b=BrDWzdbTNxGe+rCYAMlnEm9kUvZfqwUJD27NYxkWeUYqOXBm/E6zl0hNgZaA0hZMmP8bQ2X9xJViyBjZUzGX+vX0pjTMS+LdL5TP7gitptPFwax6unIorrXYzyyVOPVoWzCRevEQKcz5CHpsOOLGlVIEMisdaGliIZ8L7FhQPOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py8xDpp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py8xDpp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1346C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749553193;
	bh=B8RWM7LCASGCWH3p7KAwVzJbOH6+8k+k7PYkUd8KjC0=;
	h=To:Subject:From:Date:From;
	b=py8xDpp9B+K4mzk+ZkrjMZbdScPCdSMWdpImKS6Ien152+RoIUIPj38VbP7V2+K+w
	 /YW3GtwLnQ3eLEFOBzc41uQaUDrZ+uLZrlNtG005+YRPNdFfrx6c8VNTT+0QdsJaTP
	 kEPO7q/Xuw6ovVhVrnkyQ9kLuVRqO3JyRdtHyXkAVAHwd9HDT2G1IghmrrW2nG9hY9
	 dBAYNOLHxT7SOkvYeptmkDautGVUX41n93ISB4dT1wwY2O2FMYl/khL0fG1NDrZPKc
	 QWaooP5JuQsBsDhKLo/VqAeiaMu2qC/c7cj+O/PI8D2fKvXS7wJBJfWNPqvrWI6qa9
	 H2DIK+5to4Fpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADEC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955319357.17258.4755670368453326273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91de27d19da8abc2a62b227d7cae896bd7496c394f7671ae38dfcbcaf484724a
Date: Tue, 10 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749553193
