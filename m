Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344372F2A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743924594; cv=none; b=HK4v3K1qbBg3xeg3sokuJqZxEckwab89w+g24lTbvajPppWHVdDCQhFj9uI4dixMiH0QC9dq9Yxgb4jWVi/DcCF3xq0duw4LUZbI1IurbXmhoMxa9geQoAIWzIMe3rtShd8G4flf6D/RfRvLqiVDC1CPVXubSEzOZ7OG9czfBTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743924594; c=relaxed/simple;
	bh=mvaO3MD0Duugdte+wrV0hbGYjALPjDvXyCBlzqU3ygI=;
	h=To:Subject:From:Message-Id:Date; b=CT8jmxeFTs2MJ2jFJ6ufmZCUCOegjDyb5HDAwztyu2+X27jfLmBfgg3m2Vr+IJIwz03HKz7fIfoOT2Fr326aWe2ho+qGTS7m3n02RR5fplJV23v+uwjlwZv3Zdrh1jZHFl7MnS7Fznx0vkf3jqht2CVCtX8VMuMmrHUq1CB67MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHJTpM6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHJTpM6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743924593;
	bh=mvaO3MD0Duugdte+wrV0hbGYjALPjDvXyCBlzqU3ygI=;
	h=To:Subject:From:Date:From;
	b=fHJTpM6uWdjVkD5bTlNsJ/OMi55O3FL0ZKs2xl8Rz5dgYAIBpmi+RngNd+sv5UaZe
	 0Qm1GHvb8BNuq+dhSud43ZLT6KmfRBKboKCk/jdtHQihgg3RygCJLDT8PGM31fneKi
	 gSRm1fjVzxyRRWEBOk2diJ2YLlEOAkxy20eGGmVGUNRXHSZI7/e5l9PiRLJebbTU6m
	 FspmDlLOSwy6JfhaerFwZ0vcvFZdyAkdsxhqMkdNv244snabGHYUnhYL3UspLXJJ+u
	 xCQxoRzGmP1viIQFklxjAo114+wfgDsfIAuUuHFDDpxs94z6UnAWbMrpKQzEMU4QUm
	 rsQdf2uPWApig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392459358.12412.622357142124416447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3451230c9ff326a93baf24969840e282d6a962d532b66ba003a0ffaef80d7c5
Date: Sun, 06 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743924593
