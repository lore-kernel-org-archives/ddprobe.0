Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487252236E3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779049834; cv=none; b=Ay+CaKjwi5dTGaLHwBKlPL0emKJtU5kDpbW4p0doy+xLQHx+wUBqK1UBAftlwegfZPNJm21/6zRbghnsz9Wphxnsr6WOFW5ZDmGNGo0yojFy+AJCPRedEJ3tDlFY76dPvT9pmXQA34woNl7CNjIz/CBqoRsJDRLJnVoxFrwv0js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779049834; c=relaxed/simple;
	bh=2Z2KrlzOLJatMXf8Xf4+ZmA3c9Hc7hkpoivl0e1VHFY=;
	h=To:Subject:From:Message-Id:Date; b=jrasLKmwf3TocxyVewB+qRk7W0jnfOABW27QL+1l1jHa8tU3U5reLhsAJPKnu8wlCI9YOfpuYRBz7nYuFxnB3NUgfSJsTh7X4kzbu8kJdSQQZ/mZ1QVB7frCjiOcxgACARYhRGatniumaAmIynEqFCqf/PCDQnXq7NRJxgD1rOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4t58afA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4t58afA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2572C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779049833;
	bh=2Z2KrlzOLJatMXf8Xf4+ZmA3c9Hc7hkpoivl0e1VHFY=;
	h=To:Subject:From:Date:From;
	b=o4t58afAv8Epntbp41D5iGb3ce/2Oczk/bDtAg6bdCKXPYus6eYVPDXgTQclY9hi+
	 Mle7Ys6U4nkWvWwIvIp2zvfHrMUj5PlCz889YWgrvu9qEhVfn+ucQ0zjRn0q/9fCmF
	 WNQmX0CRIy/0A5uoTDLtLWE6FeMFSpybguuSbzQaw56YLvBX+eG5WvL7Ag22p3lMKC
	 IHcFacieosQOySRAg+urexMRRYuMet5CjSz71uMN3UF78wvcNMXW9neCTfQAiXbXZU
	 IMDTp5JjLnYTrf7vYyJqr/yGk+eQW57cn4m72rk2ZQNWkn9wzC/DBSYf2Htokxwtia
	 yIt3OePSBgw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8CCCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904983368.6009.13150927481288569918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dfe92f335608fb8e5bff6709b9f5cb9ea0bb2780dc83f728525a22ef112909
Date: Sun, 17 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779049833
