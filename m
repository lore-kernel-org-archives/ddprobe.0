Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2615618952C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736880954; cv=none; b=uXZChXgDQFpbuDJ2s7aMwydKZmCnfAzNK727FOkfIc47r3cGrN1/Pg8voqfJqzx0yAgs//idYXlaxVgm4KKRQxJpAO01ebFnQnelOSi0UyGMeAfON+JulkJhQPAr4oAL14i3Z7sVda44SuN1luONnKMZfa8AtZYRMSdTt2ihJfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736880954; c=relaxed/simple;
	bh=fLCbo3LLk7kIQ7eT095YoAQlDZsZb+d9SXfyZJIjio4=;
	h=To:Subject:From:Message-Id:Date; b=Ww0Uqq494ckcEWOq0sTB5RolGtJ7y4IM9ka0vIlW0X63wbViI6w/LPr8w7D7gihbMxikmPcQxzfvA7b8R/0uPg4PNgTtpMpDk2rcmpHpRUv3kHP//KYL/iK4ql+q8VzisWYs2nqur7lFuvJgQMff1y17n5O8H/y+EFp8qE2xLqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJHi20qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJHi20qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E35C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736880953;
	bh=fLCbo3LLk7kIQ7eT095YoAQlDZsZb+d9SXfyZJIjio4=;
	h=To:Subject:From:Date:From;
	b=vJHi20qcXQ31yM3EC0moZnX5kcYtVaZ77Tv+Mz5221Wkchcboze6rxeQjQFEeW4yS
	 zCcctAk0csRl56qBlVGB+z0tj7X16Uh3SSVqD1txvffSUqKjjoKZOlvV+SpczhOtHl
	 DWAeKMTDxjb3csyaoHeoTUMTyPV4mkF7nTu0sr4FhdDe/SnqtnxEELzUj2VN5MPa2n
	 4BEevUGdf6vmanse2/G6I0DFD3as1kLd6c5uue+pn+i9/KLsVW58bn98ZWS9KBwO6m
	 8ogE/SVUHnWW5o0829suoroaxDIBb6Mctyshyvu3prj2WHuJu0SiGAwxTSlew7KnJ8
	 tE2U/tJEEgspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F2E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688095358.24036.5005142284515413669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0613f08aa6c160219f9a86490ed98898467c885de8a77b3711c40b432dda4a7a
Date: Tue, 14 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736880953
