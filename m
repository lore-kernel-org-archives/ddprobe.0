Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197DD3016FE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765453374; cv=none; b=LTrbbqq5psAYmrtvPeppAlrCI+NJuyTU+sl6bovGBJ8XYBAwgAOyHyLPPrZSQ//bfz/8Wm6Q6OzZP1BMGjIIkZ48ZkEOlNubRLPDzC+ihjv8Pfg8z3KCmHVMdCekB9JTehRjnEfO83z9Nk7Z9jDIbmhCVZgnynVSWrDBphHkAVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765453374; c=relaxed/simple;
	bh=STx50fx+dr36clXE5XowDjTQ/EmXoMWFOP8bU22Dhw4=;
	h=To:Subject:From:Message-Id:Date; b=Tlr0v/2XYe2p+eSce/Us6MHtnHGlatF3llFJnWlxSu5QzFrH012rGOqz3KMlWsl0kTAo1+2hiYbghh8HtVHLPEy9WGtAV5z7+av824FPGX9H2q4DTmVplDe36/ag6y9U3wHCj2FVAJURcZbZUFYDugpYpSMTXDJdq2p201VfFWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjSHYupR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjSHYupR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765453373;
	bh=STx50fx+dr36clXE5XowDjTQ/EmXoMWFOP8bU22Dhw4=;
	h=To:Subject:From:Date:From;
	b=cjSHYupRxTc7DDL20vQQ6GC1sHgJGuW07VnAc6otxDzM32h5gV5UyTp2jKOZOnBVK
	 hwURWId/NVFty/q6kqgpKvqcSEcezs1FKr3WfT0eVTY3qUue+MHJK1G48K1OFFOP7+
	 WS3SWRyBm5CsKZz3Cp3wfF4SpYOm9sop17SKBg+bifkB3Gi/fw1fVWtz2cJP/4ksGg
	 rbUkFPLmESSMVRDl43KmYATjLNgjqIVLY2e3LsJrfnryV+s7vOrj5jJpdpoBGy1msC
	 rRkN1U4xQzNVoYZde4ZN1RgoQW3Rten5tZYvuURSnyK6Ps0NWVBhd1atY9JZZQSrKM
	 qIyX+SAxqzmEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93147D41C1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545337359.28683.16566700157152124829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e295e37fa0a30d8eebafd2c5838323e50e22da632eb856700acd62c6546afa
Date: Thu, 11 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765453373
