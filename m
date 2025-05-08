Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30795233727
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746748794; cv=none; b=fCJ0mhNv3QuYfq0TUm+txicHCCDDZiglDdt1Gb6gWQLrTsZGRDpky9LAtIZC4u8Gpw0498GHJv2rbMneZXYNQGkbftihCrRhnzuMh5TNbpv1tYV/QCf5Q49zhmb7WZKIKdmVdALX9tPeMhkuJjNOlktDyxi2OheLtdmkrsBIP4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746748794; c=relaxed/simple;
	bh=FnxvPJJ4xHz//PyJMQVFk/0NoMFGPBY0vc+K96v+zHg=;
	h=To:Subject:From:Message-Id:Date; b=GEmRRWUAQKnA6loSAxeS+m/xoRJcKuNP2DbKrTL8LwHSttwNo5CNHJMaaevrQJ46h67N5Kklo6zO4ZvS02TGXxyzYTfPK5TI+CcVJhW2aXyX2zVn/JqcM1Qj/Y90ruJpfLrT2RDg1Lh7QMziPrp+S5zGtusiu+UvR0ZsHd8TL4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C86dd809; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C86dd809"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C94C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746748793;
	bh=FnxvPJJ4xHz//PyJMQVFk/0NoMFGPBY0vc+K96v+zHg=;
	h=To:Subject:From:Date:From;
	b=C86dd809uLUDEL5mos4nxzMBMSmAL7UlIbvuUj2BIXyADREy+oCLdm2LnFxtUggmc
	 1WfM6xHOqEOMwnsKQTHNAI+E3E2TL+KxaV+/tiBFC1zkaWuNIdeuQY53jr+qa+wC5D
	 PHfcQP0UWIQwzicwxJj6QcDDX11bgX2AO6HHCMIOXqN00IWMRdXl4H2PCe5mDG77jI
	 FrsCjp0p/T+PK+B9rmy19N1y+CBTOG3TT3sKm+Wfi6TDhhNCRjNoiX2KgKrIEsjbMP
	 cqrbdPlwz4VvQm9/Hprwco7i8eIIv2BdaqX9hOn641LYf/QPxPG68uqX+7IuurI8cn
	 UjkqZC5E0g6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442DC3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674879357.2696.1101712314947586692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf8dda883bfbf157f1a64e9bc5b0fb34e4f2194debeaf82233fc33a2ffc5632
Date: Thu, 08 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746748793
