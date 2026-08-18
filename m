Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526B344A418
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787046634; cv=none; b=KwdgewapTa3kSTTjWcdf3oxaOnrmrF/7pb/4ycbvSNtP+4HVUXXRLjQIdzFWGy3U0EvCYRW+YIwmi5+YjLlBj5UsmFUI7tYSVVr/LY5CITuzJ+2zD2L7MMgw4KIyUdONEH4XAed2IDp7gXGpf6HXX8g5PjCQo+JvvFS2ufIteD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787046634; c=relaxed/simple;
	bh=U78W13UFY8ugWIo80BhyxZCX0DjnhXequziGglyedW8=;
	h=To:Subject:From:Message-Id:Date; b=I7d93/dn4wYvFkh618EqHLguXfjmOZ0IqziXI8txb++tICOBHkLIekHPs7alu2OuanXFBmvXesYTC4lZjJQo4PzQQa3mYW0GX8zi6hO3jiKC1xaTg/GiN2uXI2/keGJEYZG3092PQaFgjbtLxeBUamzH0UjA/gvOwv3SjzHtZD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXs68dbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXs68dbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D551BC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787046633;
	bh=U78W13UFY8ugWIo80BhyxZCX0DjnhXequziGglyedW8=;
	h=To:Subject:From:Date:From;
	b=PXs68dbRS/KFCIW6v6ZDh8negh5WjBgHB7+61Srb5Vk8ItRiJU/Oc30+p7NJgTla3
	 Ib1r/l82iLxa92Kv0AW0QGaH8wstTbCgBX7uTm5x0cLvGqGxRvAsSUVH70e12vaGgO
	 U+DeuKZTLseAHOkhmSJOY2cQqIQq4e+y6ZPvGoZxhpfTdIYxzfTq0/VWsGFz4oUa/Q
	 BBcqDhgGLRAj3l0ZU42VkNb6b/Jc2w7d62j2VxmQe7xuzFVm02R1pBT/si9b56xiTE
	 7v+fl9NrFT79byo38p5cLQIqBmf0Zna8haXiVTtrHOuy2N+YDnSXiz7hdiehxAw0nw
	 jacwaw/Si3r/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1679C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704663371.14111.2617096727831349692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b0aa871019bc683b31d5b5c98df9531dfb7e2b863c94f70614b908a68910e1
Date: Tue, 18 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787046633
