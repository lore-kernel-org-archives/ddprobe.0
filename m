Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577BE1DFDA1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784809834; cv=none; b=O0py40uBaiIQ07aB5gPJPc7vRGpEjw4RDz9mGxosr8RowaYEIkoux/b6/9wd2LhXC+ocZc7I+e3cT27V0Qez5xwsDIMLpEoKhx+uDlaEsy5nxReii5O6aBBfMBgsDB+ewsGcpe78P0s3fmgNYBTPyGaxDKJfDvdREFpuCvKvMbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784809834; c=relaxed/simple;
	bh=zLz3NvzDsTuHA9XZQLOcGmE0C/uCyPE+h3w5PxBXb9k=;
	h=To:Subject:From:Message-Id:Date; b=RiRaEfT3EwNzIYHDrSuruxKbqINyRUrrboR4nUK51zp0kBAy2tLiCz3KLMf5WInRc8ApgWz1PwLnJqyM9PPKd0ggVLODkBdx9V7L66dIAAiqHQpruQW7sYhntyPMmwgQCbcVwXzu4jxXXkno9ZVhxUWlx/8nELSBVGIggsXAbi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suJV5XxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suJV5XxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD36C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784809834;
	bh=zLz3NvzDsTuHA9XZQLOcGmE0C/uCyPE+h3w5PxBXb9k=;
	h=To:Subject:From:Date:From;
	b=suJV5XxAUNHltaXZ87wGDZ+o/Mhw6krBMzl1J7CretFX34jz6iPDbSgMs0kFjbvMM
	 ycql9j0wbw5ROQGiI//aqYne8KizrN7/3jm3WXvED1K2JbQraYHKonlVwD3vM4qvoi
	 6cdIm3WMiZu1M0zN6LQMnzlxTMHunQhVF10TJAdy6NPf9K9FdH+52Z2CAY56/p+qDx
	 fuyIhjMpF47HBtFWSuria6BGEiSBsbytTaRmxWAUU4eoAyJyWKlEt7qxBaCiMc+7Ql
	 bPoVCoggCGGnwEdT6n/ZAwf8FbqU3FY6LlGz1F2LzVRN57CZeUGudlr/QhyGH8gMVr
	 L9yREYZz0hC1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5864C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480983373.24307.4730952378283302720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ab65adb9831274749b1a3cd909297f9bbf0a835da0aa3c5cf8b5e3d55c6ce2
Date: Thu, 23 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784809833
