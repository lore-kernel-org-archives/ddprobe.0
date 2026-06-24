Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FF30B51F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782260794; cv=none; b=VDWOOVcwWBN3zVQr+9xX96wSR4CmO9NbjcLpX8PJzq+zW9TkpfdvX1WXwLq2nGbRE94iTC9+uMMt4cTeaCG6MzDwNixH3d5uUDUGSOK4OnAmAJG/Dx2B6Y1OieAIJnsVGspVyt4lC2+QYfO7Cz1oxZT67/Jb7UXfVy3SFdV2Yt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782260794; c=relaxed/simple;
	bh=+IFdT7vSEoVmH4HZAlsiMYaWcBvArdQPSQ2fo+DLt0A=;
	h=To:Subject:From:Message-Id:Date; b=LGg/7WlJ1FddZs7OFzc+HY3XakFn9Zs6w3hiv5L20HOZ34gr65qW2gGm8CbEF1GOfA8rvK2glcrfE8lXnlV4m/PZeV+7ZD6OgX6hemljeBMxrgBSQb10pDNqpCtXBkAiNMu8V6dWf3+T5f/U+DqU2capN+rXfYLD9ie9AUoh8Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIUT8+sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIUT8+sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21AFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782260793;
	bh=+IFdT7vSEoVmH4HZAlsiMYaWcBvArdQPSQ2fo+DLt0A=;
	h=To:Subject:From:Date:From;
	b=kIUT8+sjmf+nop9NJU5HdDsdK9L7yD6IUFS7JSfRdtmBvDsvjsglEeoZAveNTxa/T
	 fG9NP5JYs4OcEwCksraAJH8WAVppDvxwHPD36r9YP+OYstXgpjXpNEttXRsMzLo9X3
	 caMZ36k3EHoe6x6lx+ior1ooftWodq9/1uknwr6g4VLwM4RogB4X49W9J7OSr68LwC
	 9hRXqGwmnw3dAeP2cYVuCW7YBpZNOEzfRfTFElZAsiVmDuyl9gZ59Um8QxZUjpJkC/
	 3bhvncz6QeSNMcIgX2iz6473InOxMZGhIDBHmY9mRHRaTS+Ka8f47WKsyrLRYSLsMM
	 nMlfvpI82D51A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B438DCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226079369.25244.2970733729550682814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092975ddf223c9c61c19bfacc026916f7f78058c36699edcf4237e7342fcb01d
Date: Wed, 24 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782260793
