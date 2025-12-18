Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1452D2264C0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766026434; cv=none; b=ehQ+2o9r4kb9hNjHaFOJzfYLSPr6Bo/YAi6GE49gbd2KAqQWtmhf1+Aak2Hn9fnz9KmKuQlZHIccY1HhL71NfEvJZ+1KUTG/Pix/bWBmVHgIvXgr5dxcejcaWhjMHBWaxCfiMYQCG8vzq9dFvq83bp7iq1vuLsNn7isgjEo/uqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766026434; c=relaxed/simple;
	bh=XDq7BJkyXLIqQQTYV/nB8hf07MN6xPu6g34Cd4GOOxA=;
	h=To:Subject:From:Message-Id:Date; b=aN7qbrzf0XymJPI9v4zQrwSCaU+A8rh2FiQ+9e2usXWZE2eihyR6YAVPOVGzodSr7L8/LwVZQqKauBOpzQXrBEEat5QJbm3koVp95DgFEL8JrKIXRdODviS4gzsgcLKUXLL6nyMS+NVFnveUf6M9KD27MwstZeq0XrG6kgsIlXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COf8jRip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COf8jRip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA49C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766026433;
	bh=XDq7BJkyXLIqQQTYV/nB8hf07MN6xPu6g34Cd4GOOxA=;
	h=To:Subject:From:Date:From;
	b=COf8jRip6RK8EKp40jKjGl9fd26YRDS3RZGntbsO44EHV8pwpKR0Orzs7ocrMw5L2
	 +ovc2BnPH+HIX/ET33ldfGpzsyDUNJ89gDlYMylKhSYYgGOtnUL4+8QNc6v0fYO6RC
	 2FRWdXnyKWb7RmTMDcZAfzCdUSQqt19yQvwYivpXGX/yqDJNmMpyOhgvus4NRYyE32
	 +12Ik/u637dvjJpZxvKQIAlrIczEDg7nxF44PQLdA5iLT7/jiue4IKY7js3ZV5NFIZ
	 cLP0uKXDM+lq+ctR6bTS5ZDRRu3CLQxm6MHepPUvKHKYgkgucoQYHyn29eMTjD4VJ4
	 UiirDMS0qrG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFDD68BD0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602643358.14775.13577406509538165036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296ae05b79b494d9eca2661cd8f9ab0faceec45c6c6815acb70e8926a881816c
Date: Thu, 18 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766026433
