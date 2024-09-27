Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5841C32FD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727469953; cv=none; b=IzWU70GbLtTiubwhHga78fHJDn3cItqq6qTTsqYuZ98hoz1+V5c53pwdK6uBLfyqcKUCvrSQ0bDq88KsYK/WrnBGnry+wkY87vrABh2bFWxibRG6LOG4PGjEjfSivHNgodoIRkKUovnyzpt+a6VhgzFtS0TT5YOTX4sWbBnRXTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727469953; c=relaxed/simple;
	bh=5P4mfaLrHYpw5+ZfMafS4ZJ7DUFxmFlfQxeDWDev0/I=;
	h=To:Subject:From:Message-Id:Date; b=Zr5R6xcmji9kZD5MA6lsDQRTup6Q7oooJaZ7srbAfIueVX81YbP5Fv+ZArAlLSZobFsycRFZe4dXlXRM7MSGe4icM9Udceh87UzHIf+ir/risSvBu0wdzOUzTUf1NHhvw1rWyOJyIejKpva/eIwcariog1x7/R6P5kKgJOomArQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV3aSgoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV3aSgoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00E0C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727469953;
	bh=5P4mfaLrHYpw5+ZfMafS4ZJ7DUFxmFlfQxeDWDev0/I=;
	h=To:Subject:From:Date:From;
	b=pV3aSgoT70K6EfGc4KfMxt8dw3Md4NB1VH+4iLT5+9zsaVTdZpq+n4ikJEBX+wrRc
	 Zk2pBxmrRbAzjSzULddGW3wfmJPKtVaEH8qR3up3cfabx1RJuCAR9j82f2aqQS8M5i
	 154Q1Or45Ur7xVjLL9u+Q5vmZrmb4wXiBwLabPuEhW2mHKT0eN1Rw8w275ymz2AxOD
	 kYgZbisBhhioWTQ1ajN0UZRh7dsdzTQMc7rJm1DuD2NlW3Jp6Jsj0051PnDq4yGmsE
	 0YPd+4tdw8H+Y36ncRvhQlK2BhR3TWqILyS97+VktpFwPTtm3LVL0CUyGxiSyUQxb6
	 7Gb8BC/F2hgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8A5CDD1DC
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746995363.4339.17446963158479067117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c810df29a5056aaa4124504a9a340b29304ace898cbf5ba071aff44cf5a1f2c9
Date: Fri, 27 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727469953
