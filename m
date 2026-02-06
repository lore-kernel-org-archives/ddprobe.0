Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C56332EBF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770366234; cv=none; b=VDWpI7LeExa8EXPqlXM/l4Upy6rmwr929jjPbAiV6LipNb9zJBStA+SSdKA+v0+CAV4RIRhVsQ2b7BZ2WsnTtE7Fkigmcu48YzOWrDzh3JGY6wU10COyzLwTPRfFKOPrVZMl9k8haqC2qWe4q9+roQ6HCEHLZIZTtjL1xP5ytvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770366234; c=relaxed/simple;
	bh=ITjjdvz3u+I9C42tHEK0omYmBQRkUYjIUqruEIC7O2o=;
	h=To:Subject:From:Message-Id:Date; b=nHGI2J5cqxQfySX0KQDO/3rPTObmgsbdBm6r61vGtU1heBQoY1NmM8l7ORKlzw+I5dU5CwwId+p2T3FrccRE28hKLkN7lVoyAjSma0ncDNEWmvYucq+4L3pHoIvzZ4RqZfkc03T1kKTxYlHBUdJF36nrQD1rXyyK0OfwRzsr46E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ok0TRJiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ok0TRJiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422DC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770366233;
	bh=ITjjdvz3u+I9C42tHEK0omYmBQRkUYjIUqruEIC7O2o=;
	h=To:Subject:From:Date:From;
	b=ok0TRJiYYwIZCSurIc2YdEL6G5HyiJ1zv2LXwdfpJAkyvxlqa1n5rPgT1spyGXlDa
	 XcS7NttIjMZlL2VJs0GwxGztSRevPb18v5zc+I/f4ZPs3aiz80DEsV2C9GsBueqaK2
	 4bpmecznEW2rKPFh3i3foFvckGxNXOIO/D2KIVapIe2RWdFGt/D9tqAsAsLS98Qqrm
	 ukIsyClkJaAs/GrwQOgwmFdkSKg8FatWS15YWgDEKvbo/DtBbwc1BcNWcGzIOPzRmV
	 JAbeGEHMvci4bnjxRyiJrV2xACSPhHnyFuK1izAeQ44iwFTDEpkiYf1nrXehJlDBMD
	 d0uZkXL/t9GtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155DEB28E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036623358.5632.3008948353492841199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777716268c99096039a7c64a9b8307889b79e5ffcad081a6b99b23781450791a
Date: Fri, 06 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770366233
