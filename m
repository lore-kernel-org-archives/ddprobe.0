Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B01835957
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249234; cv=none; b=hOJfUfIl0jmL9DIlM5egZM2VxliptOo1Og+2yYA3fUu13QDITTe7k4ci6h0tzYlJan7cFQVrgAu5F8+NMKHEKPD707RzHHF0mF6DZXQQSdmvQq3Vx9AbS4nyb4LvULyamBLX6EihzFModH3iIK73DbJYi2dzvLaXuknl41pggHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249234; c=relaxed/simple;
	bh=u89cEpe3MMRWhDJfieWy8feX4bkiiexO0S7TfEGkfq4=;
	h=To:Subject:From:Message-Id:Date; b=IndvirsSQMNjUAZsTHLJQ9rL3oeSi/rB4+j2bLUWRxFTeK+qsKZEV86jgrufEk31KoEXuKnbSWdlthtBMfx+NjPBDSEVCbkTMkKFVOuLlvVGP1hT7sjhikV/2vJgP5YGCOrheQNc9/k4PkNTd3OVauxAvp/zF9Cy4VQ4ij1DHT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZruKUeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZruKUeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6400C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249233;
	bh=u89cEpe3MMRWhDJfieWy8feX4bkiiexO0S7TfEGkfq4=;
	h=To:Subject:From:Date:From;
	b=PZruKUeX/Hu5d/j3/2moxwrIzbO6DLmqOyFB6zKB1DAj29WcVGlv66S3wM2kDoM5R
	 x6Ex3zSOyJRZUxioIqajHvO19zL7rrZzVOes6UUmMF7cMbYgxVRAcbDRv1Z0UfLA9X
	 +BzX6sg/S3ChD9eNnz3P+8wQP/vEPAo7xxMF8QA1HWvvY165AwbQAJl1nYSzBke3fX
	 NkagSYy6SyNVeyUPQTkqKqAUVMkIUE04oGRWP1hhdazN7EQp31kpxtnv3DnKKzV0Er
	 GA8n8/dsE5XaDjU675qdeVDyW5L4lZhcJS9YGoUl6lWlIw/KX6+qf3C3dtEKgqAtOF
	 KylMVk2GJvNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92039EEB56F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724923357.11713.17243415110891908722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9ae89b440926d1829636036b46b938db620e96a9c3bdae622df03f3fd5bf27
Date: Thu, 01 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767249233
