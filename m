Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E833A363
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712362097; cv=none; b=kRIbiQc+de65Be6FrByTTewdbK4HmfUgAbNcYf9BivHd1ZWep3xvbV4kkFa6+GKweiRCSIN737WhZ9qxDk5chuQd2QnJbifdtJK5UGv/r11dvgYme3mci/JiK2WP4gIurMLp/Lkxbx2cAoEidB4nAX2Tkn1KkzuTWSP/XExcrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712362097; c=relaxed/simple;
	bh=jsMQtwfUSIr3JeJJyvIzJaMXtt4i0jlxPuEOXkC+/P8=;
	h=To:Subject:From:Message-Id:Date; b=IFm++B+wKmeJIP7WHaN0XJCfyCLnJytGcSxy2/yr6jHBTSVaGl+nwqwkf1z2LR9qGj9NBC0rj+W8zPRg956ZqR56VCRIMB62mkhTM1wgdLJ5KFQaO5F/s6eOOI7dYlWHPbJq/NxeEQokOj0lI64D+xCavwraNlNEEPxoSIs3j7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2aMnLSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2aMnLSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B12C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712362096;
	bh=jsMQtwfUSIr3JeJJyvIzJaMXtt4i0jlxPuEOXkC+/P8=;
	h=To:Subject:From:Date:From;
	b=Y2aMnLSia+5yTKIiNd6iWVYNr+ssBmPGEIu/vogsQFBc08BjL4BRWGAnow8mOv1/u
	 uNaLS4ER10y4ZBhy5YU12Rk4h0ewGsCoGyEg4Gm7meyIq1XW/p3/ni4tYq0eHnAFNl
	 TrGkUkOUQjWbLvm6HqH0lK46AMIlpWOixL5kleegK0pilTn89RvOu4OLMbNpuO5XAn
	 szwbMx9ZJlRlVv/alitN/iUiEoMCQbZXGjRnrieWww9PhR5WHH3oLbuvJmrY2DL7/K
	 AVNK8s+W6G+L+jVFfsLByy8ddi/dNL+EEKOT9WdZlQdmfQwQ9ppx1dev6V/JPkTg7G
	 8zBBysgO6g1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F93C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236209638.2494.14317979610946532174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8307149592d39e6ec159b9419f1099cde78a6fe996af61ab0deb5c0fa544a77b
Date: Sat, 06 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712362096
