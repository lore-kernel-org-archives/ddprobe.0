Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E61C831A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762102194; cv=none; b=jDe08sgG7HkksFLxptSEcHnm/Y3CW4O9ePRTg8jQqt0843AeQ1fPoCRyW/i0DjLBxWh8k14d/M9nk5eWSepc9URI0dNiJLyz2MZzY8K9Nyeu3aPaC+K1FSnWEoTBqenqZYo9tMwecMQfjRpyxZhxpzYolc63KqchgJqHsuabkfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762102194; c=relaxed/simple;
	bh=0fHkfP4+r6clIqAYaysNLQO84NyN5zvDu2+sBKUs+wU=;
	h=To:Subject:From:Message-Id:Date; b=NAFkBSnKGFJ1UUmBQtt6ja2AdAH6HOG3LED/k4DRwXAVyvG5fHGJsG2whR1LUsiTxVKZSsCwecG+lA/J/6kgQF8/rq3KjuaftAP9tOPHzUbDzEgjsBqmua2jGgcIWfa55FwaQ3KhOKXdLEiRTLYs6evrd+3N9fdy7hG+fN5ST3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA7SsHLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA7SsHLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA22AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762102193;
	bh=0fHkfP4+r6clIqAYaysNLQO84NyN5zvDu2+sBKUs+wU=;
	h=To:Subject:From:Date:From;
	b=iA7SsHLLiVbqivTRWeUfJc/2E1ZKt3ny/YjJo2EwICyFm50BLyt8O0suiMNDi1+op
	 1DcJUbd2BqZnuq1ym6cPmfyfSbxL9eaBRdNN3P4WawJZCrqNJd12xKYPLpxAR5GkFQ
	 mg1tKokok4JVCym+DOMIpC8uBOL9U2NFS7z+3/FHUY8eq+yGffDkIjYOrriT+GK9oG
	 WEMX/6WX4oNV2XbKHaIom4nrFTtz75+9f7C8xbzjpV6N9AhDMRXAh3xRg+5u7XhXsd
	 HMQqCfAIYa/Oe3S2S20f0qh/Ct1YQmHG6G2ZlRupa57FG2A5qvhxg2kOIHjR53D1hv
	 XwLErcxek79aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1BCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210219358.12193.8746104674848340899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afef445a5bb6c37bb50ce25f37f67b455248177506534ecdb28941668dd98e35
Date: Sun, 02 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762102193
