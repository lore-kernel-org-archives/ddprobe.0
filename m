Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E3B33F8D6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772667294; cv=none; b=JxdYkPIyYyCeqcO3cXcEHWvbVRVZNvVsVRbjNUxgi2ihEfftjOQYEO55rPVxNjbpfu2Hdbay2TcB2m8fS0Hq4rvx/sNYbeaUNvkuojdjgz7wsI+UE48eHqcn4raxF6KQ3XpiYyUH3GQdyGfEGEpkYdckxJq/j/Z/fk1OpyMaELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772667294; c=relaxed/simple;
	bh=NxTFx4C/OeFYA11wL4isX9HOTyCt7yc4ioDI8PfP8gg=;
	h=To:Subject:From:Message-Id:Date; b=W6C3z0g0dVB2Z0CSPlcqMNGgJHxxptQUszk2onrn9+NcRBqBHsRD/U6HkDCZLqGY78KpoX9xldooBuTRQv7SS5Eue+0P1lR0ouwF0k+IlBQPHUzEltsvcJ48NoM9NfG84LFoaHWcbZGcN3NZkpXbRhpOX61+i7y1c36I+qG8ePo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuKFjHPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuKFjHPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772667293;
	bh=NxTFx4C/OeFYA11wL4isX9HOTyCt7yc4ioDI8PfP8gg=;
	h=To:Subject:From:Date:From;
	b=LuKFjHPA+Uf5Fl+tyxNSfWlJ2ggGp3cqR75qng/Ae7+/SjD1ovNuCy07BUtGvrGky
	 gKr3it5pa3dGdWz33e6IPMcNfWby1sUpyBpgdX6g3wICe1rx45ofm+Zga70jf9welR
	 uIyCETLOj8IEgronyxYoG5n1Lsg1Z6B7mLftQj+xJBuRgFItf3oyHGxTkw99sHvL40
	 RU4t/bJ3DSlzhFjr7gRNVbGEajiS2/sag4XAtqBKaOkgLvjKDtfrSCRWRazASV6SRR
	 ctzV63oyCGHjvyXKvvn5FWMpaYZ742nKCAtSGVDdWlPdPi5+0ytcNkR6J+dpW6eGMf
	 a/34QHeO8ZfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92219EFCE22
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266729357.4902.6037397503365741839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39135d70b3bd44b53228a0e441a8e0f8b40fea8495001bfa463979f641c0e6e0
Date: Wed, 04 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772667293
