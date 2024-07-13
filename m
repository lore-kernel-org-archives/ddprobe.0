Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5372B1BDD5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720864823; cv=none; b=l0gSQKlNlxdwxRKkx/cjzy6lvLlMa/KsF0mQLF9x3XN9QJaGDC41ynkTZctuM2tzxRcvFYBulxTYGjUPm0WOWuinQe0lepxvysd+NVo4Zyo+UF1VZiZE1vluAnEuTyJrUXdAtk02jrzw0SKhRNawADMmI8F8VqqDxNekxnQrOy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720864823; c=relaxed/simple;
	bh=pHx4MYJqlK6vJ9s9TvjmxMKbWQSQxyxpv4NY7ixSa1g=;
	h=To:Subject:From:Message-Id:Date; b=JwikUpDEjBDJ3VXN5z1jxU02pg7IHMPDiQdvPMQ5q/S9Hi45g0gJJUS1qbcAbbFrP5/bzPYo1rX7Jz8p7I1/rvPiYr1upqYZWLYBmzp9YlIOUqGJtETnmuw+KeDoW6rf+PrsWoo5VTJ85AK3vrynTDW6RwgLZwBexoHWsb9h8V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkXVb2jZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkXVb2jZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD418C32786
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720864822;
	bh=pHx4MYJqlK6vJ9s9TvjmxMKbWQSQxyxpv4NY7ixSa1g=;
	h=To:Subject:From:Date:From;
	b=NkXVb2jZc7Bp8k0cZbBNDYz0BkKuTtepwLcYoVlnKVkpWQETC1xre7OCPRB5XFJOG
	 90nG8Tfq9Asnfb+lCS2AwgG3Gm1NxoC9fzs3NjwR/utthFqWmGg6asNE/oqY4dNJd3
	 HtbGTzaD2nDcsRhxJZOsnzNtEelCYV+K3iHixN34No3hnJopE42Sie7gnRKpqLE9QB
	 WRmpNdIkK7uFAeGKY7S/GGid0gbTB5RndjosU0aaUTNnBLhGyHjmvvhOuE2WAXuKnd
	 UtWKdO/+/umemKOGcj9PipWAlfiazlGhxjP5Oz3KtRuPtEzRyMWr2sGuXdzlo4GBR/
	 oWFTI5jYhrUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7879C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086482276.20415.9953417135085233254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659a65d30c29fe3c41f2ee2491872fd65f0c84ea92c410f007bd96abf9d5f021
Date: Sat, 13 Jul 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720864822
