Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578AA377EC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781008534; cv=none; b=Io/jKijeIlB8emRkCGpUvD5rcbrjy2A6vDeigYkU5iTQCusN9hU3JnNyzZf+olR1LxOstE6DkqJ8ERghoAQrrEkqP2G27jRjfmEuRjnSeoEgCA3TKRClX4eDXsfs52FYL/cop8gqhEYLB0GaiZJceanw+xtLBGruqijGSTs5yb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781008534; c=relaxed/simple;
	bh=3VDDUgqjR+q9jv/T7t6p6IOOiaUj9KSS1Y5+YKyUi7M=;
	h=To:Subject:From:Message-Id:Date; b=rqvp+bm1tnyMh5PpKcOd73Trbe9R6wnX4mKcJJ/JRokdosEqhxMmlsX0HcwoEpeJKP0tD205FNj+rhpp1edbzRgZcdRO4427gL4EkVBYUGEzwqDPvKnv7ZuU7xbk9uWqnfGprnaK6jq00FUuzEOLsI1fv3rXOEAL3pk8KT5tR5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTLMlHcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTLMlHcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0417C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781008534;
	bh=3VDDUgqjR+q9jv/T7t6p6IOOiaUj9KSS1Y5+YKyUi7M=;
	h=To:Subject:From:Date:From;
	b=PTLMlHcFO/3RsCNx+YwLR4TjWu0pgZRmIipLyuYfm4D+Dmks0jLtkPi+ShFZP9H28
	 8a/uiKwu7YfgNtSk+JlwbVYauY5Y1hQcayMWeqX9YC6RuMyg4BKAv8fOIglecGcNNv
	 2TpzaGKUUoQDWccqkAbOtlc1q7/0qLWjLyFYsXaOdBNHqyk2w5p9W5CQYK6Lbe6V/R
	 NrGavuwcjXDmSJMc88nv/JmC987s1/3qVx62PmSUFxpP4kkyS/cWTKbUUYaaNC7aYx
	 Adcko/UvcfQ9MmqQQnEIrt+mq2skvh661rwul/BneERtmxOhjdIM5rSgMxdgIMPeWT
	 Syybqi9tRSI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C010BCD8C92
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100853377.5023.16381624525758085504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7657e59feafec3762871ab7259f886107349055069887dc87d1df62863db127
Date: Tue, 09 Jun 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781008533
