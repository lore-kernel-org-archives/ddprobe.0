Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C49193
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725008154; cv=none; b=eu5PHolKxK3liemn0VkC9R/auV2gk49H4Wdc4wQem9oJrACU+igKzcj+5f08RLHFK60qOEmxZ6By0RqLxd6L+uwMAWeNPkDztsHBlKYV48nRojpM3StO0MOTIyIp1z5uoAs+jG3ic5NZTP4qoNnS2w096oECxg4E2WwnwinL+YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725008154; c=relaxed/simple;
	bh=tk4Rev4OK47N+Tb4sgdeEGYhRQ8vnrD+LghvmGBJtcY=;
	h=To:Subject:From:Message-Id:Date; b=YDd7ROr3AXEZz4+CuAwbtOdu9hk92/CeK6/fLK1Zd7JhiNZpLeUPe/w/6h9mbTvgRSCIB9gS4vcJkoGTtNu9gxgBsZyOvm/IvuYf2S6HseJ+aIcEq+Bz7u0O+oYY3ErPZy4XnuiIKedXMjzJExaS5c5TU8qfppVzl72KTygeqoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdBqzy7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdBqzy7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B5C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725008153;
	bh=tk4Rev4OK47N+Tb4sgdeEGYhRQ8vnrD+LghvmGBJtcY=;
	h=To:Subject:From:Date:From;
	b=FdBqzy7DCm/C/0wnLHgziLBihN5adn2v7G/i5rTnCc22DSRFD+Eu0M+kE+desz6fg
	 khmOBwuMh/SVclYL9kVfA52rljHW6eSt9mUK/C1DfpwO4KXL4WAeTecaulSV2wj24A
	 aQiybbyvr3lSI7ou8a0Z1peBobzXDQDE+b5KfMMyYaUeLjeD/50KamGagyBTQZ/s59
	 4KwEe8uZAjmlRQ4NEOZZ1l68G6S+yW1c1AmR9d5S429lpMK/UOIB2YzIya6sPMWl7D
	 GXXd44wygnjtyczmNKwe1P8nu04RJ1HRDkhyax+/gSppWEuGHeolW+gIZ9tkOoIMwk
	 xIBdOpG8w6WdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE36CA0EF4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500815359.15506.18199856820269285743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be29e0561ad8b6620014933d80b8aca4a79f0e6f63080dfec6de7204996d200
Date: Fri, 30 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725008153
