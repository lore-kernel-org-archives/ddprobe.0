Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132362629F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756703994; cv=none; b=dKV3wfIMvT9IefUIeujaUNPPWuAMOgwAjaeDoaNI91DwNgy07s5W5SZDy5Vqy1wMM+5pfXLXJ80rHNcmcOk2g8x/b/7RoqRVcQ/83P6Qzk7+AancxbckdJAITYGHaxuXBxjPDM8J9Nz81tvkyRMQGStHLENyDra/GbfXwjC6Pg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756703994; c=relaxed/simple;
	bh=1qW4zPgqcivzA/WA+0ZlQzFUsi8xGDWnZ2flmdYidN4=;
	h=To:Subject:From:Message-Id:Date; b=q83rbW8Qkih2oZfOAEKFr1eYGV5m/ruBIDwMOR9ZZthzwK/r3ijbrqB+PMMUE9PNzj+zVawgnvj+WEaYCueDhGqNMolnFVv2aDpWTJYzjRFbDRBPqqU16JmJRKJeHEaHb8w4UTd1/2oFuBlTNLNuIIAt1AhxeIWRA5WkMTK0sSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7tEO+TY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7tEO+TY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4170C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756703993;
	bh=1qW4zPgqcivzA/WA+0ZlQzFUsi8xGDWnZ2flmdYidN4=;
	h=To:Subject:From:Date:From;
	b=W7tEO+TYqkPbuCGVg5bf+gTGk4hQQew3bhLqJNLFSw83zuRxssYk6oGtHe9S/V3F8
	 1n6vbguARAzGcKAlEg54vjuHbuTdIH9lacP9KzXWUVLk7gThvYvSmrSM/MFdcA5FPR
	 DldEVc96oT3vtTY7x5Qna2AbVw3xuWvjTl/7vqNXn3RJfAlS2AjOqgVEvZPTY5Cnjd
	 i1ipOR2AB7n48Vb3kYGbNnjMYk68wUnqK4QTbsHfgABeCcrYt6aK+GSTUb8uYkozFF
	 +Lgd5j9sdL0lJ4ZPpvOAYHoIdwJ8HL7uANTaR7zvtM6Iqy85VyE9Th7lrV26sStX5M
	 fq2NuSKBcLtNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBECA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670399357.7311.7147962087880747702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19fdddf810033d0aeb92f885cbe7c3f2ed1705921eae83e14945709f98b355b
Date: Mon, 01 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756703993
