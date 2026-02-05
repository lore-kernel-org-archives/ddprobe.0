Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AFF3D7D92
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770300234; cv=none; b=i6zo8JHw0vgTnFtIE39tGHYQBoIH/UKej5Q+E4Nkw68CMc/AmL+i7BcgPiigAn2QYTpv+AT+w8ZXV0UBfDFXED/IC2BUl1pi1/YLb/NpZoAku0DAeHQMrehSxo0ulpeMB3PtQAMQ9UL/aL9qOOwem7E87mVVm/80vNm143jqCIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770300234; c=relaxed/simple;
	bh=roRZ3VMaSl5YXq4dGv6gV8f5XrLluFgFVORwNm5gQnQ=;
	h=To:Subject:From:Message-Id:Date; b=NA48pb8yejMo0TtwZ0urH9zkJel+wfRLJdAkFieKn7gzD8NJs92fBiSrN9ZuJhvlkOfKfBOMOGBQV6iQOu6XUtfQJNwiCOmeftziVX9oq+xq9teapBd6K27XdqfIlU4AB3Ux6m74Kpu1/LoLHKpF/Ilcl30+thUZTtMZim7u9eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiWmOAaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiWmOAaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE01FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770300233;
	bh=roRZ3VMaSl5YXq4dGv6gV8f5XrLluFgFVORwNm5gQnQ=;
	h=To:Subject:From:Date:From;
	b=jiWmOAawbDGwTRsHpjTPwVuC87AtOAXBVinGPefZSnJCqlV3g+azRLQHDODEEjhGs
	 CrYqjDnfj9jNc8/Qk6+Vw25lTv8QgRQ4hvUORtgw582NZ2hujkBGz4d6ON/ebQ765X
	 EZrX+GDRvDYx7orGpsiordC4Y3HFozqELUkIPiuNhIbasJAunzTKjsoBzy0PqYpIyO
	 u4N9XqcmERJtiN+BibV5A6G5UvYQLkR5Hq/dDtrjW4zwmLTqWiuZANHOrSp6oznxxm
	 iOn+prkFvmhCFP4LbNxQ6GxnUWESEU36t7VsoNfcE4BCdX3xKo/isGFExID5agzQel
	 7WwAnipGrl0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B21EC1EBE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030023361.30745.5867071515172916730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322327d39d8809b4714d8f2ba0ba6b8fb21d3713d3ac08eee441e27de5f7ceda
Date: Thu, 05 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770300233
