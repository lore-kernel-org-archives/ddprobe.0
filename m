Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2120DD51
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776373054; cv=none; b=iU0JVfZpvNSCcEkZ3jMELvce9rvcnPJpUFmtzbwoWtMXoSh7ufBcut76ErPl1G2KeQZMmZR1GoyE3L2schXTU00MMUoeCGOXJ3XvA80qRq9bk1C6MUl0Msok1ypeXWyx1y6EhK5T71SuVNElY/ruyZtnnaZvFYRbTpoxq4A8e1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776373054; c=relaxed/simple;
	bh=zXUSlxW6guPICnwoo7MIJE1MpIzIQKDjN+kEhofRC3U=;
	h=To:Subject:From:Message-Id:Date; b=ppe7/0dum3xPmWW6t83fbAJU9HQiCtWvJhJKYm5kmdB9UG9um87VHBGK++CiJcyY7EF0+/aCnJRWwFIYxxXLYkfhgvgeG1wM2G1Ft0fsodGBisTPcQ4dG7BxT05Z23o2qN7oRA9TP4zBrLmsyNMCcRCb4EZmvTpLYCwp7YbcX0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxwmx6+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxwmx6+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B9C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776373053;
	bh=zXUSlxW6guPICnwoo7MIJE1MpIzIQKDjN+kEhofRC3U=;
	h=To:Subject:From:Date:From;
	b=Hxwmx6+rNoQ+DsTtWWJo2nJKUK2VJ6RxrUVozwpQNboy4Nm69QJ1RQDUa1WZOg2wh
	 BYGaVdqsZepc/wCNBdiaJsgcWks6IoWLMDsciIwekFR2NqTyhZm+f4jvL5dwht/hQs
	 dlX3gHw4XbohTRNwoKPqTD66b9C/BA7QKe7MXGafAsncj9rX/olpPUvBAziDjcBrRb
	 2TLj9cbf3XCv1M+QiL+mx8L6QBGSFq8LeVTC2QQHALvAzkSpq1n1TROIHmlxPMVj46
	 /m8KYtvYre2vB7yNHTzEjA/qNajhjrvgXzZIVEJfzJjxWgjMXxMIrbjwchduBQlY09
	 CQgnEL5XdRUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9BF8D77C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637305368.7293.5072944961714389887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abbe1f4ef4c07d9c3e03824d8ea370205a2cc2030bce2f4b88a73ee3bff7e7c
Date: Thu, 16 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776373053
