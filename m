Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4991344A71D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781202994; cv=none; b=ZGz81gmPEDo7zZao7Z4IB59oGh67o2wGSIC1uJKp6G3liSCAubLDEPCKSWeqpQBlUrbTbgV7pZ158OJb4fVSoDd28Q5w0gh/eI3L4DQn36IF4aI8kBSfTBkLohlY9Uzb5axHakSUuxJ+S4WJGPZFIxQF1k8JdLMm0lvv9UoHmUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781202994; c=relaxed/simple;
	bh=usPoSLCK0C6vzNDLBCGj5l3xF/vWRuQXK3RYqH5WhuA=;
	h=To:Subject:From:Message-Id:Date; b=nO1POtn8m9dw+DomvAzWXl2/pzQzO4GgtJpqcKUrItzxjCiaDwi7AbPlvUmkGfDCjxMBCigf3+wWB3k/htL/rIVqlnjUna61ZsYxuNnvQZvUWiVMdQhxvEPXpaY0PbpbeTzxqaQDQZ3eWpNrAP2lR8y5FqYtuRONJxXipkNH3zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogaJIwQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogaJIwQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1B5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781202994;
	bh=usPoSLCK0C6vzNDLBCGj5l3xF/vWRuQXK3RYqH5WhuA=;
	h=To:Subject:From:Date:From;
	b=ogaJIwQ01/HfHz1QN1H06P5ImsreAYHsBsoPm1+YiSt7Uts4UF5MgyYhX9TvaSDaj
	 bCfvxEknZeUWkBU4Lqbtelgdd8lhB77Q/Xv6e4tkSOXXzogNgZsm49T2BIkWOyiHof
	 C6378pO+2uJzXHp9ZjyvTMZMmMHIN4rGo6PLip42sYSmIkdkvX+zZcqaa0dAVKLLHK
	 ISQwtmo/yKi4Aor1DB6HAqGB3cdHjArjVMec0JUouuo3zPIGAaew4kuO8rnBXkjxCr
	 t+zuUmLHzHzQ1Ffig+ukz4xnHyuUly9BAxfxt2jV/9dzXSnFB2kwQ9kWZ7hvyoo7G1
	 agqaQvvyoK9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC02CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120299382.16543.7583452691564777607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8136371c4d652623174f084f5c67f758a7862507fa0c5429bdb98a060681d00
Date: Thu, 11 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781202993
