Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BE4221F24
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791396034; cv=none; b=EbGrHXT01Rs0EUIzbEGfAwaYcbs8AB5LyzfqPiJMNff5Zg015dHcNAUMkSDWQOX8WZJZSxXkhpU/LFgLvPv1xSeW0scL9iDdnPfAKTgHvY39xQUXMhAktaczmuKsTZwlJfexH/GQ8rFyc8GFpgq1J3f6mlr9zynkJ27ZLKSlCl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791396034; c=relaxed/simple;
	bh=cWl7ALqSlfdVAKL+G2M7aItoR07MFL/7wIq615zsJ3A=;
	h=To:Subject:From:Message-Id:Date; b=DtviRAWFAcUKxAVkCltbq7HZovWTWCy4isi1yXPboQNkflxwx42jRAzPis3c3mPgKi8krDBkehSI3h3hYq6qH+mydvsCaYHr+eZ4ri/6ktfOoonxxVhC/6DDOlfnk9N8Lr7d/8Ptx8X9vGGErg7dXoXW9CkZk5w8UU/ORqeEdMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxrFzQTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxrFzQTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C489BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791396033;
	bh=cWl7ALqSlfdVAKL+G2M7aItoR07MFL/7wIq615zsJ3A=;
	h=To:Subject:From:Date:From;
	b=NxrFzQTEPwK0QGac7yqX/Eubt8fzDjF+Iff4SPTO00r4L0ODf01Gw+uC9rcKf5e3p
	 PUSuBWeb14pMn2bn46F6UeIQ6LTh3Fmil3vCQ9Kv6YEKijNVR07MtJzh+saz0t5vsE
	 Dnv5YLlrld71ESp/tE+DnIjyP28ewpt5BG9LlR8LZBtJ/ynjfZ3lSsTO27E/Aw+LX2
	 LhGP63+2YxGC7CLBKXgaFkq+DZUi8DKSFcvFcZq2TsfgjAOuS5rf0NPYqbsv+gmrK0
	 wt+qzN1/W1guDbme8/81wG2bEhRn7+419+5OaRHnIBVHX7D/R/j3HWYbP0NnPpdeMt
	 LnphPhpvJRe3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB340CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139603369.8715.8032514699171412754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eff57205db7e741f5b8237203b5864c52bf4e47a89fc1073221ce6bf201179b
Date: Wed, 07 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791396033
