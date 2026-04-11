Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D828504D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775899654; cv=none; b=SE8CJ22UKJRTwKI/6SgbCO/zk+tFP8qHCunhKBI/2EhaAp69y9hSCDSXUZ769cDtCC4ij7XZStkgHP8drc4AaFiP4EFuyu7bL0qMrsN9n8hVO5z+S78n90h9jXLr3TwND0Ioh7LJvg7GipBrTKTPAKVLjihK1LCP2g6ktwqunFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775899654; c=relaxed/simple;
	bh=sAMkO2E5OVmQYBkimj23dbOolAIU5/weZajsxRIt9i8=;
	h=To:Subject:From:Message-Id:Date; b=lcWOECauO7vrfdgzRMP10reyQIPiFUpuBFgXRWCr5EwZdyYo2glE/NHoKbePf0QEYHKzb3fOH+dL3dHsgekoYHXgmuUcWlE0KqrCQA1OBRGnr9tkwoedMxFeaN9KAJDSY+ceUzsdN2FhLYbZRPaBEYfdQPVHh3KyPeFub0pbA7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu12gDgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu12gDgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB32EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775899653;
	bh=sAMkO2E5OVmQYBkimj23dbOolAIU5/weZajsxRIt9i8=;
	h=To:Subject:From:Date:From;
	b=Qu12gDgxbHXAPuHjhaP4vcxSFjaLzAHmn8WBSyfPO1gF37VGWHrdN60q3TH72GkP9
	 08b2oHN3L1xPde8sQWF5z0781Cu+xq29HRb7yDisxbeXfW/h7t8DKCEx+wt2xenE7m
	 HSag2cIYdkkFRxxUP0VZp3QXlPrv6qPQtecabWn1+In7+ENkxRMwWRGMpoCK6elaiA
	 xaq1QwCDET82AarciXGUhJ7oXqDAuVA+gHcV8x1jmWMQilVGR1AZ6hidDJbfxD9h4M
	 MBvD8y0xgOoInYt2Q7JQ8kfoDP5f676VG/P7tM8W/D07fxHaj/KGc8wuCe4V13m3oT
	 HmwgfLG76TngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9332F45A1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589965368.13338.17476853793914430813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fdb750901a84213ecb0013a353070d3b554bb6206b2652c649e86766325731
Date: Sat, 11 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775899653
