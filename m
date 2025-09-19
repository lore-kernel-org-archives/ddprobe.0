Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28633257459
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758248394; cv=none; b=ff8uS5KLuA0OCGzI/vVIrrTvoRRaxuMDup9SERq2Z32MXl36+PVyliQ/9Pa9D8W9PSC8MAUV9F55mUNmXvy44KJp1U3hBFNwF5GgmdzCurp+klsHB/FxbFZfp//Y1gYb6eIzCKVX9bnoNv2gZmdobsvpnU1rG+t/wAYBk2/pKxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758248394; c=relaxed/simple;
	bh=O6QfDhPraxmMJXajduNjpfPUfByMgTBIDyJJqkb3NhU=;
	h=To:Subject:From:Message-Id:Date; b=HInuDhK70IyAJ8D6lDe5k3XiQs1VnXAXRs5fc8WyBP5zJ24fSQLDqKSHUE2CpoH2bNnGs2VjTESdkjBQux40sZIJsfO2ipyU2F8n8eEBv/cRjsZG6YK0hPXf05EI047oMzGDFzn53Rhhlsn07P18kCo78R9rvKICy+fBtUtiTuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtxmDj8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtxmDj8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758248393;
	bh=O6QfDhPraxmMJXajduNjpfPUfByMgTBIDyJJqkb3NhU=;
	h=To:Subject:From:Date:From;
	b=RtxmDj8fL8+B2xAMYGBznAXXwqnbt8pgM8bLTE2uOOn5GPsLHuj+Qsr8enghIVWqh
	 aClUBJ2w7nDwZhnAL/W05tjWXCbqefAp+w8rQWT/xza3wZt9FfvBGMcrHYJNNoag13
	 ikGFlGQg1KUKb1keaF5KkDLcDeIlO3S2B3T2bH9jTvB2mmPwMfPRSXj18qIiCRteU4
	 3EXLRa+yuSCpMDFZXfdvMyt6WywldTPqH3sIJ1ygpK/kZ5EhZmTYrUvcnU1Uc6DJ8Z
	 4p+DVRLd4x98B+7uFth+Sb3MLd4p262Ut0bZ77RFiiPt8GcbIqUdEheWGV7m/P5jLa
	 fqQKRxmITr3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90177CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824839358.31547.10482665190658762957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5be4b79f5e268ca4e8eeae6c1f70be5147d47333ab700b23d5771dc76531203
Date: Fri, 19 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758248393
