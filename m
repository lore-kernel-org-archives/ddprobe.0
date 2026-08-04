Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D13C282F12
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785805234; cv=none; b=Se9bMfbulWaqT7XT2KqhWy/sDbxm+hpcOqLac0PKBHCsRGlShEMijq4Ld7uan4l3K8llT27tBCtVz4Be/9O7KVRODjntniROuSqO9KrFCOZL4vzlgiXExqkgyxyzRKnnTf68MOg0vM4TF3p++aYAakh0g6AcV0Xn0jDzpvlciI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785805234; c=relaxed/simple;
	bh=rrXwog73LxmExpC3yqbP1qApWn5V9sg7G7AfsSo9biE=;
	h=To:Subject:From:Message-Id:Date; b=IqWl/D7kMlDhAFR66IqBvLOXGylbsTXhKZqezPA1poXHIZf+yjiVQcFL8ZsshoblhMilm/HOISgaO3+2qwRGuUXwY7WFH0wI3XlkfvJUWYLlDrdpf5sIvsI6a/WaseyifRY+KPA065rBW6i+l8Z7C31KHVdC0kjtHevx0U5pz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPh/nyV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPh/nyV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D777EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785805233;
	bh=rrXwog73LxmExpC3yqbP1qApWn5V9sg7G7AfsSo9biE=;
	h=To:Subject:From:Date:From;
	b=UPh/nyV+lLeWwXMLrOU56yAXh22fLVI5uFvWXZa0rfTtWTLE3yAU1Zg7B9wW4xY9b
	 SGFPwOP20nRalE8LaMtw8WNEuN6U1ttYju3ioZLUzdQZQjfxZ9EC/kzQ3RvabFk9L2
	 4Ye/urXbMJBE4gJvtCAraOtWAdG/GTnXA0dPmoslHcpRkN+LLgcwhBts/jLMSy1pXg
	 l2MX7y6IM7NPZH/ksBILhq3ar8+OWu3zl5YOE3VdjnGQSStsgCwgahCgjpmGp004af
	 hOLbTcwW7FIZoTg57Y34cRIODgVzcUnM73qVVLmpd3MX2m0Y1DkyciUYueDDjfBy0R
	 YvvQ9SRj2sLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1899C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580523369.2930.12911921427167553739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f867d04ce62db95b2461f57bcab8c843b0fdd20664072abcf8c479af954b3d9
Date: Tue, 04 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785805233
