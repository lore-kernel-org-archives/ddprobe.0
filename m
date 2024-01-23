Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAF761674
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706033296; cv=none; b=YZ5AMs9Dh+i22MxK5uN08Z5D3SKUYUCY4o44zI2F1ctMyh3HXPODbpSmDAr3LTW0L0mo6cEcbk4l1OSlBsafrYMYpsSRCgjqLYFXrPOSh2RHxIRkR5ZUcGPNQcXq51BXpGk19Uy5ygavTLkxK/sNkxNhtDxe9aIao8K01ZLIFjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706033296; c=relaxed/simple;
	bh=w1fvYu7xSM3lTX3dlqnWmbiq8h7h0h/EgmN3EF/4BME=;
	h=To:Subject:From:Message-Id:Date; b=khkdkl2nOLWd/asSae4RxmrtwpzMO5D3YHI+FA+xYQ7IYQ4IC+SFKAu/CjwvvJWnBWF5e7kK5x+BAjmTe1iRWNaftZVRtaQGg4J8ZkSuqM94hasiHYZ7rcBlWePSpn4DNaeX5MBUvI3huSMFgF6ZPiLbd1aJoVvqlK9PgGfcdYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqSB4cgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqSB4cgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7186BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706033296;
	bh=w1fvYu7xSM3lTX3dlqnWmbiq8h7h0h/EgmN3EF/4BME=;
	h=To:Subject:From:Date:From;
	b=MqSB4cggAsmFfMvQMDc7UcDPZlN/XkoVg6jYo54WqACUJtNrL45gmSYkCh4u1LVF6
	 CXcKjlWaV+3NMWDeRuP507ra96Ksaptg7Sp93JpDgZTcrg5+lzCxeglyTkHhxXgDiB
	 WH6aRIPAVOrB+CxMhM/0vejURojxvakVJ26K6o1rDZpZWWqQFWSZfW7AojabxA0F0G
	 hKZWD00amGlayjTtPK9/BLbXyqLaFPybKa3uz9VC38UkEB1TNr9CQLuv7rVPz4VYTM
	 VeMItwhVWVTVwbMTOG3b+NROKRtddrLiqk3kktdBG9bCeZZxpuKF9JUZPEm/K/BKk/
	 cp4kG4EBrB+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2FAC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170603329636.14068.7758656445320509924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd5801cc07871b2259a061b3a056e2399599f6a60b406da4d09c1aac2a05acd
Date: Tue, 23 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706033296
