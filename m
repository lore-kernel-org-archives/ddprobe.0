Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49B15853B
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779928354; cv=none; b=W5i0NbxzGtyNGNvY2q/KaYAQKPfiqWmCd/okixRkN+67n47Vn65zTWeN63jS3RDvX9wqG783EZbmpxqsz++QMwtBHSgDs2jVv3czP4tTqj5ksEcAOhb34IvUVN29ha92ue/aFDC7S5Xc9XdjBGGFXr7/JVMNyqcOumOIIfPpOsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779928354; c=relaxed/simple;
	bh=MLNzSXcPBJK9CFkl1f6ZifqMYVK98qLTMHbMXZ0vaPQ=;
	h=To:Subject:From:Message-Id:Date; b=qE5QzDWFnMZK11aPGSYHq7VGVmkDkKdw57cORa7DeYDi/XCvK6YT+ctpmOyufEGh1uRPS1pZbDD8DVL/Fb+y8fZhUpo18RkB/fQrRDqEuBUT9BJsm14cpembrahccTQMRMJ4xLajMpHb28I2WQ1JgXv6BmavEFY+r/QB7vTyzXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GefsDPOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GefsDPOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD77C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779928353;
	bh=MLNzSXcPBJK9CFkl1f6ZifqMYVK98qLTMHbMXZ0vaPQ=;
	h=To:Subject:From:Date:From;
	b=GefsDPOd8vmrGDr6iiERnPPDF+5OmIEUR6+a56P7u+ennvNsMVcN69dwXCfGyZ9Cb
	 3lHtJ433IzT7+7b2BgM9XVOqhnkKLOmKJaF2h4ek2whTumUKZV9CgnkY1gkxdtSxwM
	 cGdX28hDIGKsdsvGCbqFwJN2eegrurbC430DSFsW97Djqp+u6pQlbIlv4QJtUuKxlM
	 rZaK0Q3LffQVsFH9ehaj/IzFExtNsOhwcHyoAqAtQdCxaF4cwvCyXCqOxu9GY6Q/x5
	 5AUZiqBnA1S4fxGqA89YrLF4Ih3ExhN0/V8dqyjZzb+FZi6pHoQZPp/UQg8n/nCEo/
	 d6+ZJj6rlMEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD9DCD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992835368.12489.17715731454166166683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ceb02f0946803ad249e7f3cd4e2d0d194b8c8ed36b84207647f5b93bd66543
Date: Thu, 28 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779928353
