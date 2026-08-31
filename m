Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640C837DEBF
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788214834; cv=none; b=g+3sgzhgx3mWxrZRFvewa9nL6udbKXGAI8h2UuyHa8RaM/xJVULsfRGhGz8KmfkzsGDVsa3kHwAztCtMC/J0iLDWxfgOHpJ9yYJq6RKXyXt1Sbw/z8B1dtoJQTCs3qSFtk6cin7jXsBlmDFcZMl7Zvfd4jqjVcn/EE52Iwjl+L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788214834; c=relaxed/simple;
	bh=urlQWjPftFY0n4eH6chinl0uGkLGMewF3rYNXF5RIOo=;
	h=To:Subject:From:Message-Id:Date; b=hI5rPVyjMwiMzu0gIGWNS8llut9zefnGI2j6uU2buEx7qELmhdPqG4GCf5pM0gKBdQf61BfK7TeCPVRkVEe5T7zD0TiufK2OaSB3dykKNXoLZXaBd1CtZUuAITjCJ3uMZeqyXK2bhHmzfJIRpiHDuHI7DgSw86xbI7ldcdQYM2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZvdYmue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZvdYmue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE72BC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788214833;
	bh=urlQWjPftFY0n4eH6chinl0uGkLGMewF3rYNXF5RIOo=;
	h=To:Subject:From:Date:From;
	b=hZvdYmueZcvNFk5I9jG/Nx0j63PvtZcxYd1t3Q2gEhYNW4ASMr4NuDuhXr1BHRfvP
	 cC/diZZ4ckCOGZeRIyuICyhaMMm6iJ9WnkXAfD34/CMN6a509eEvBjhSkbajhBwC4d
	 0muJlUeoHNZFHVB1OD5FcLzI+z+CEMrsqYByhNWQOyWux/1IxXlW7ya87B6bRRMlUq
	 tslXgn65Bc+ALWHLWhP8H8ys6FxyTGg9nrT7It9Q6W0oKw8APdSv3JceLAXaqeFmiT
	 FEXKsEwk5x5aNJCGynUD336V8IUUoe4WWJxa2iqpogAQot6DKeOEeS4WcsndkCl0Qj
	 LppVoEOaeg44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A1AC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821483368.10409.2893376748744949432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63283215738a35543b6641d8863c5c6aba014948fa87ea6048363279916a0be
Date: Mon, 31 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788214833
