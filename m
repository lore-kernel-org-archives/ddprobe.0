Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA863770B
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779718954; cv=none; b=qKoo99FVAroMVIKEiaHK+n4vzq0QGr9KastKzO2SYCLUjQCh2hVhTVWcb22Q3qNpG5UI9/8Q6V+EO3VutRjsmj6h4qDgCZiqWlkhdI+gClLhcrlIU+PEIGyGjglDQKy82nbxX0Kl0txoPdvJ/XlR8w57bdeHVCSoAc1sjXNo1VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779718954; c=relaxed/simple;
	bh=n9hbr+2Gh11rAoz3/5amg/eyy8/9wMTnrb6129hhwio=;
	h=To:Subject:From:Message-Id:Date; b=Pvu8xw/gJOMGYN+LRrsE2X4y/igdzjY/agRfuBNy9GRj4yWKBTjqsFMh6MsOYInCe3ew/BwgUHuPe+ocz9/AxWA9OhXZZDFBCXcs/nrGL2BXnMVG9e78KEXwnfO9pQdpNTsJsiWuq7RDPmLa20wV6vkFzzHQa/B2o+CuZ4xjLWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBCXxLlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBCXxLlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64C9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779718953;
	bh=n9hbr+2Gh11rAoz3/5amg/eyy8/9wMTnrb6129hhwio=;
	h=To:Subject:From:Date:From;
	b=MBCXxLlwR7Jp3yv+j/kVMWizlhiFvK/m6vbF2ys3IdyOn3IMkr9eCbDepAoNsI5jR
	 5O2sA6BsDvDvWzN9w6MoQe8gvcqSxQn3zG84G0qJivf4wJ+VCiE875kmePcxiGYCgo
	 gwOQY01/k04At7oKisb0NX3e6C6tGvQEmLDjtKxEvf+p0zqnjY6ePs/qsgmryAXCEl
	 OJNDgAwALePPlhZDeQy7U5imSQI2vG55A6JYDgXXlrPwWA5StnY3OIFAodzLh2+JgJ
	 n9SFUvO5QsycHk7rDJX6LbOIlNgMhdlHHJp3k9fd3yj8YGjRoNQ1linPpICY51NRd9
	 LnaATXknix5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC4FCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971895369.21306.8840901957492606393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a0123ed6d73a3bd05ebeca34365b9126ec6ae0a2baed2fd82d62c4d3ad432
Date: Mon, 25 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779718953
