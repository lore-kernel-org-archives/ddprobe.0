Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4F2BF01B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750106994; cv=none; b=oTtOLBY+MRT52N6mEvJPpiw3ocGfUejR4vFuwS/Au7Irwo4AHorNXrIkKqTpsffchlFC6qk+2LzURBiwdYr+OZLMlQHqDUXeJ24SMDjC4KHBw9RklL35bj0HaQ9vjo2uYwC3LWVmNMjMkAMuGSwZ1YWHsVuP4jtScv0xSfR90FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750106994; c=relaxed/simple;
	bh=8mqYx4aibvAHcrIjLnAdaQ5wMmW2a837tvNrfXe3JDI=;
	h=To:Subject:From:Message-Id:Date; b=p7bRAEtTVFSfPkX0ktiFoVy5vpDDnQjI6gfErgEpuTiFLLEi16WL4p3GeJE2IkKLRU0wIa72b03GXFz0rPsJvSGl6v9CmcGZFKkixoIfDbWQw0/EMahxlQYEI9VLqjfAkUY/i0RKfxr5GW56pXX4DkgzlDxButNYE/cGSrlwD1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU+QLC7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU+QLC7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424FC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750106993;
	bh=8mqYx4aibvAHcrIjLnAdaQ5wMmW2a837tvNrfXe3JDI=;
	h=To:Subject:From:Date:From;
	b=hU+QLC7hn2MicS1xQKPbDZCoerBvikAgQBqDDLr31GoVrIBQdIdk0gsdpTzHHG3nY
	 DFN25zBYwL3kGa4bYtSQqzpW4DRLQGqmz/CBNYm1B6WLeayGGb6BvKy5fZhBisJ4dz
	 77fo4aL5FWwtAxFkMeipwiIajjqLuWEBs7PmCRG1HAdve0r+OVqqPFh8sqi3PVWSyO
	 I4BfYI6MeLOmWltL+QIIUng5045FCTXNvA/xZ73wQVgLytKIJi8uf/UKzyjx/ATX4q
	 BLt3nZ3WFHvXPVeFUUwi/OcZl4eU+sYlHYbSczRgnm87RhEebXK3VSEbg66ZoVyHmn
	 DP85aDowPk8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F1C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010699359.11363.7972680239579322072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f42aa536ee54aa0ec9d78364713e306d39a4d923caa98bf22c82ef1af1c139f
Date: Mon, 16 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750106993
