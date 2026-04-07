Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2033BD25B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775575534; cv=none; b=FFnTLqC1vOyOjdhmQP/wF5+lMMmo1dvjzcLIWUbiZCRcpFQSt0xij2AyN78UUp0g0D+yl83dPiXGWx7QrTRYszEZfNWe35Vnj8+aYq1Mlnkvzr2k+w805xgVtrtZPyp+YzGvWAHpAF9rUJ8Ec1BEvIaOROK+8DtwEK6GwfXqlBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775575534; c=relaxed/simple;
	bh=AqSJLSq7BFhjthufIxLHyIV4LhtKR8tchFPSB4EWxeQ=;
	h=To:Subject:From:Message-Id:Date; b=cgTquI60Z+MZfjpZ1IEr38NtWFES2XS1J0VRTUjMWtMRYKH05e/bsj0uR8MfduAEgzYgNpW4Fq2YU3wBnx9aei+uXZl+U9CJOSrJcH14TdWB85P4HlWZQ5F/nFPB3HrWHvyiyH3NYs5wFWpgXEOhNjHaWrGU990onuhXufpwRJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRqKKNkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRqKKNkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7AEC19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775575533;
	bh=AqSJLSq7BFhjthufIxLHyIV4LhtKR8tchFPSB4EWxeQ=;
	h=To:Subject:From:Date:From;
	b=IRqKKNkJx0pu/dEZBseZbJ3A4Q38i8EmZl225gE2cgHtDRxN/fpG0YQ+Rosd3vteD
	 IO7oEDb1d5NNDPduoe1YLguvB7vt1c4bfgrUO3kOkzmkEmZmO3CTH6YPMV6J27l9yQ
	 mGIpG1A2/8FXAY3wjvvg6PFKQwBUhrf6QNJsXe1m41GNVyW1JX4QNKcik948xHkAP+
	 qLrtqG//NrnM04jUGUFoDtkocDGq+dClvzCg4n+WmiUPjcQvk01V3WHaO4VAj1gTkL
	 VWY6ZU2AL1GRVXAqgR2E2u/YY8H02VV6p7Di5/SgmRzyQKr0pGqnk4qR5XEvsTCOVA
	 Fu5onpfEZW0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC36FF5107
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557553369.4875.4557006385644086789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411b2dea8f40d2fb95da88d1725f9f98d776e670a714524a8d7b6bf19174e85a
Date: Tue, 07 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775575533
