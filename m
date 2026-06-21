Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512F640D57C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782067594; cv=none; b=BSm2OJ2uB1RMo07HNkdfonMA+9uaQqq/N7Set2UCv0ZsuOPwC59QCWowJ+By53/u5pw3BEBspRsTwWS+9fT0+voH5+VfUb3zQugDzUBQoCUbGrhMdziTIDb7YR263YzH/KWrVa2G0XLV9e58TViQSepbT+9WL0s11jGmk/6Y4G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782067594; c=relaxed/simple;
	bh=oOxRz8dHaPO/yRDbHrYn9H+3jbdvXl44GO19Q1JgO0Y=;
	h=To:Subject:From:Message-Id:Date; b=PXR+FSKzREXttfJAteHv9k5xXKeszQOTI5mtJbnq5Y35Fqviw5mmxUY0m39OcQMlA/DMEOGTKKEHEvSRyUgARgwdjVRFO/4ZKruvD87jeLyHdRVf/HvqFurb2f+QcAxHa7wsKduhP477Sm5dnEtQVAooulxsHlHQrgOInjKTTA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7ABHiAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7ABHiAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D059AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782067593;
	bh=oOxRz8dHaPO/yRDbHrYn9H+3jbdvXl44GO19Q1JgO0Y=;
	h=To:Subject:From:Date:From;
	b=o7ABHiAVqh/KlFjTbpAty/vy5KPL9i9uzzf9QhILS62rla1J/Uw1j/yw6D43w3XMV
	 V1zG+iBmXkKPX6o139ukVjz7UtMsKNa9vCAunF62fKCJuyzYBZdxwrjlRSeSIuytk4
	 SyEmC6fhnWNNbY+Fl2k0hlE12L5nMyoDj/3ING5QTv41r9legCHhiZNBpFIF6qaNJT
	 zftDUlwELvJVmaEd4up5zizKJASzDSFl0Fdnd5pXO6QHIOID9fOnKhoK1+6u63su20
	 cCBJ6gM6DCE01Q9AusGMxQ/Fu6uFZZPfrLSwLGuhUjFUQBQkPpCtrnwJm/LSlMeXsU
	 Y+LsQjeG3s4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC6BCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206759368.23942.17551029734199381045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc79e91082c676edc7cb3d3cb0558b884b8ac3b0eff54dab2e674fdae6c55d9f
Date: Sun, 21 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782067593
