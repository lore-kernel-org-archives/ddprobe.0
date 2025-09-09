Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20996257858
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757459995; cv=none; b=SW4ooNLVCxV0JRaWYM4sw7Vw6cHzRtqmkWvzjPsotg7JRNVHp8luwMj5151BogwfPjhoqHKXL+QKN1Z4h8RZRKXZLnaXyMdY4i/3hnMsM2J+msQzIsDtQdaPlkbf+5vIgHDVOTO0iNiw8Qbwe9xwR62UgIOGC5JgluHQKEIUxa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757459995; c=relaxed/simple;
	bh=u4nRTQlxv6hZVhkrgYfsNnrhUuPIVgHdsoWM09INz3g=;
	h=To:Subject:From:Message-Id:Date; b=Dr322brRaLzjgCS+tgDm6Svv3LMDrIY7N3vopvCf+hMa9seK7MmCm8ffol0wAyGU5vmJoKhkU7Vio8b8iGoapwH05Y1wMRkC5Q1WSVlXKiJ6srVx+UfcaModWqZk8mFolJQLTYGz6WnrBNbq/cZUkQ3hWu15BZ6VZpqMM342czo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0bDrzUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0bDrzUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4155C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757459993;
	bh=u4nRTQlxv6hZVhkrgYfsNnrhUuPIVgHdsoWM09INz3g=;
	h=To:Subject:From:Date:From;
	b=F0bDrzUthZYz8b1khHJoRWnUniBhZzDedsf+nHtXnagwhZDbt7FbU4WDWiuVNN5z/
	 MQQ0ooMinClPnj6WRzQ9/DCN+ZX6jhguC8t+r8azvDne9KBavuNRikMJfWSx4DlnKP
	 PDzeAuWa7AFdtlj8M2uqFnAiQ1Saq9Pbd7tjk1ISfq+1OcqbESwY4VERyN5QbGP4mD
	 paK7p0QRapSul3E5XxZs2GYWxFqhLZ4x9RbNaRxfSTIC8Wo35i/yTg2IJDrujjnfnv
	 RASYFC5OHOvvFE2hQyRJKTCNfZR+fA04NJ64woLcBQAmUMtjMOpvYA7fC1PIwC9/Pp
	 TZ7X66O4S+V/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5ECAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745999357.21285.5296077936817008904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6657a79d4161f7a9fbe005e0e011264399048fcb061c6cec07653e47964b19
Date: Tue, 09 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757459993
