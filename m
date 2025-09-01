Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273351FAC42
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756753195; cv=none; b=n6EfcQe2Dp2yDCVBB2h634izmGCWa4yy5IEfx75AlPp4TSVym4VMk2YmJjacDWbBO0CJvOvN/+G/hTMrIkg3g7afEvks+6/L/Ug0rY7TcDW1wLWZcnpqPTl/655jbevZCj147Pcm1wmmYB1AtoSty3eIQXLGSYRNPF/Mjdl2zr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756753195; c=relaxed/simple;
	bh=68XEFhX80WR5l6maQCgGoEZ8nScTvglvvySSiQ6L5j0=;
	h=To:Subject:From:Message-Id:Date; b=tIY+5jCKYTsHKu+bTTziP9P9gQ/laInqwHa+flcAByf2jOjool4jukwMI7mo5vItPgQuUdFZJomQCBzlhqHhTqREbTsdgT7AOWUTRiqR4PTSVVu2DiptBEtKw0rq7wbTo8uU3LutDE0Cdmoxb4BjR7xEM0wt9d9B6hEOxESxAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHIKgLNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHIKgLNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26DAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756753193;
	bh=68XEFhX80WR5l6maQCgGoEZ8nScTvglvvySSiQ6L5j0=;
	h=To:Subject:From:Date:From;
	b=SHIKgLNQF6w3f/C+i9SDNDK0Lncqc967w4Fe8sPEK7KREpsCwdTiqChkdW2q++c2+
	 EK74d/nH/m84b9KRix5bxOc9dtlczrGh3xQ7hC0/DlGFRRGAI7j1Lnf8jLThvKrKAL
	 J3MghiaqcE9cjG0GbgaW/mcu1HLOjzvnySuTaQKLMUFQat6acqOKMReIXkGcWArp9a
	 Sa7ZkyErNyBVmdDTyk0CCBZdfUI33KPPTuX4LpMH4btQKcgi9SZU0nMmHudeXs7vt7
	 fZsI+AzQbooiM+1++TRTBfnID0iRfTJgwaCO9DdvY0h0BViBfHnq5RU7IvSHFn0XJ0
	 2AxCwQeocNtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DECA1000
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675319357.10610.14241560181866004412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd7e1d89b23bf674866bc14252c38bb4b933c154a15c27b7de8280acd2f8a22
Date: Mon, 01 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756753193
