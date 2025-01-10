Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5073379D0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736484954; cv=none; b=UDfy8eTT+R7vADy/xrpRAvdoNLxyeAKPqiveDLAuOR1eGRZAUvj8dFWUglwskPG84cFBnCOLsFAQ0AtAdLFKqVhMJcx3Nut8aybUHmkd4HygJ2UoqYS3pf1C3NKPKmxPcBbatHSuEuxSIboE+gXTJpzRKP/TadXvQ/RNJZAqW/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736484954; c=relaxed/simple;
	bh=r7tWnmIzQBz/nwDIFJGRLw6IJCMywKOIECInHXcqqLs=;
	h=To:Subject:From:Message-Id:Date; b=OBa+E7KpOtmauug0zwk+Noo9Ao/xxwoN93q6sepvceLiUFA5pjZC+qDUwhPlHzWH9Jci1/61VUGTRF4XQs0txOshLmqDRtNEKLqz4p8bRqZKdtHiPAlpe3Sla4AuAr0t9sll6uEPUl4sRShgO1VJk+/ViKnAeRVPEHdLK/pxnx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c893E8cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c893E8cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08A5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736484953;
	bh=r7tWnmIzQBz/nwDIFJGRLw6IJCMywKOIECInHXcqqLs=;
	h=To:Subject:From:Date:From;
	b=c893E8clvW47sAGfMjLICleceN/90Mducg+pV1D56MvPqolVNpxmeQLOfIogrzYnz
	 Ns6fDgKl3Cvz1bV4jsKfCwjafx5MeEs3vOrKIxS7I7biqAai+Kkjf/0KorMhGMk/mK
	 Oz5K4ZP2+RcDhrFiVqYkueUBw96v+vkXRx+xt9IFqN+N1sl+oXkxjgBIcYeJr7yP7S
	 LLgYxYWT6eObnFkCjFAJbpW9fBirutlqR2fgPoMoQRBcdmFvCYgQA4hp6TF1WuTXDg
	 LO8te/sovWXoEj9AzVAv9iTOLhy2RQL15GrP86v07hK5XLdKwHhuwQczwRxiPNkPR/
	 VlMkMZkl4X18A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B18E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648495365.8971.1672856071242431122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ca52987f300dddc2e3a07ad4bc3f2c876df04958bcf3ed743faf8e9fa29c46
Date: Fri, 10 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736484953
