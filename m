Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82510A1A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722678354; cv=none; b=ghmZAUGlDKMNAz4+vRp44tGh7lqrBb8XpOn57F3LEECmJ/4lAEzOu2jWBYMKz7IYsI4962ISmPS6rDjlDHV/a5RY17cpOtUaCw6xMcXl1TlStYPaSj2yWRvCb2t3EH0deamhMfku/6o5bS9A40PSE7rktT+xqePG26o6ZwAYN84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722678354; c=relaxed/simple;
	bh=PvQizvhU6UBwNZRzIU1KP+qAEObodd7nMEfL9Ox2edc=;
	h=To:Subject:From:Message-Id:Date; b=DBDXIOOj2bL0Yfbp/gVkwgdLfmEJ5thMzyQJ9qsCXvhz9EcRMks1FMsWFI3AWU8OhvJ9s0lMdfbiOcuUjuIuyBYr93cNzKHoaYLeEOJ+4hux/S6NC/HP7U1qIs9Z8ZN5QiEcVvrjWg/umaN0sAEbtDD4HwprXDJ986qzKmfSyWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACClEL8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACClEL8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C81C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722678353;
	bh=PvQizvhU6UBwNZRzIU1KP+qAEObodd7nMEfL9Ox2edc=;
	h=To:Subject:From:Date:From;
	b=ACClEL8Nksg6lZtqYTS6RQpdU5HSx+gcUnRVNxZ70bg1yu1ZqGvzKF7qHpv7jdT+j
	 iqp4ZZw/ckt2oKM2U7aTdWiO3l1m9pgtafcG610KuULMFQZmf+nnNO1j5LriVoE29b
	 /DQD/gm0voWxt0ODcT5TvDJY2ayR/d4kKCCiGEXaCCgFy9R/f0X3/iaP01N8xxaCLv
	 1rv3MAQuV1Ppm+kohxV2h4JVmckgKUmkpOi6HCu4Bpr8fihRvflLunivH1RDdEP1aJ
	 N3QssbTc+l7eMW6NcsURuqNBidjFWQoCLqzf9JzNj0gzK0ME7oeYMr/5b8ywdNBwZE
	 qv83MJ9HZD/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16FEC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267835365.15615.1778801395979688130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f416faf64fce4f73d936dde8d44276ba223d3d672ee0ca5aeb82043a04559e
Date: Sat, 03 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722678353
