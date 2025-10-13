Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1284C85
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353794; cv=none; b=O09m9EXCT86uushIsfSqpBjy8KYvxJ9SqGwOwBdOIYcIndzfC0T0g75NWPAJgyr4h2tN7gvwVrc8Lrw5NMupY6ODTeuF0NVLPY2EmvQpZE3RT3kopInVMLjDW8Mz5IVl+C7Zz7v1k0GRBVy/CxFOEBhEU4DBTsD7W5QH8IlbrGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353794; c=relaxed/simple;
	bh=THvtT9fc5GFNi8AHr7sW0fiibHpJcyEb87Eu3qiq77U=;
	h=To:Subject:From:Message-Id:Date; b=J/DFYlK0ufmHXbQs+BZ8e6hWXmU82HDdy6cX/G8QaaPnIxWDLAqL2ZwXBKMv+T4pYe8dNZ8+Uv1bDTKtISLJmpnFU4TENcWblquZiOPXnBSNWtcZ0/lhCcvO0doftjXFL6Kf1IVsDH9e0W21wZ5eMyRz4a16oU0IvlIhKgE90nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohvgWg2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohvgWg2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38CDC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760353793;
	bh=THvtT9fc5GFNi8AHr7sW0fiibHpJcyEb87Eu3qiq77U=;
	h=To:Subject:From:Date:From;
	b=ohvgWg2y1StsnDzO2tDfJgH7wODuM1lPXUYOwVrsdwrS+w6Wm1KOQlN9JSexa6bm6
	 YgmCkEJgG6BTD58LRaxhFF+AQ/cBd59xu0ZrDom72JK19RA1V1PsIiPXl4F8VCVkPU
	 vYWZhgHpbANIPOBchDnhiyEYvx22+ruwM+D+3cpDokSKT5JbvdX7umaC0honcyv5zN
	 eJW32EJu0vbESqOKZWLAVDGiI7T0sJPu/riq8rkpJ5p9pV4QcbIiSsYfioVJ0wGwVa
	 A4oxeiYcl6ZnXOJl7BSTRUQltGQhjXUfmNlIkOvE2Ks5/Ooj4nq5orUOX8qdAY+u09
	 Hla6fn3NwRnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0ADCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035379357.17207.12842918685669944070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cb0b7d8885f43e8bcf2409c798edfe088c467ea4722fb9acd785dc1058b520
Date: Mon, 13 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760353793
