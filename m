Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7746C315771
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755594594; cv=none; b=hGvA/4ZRumEFHxfPry9lM5plF494Vz09oZfOXgY6MSOkNNsIn27x1vAwMgHS05AATEK2zd4OGl/Wwo+9iQKb9f0yvnF10BjW+nOkqsx0alVHJDDZ1NQGTC1JAjq9Hpld1NSj6at90E8aj+9udco/5Gf1hWabMArRbhvMWu7Awe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755594594; c=relaxed/simple;
	bh=CQPE1nGVRdJIEz+EZEiiY+srrZJR9tsir7JD9b9b6W8=;
	h=To:Subject:From:Message-Id:Date; b=NKr8JejaErsN6qq2i+hfk6JsS2EQVd6zooD+bqFp9JlzP4WfcVvCuIxfkeHdJz3vf4Hzs/sh1gI9TEwcaRkgHVvBxHJGZBHzFVCxzI3/3a9I2wv8N4ylPcSqxJxLDAPAUgXz2z5VsB1MqP37k6jlmli48O7W6rHbBVMzOH5TvSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxfRTZvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxfRTZvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB19C116B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755594593;
	bh=CQPE1nGVRdJIEz+EZEiiY+srrZJR9tsir7JD9b9b6W8=;
	h=To:Subject:From:Date:From;
	b=QxfRTZvYcRUPqDC2OasZ1AIuXlYvbbGA+TBmal97mbdWrgFm17AxyO+Jcgm2ZNvI2
	 yCJ4c1DZtEpWJujMevz6QVk3ENu9iWb63aDh5LMIh95g2HHi9gwhhfxBlEYtTi2PCH
	 I24TzDZjypexP6AgGQNFK1kG72a3ZmhQeufhhQWsOnk8MikbrTWJXAiWgGsA2hgdtq
	 jhcpU+U5W68rn+tEL1bxePwF6pi+27kPQ90fNzMufHwLf1yv4WBDc85hvV2LnOaBPS
	 F4iByZV2hA9Nva7LnSa4eQivclpYw6Nv67QCL0GIhz8sLyLnoQAgww6ohh5zIVN922
	 bnmXtq6O2BSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D95FCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559459357.17869.14389902431660023187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a99f4f5f4c673f7b4aee78ca1869bb6e99ae9670845542fd48c372568349ca
Date: Tue, 19 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755594593
