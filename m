Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233FE29E10B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763911314; cv=none; b=AcVMY17QMNmmDWNXVarroOXiv2vq2zsA1dzwnQss0Q1/JZThHJFgizkD2SimiBQDhx6EcId1lSONLEdKdi7lU2SRgh6GxwNt46bkPcgg7qQfFJdR+C7oWMs1FJyHm3ov6txEBwoTHFPYEey5wZjzpzs2/b51KRQEnsqct+N1/no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763911314; c=relaxed/simple;
	bh=x+U9V60SfLxC6cZd3XpTDQFGY8E0SEI+UDyo4m08XxU=;
	h=To:Subject:From:Message-Id:Date; b=AdEruP/RRkvJlfVu1xW8UDoJEr9VsqLfZT0ZIDD6P7OLnIym7ROL1ySDlAlCFTO7RcKqs6vL9wt1jcS5XQ2vztZpJwv1YtJNg64zLkMKbJGRfp21pOphA8PjJIIbkoohyLQY6yHQ1mjfvWcTP7D6FTmjmTAHOv2Eq2MBqqPfMbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUFxl36f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUFxl36f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F7C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763911313;
	bh=x+U9V60SfLxC6cZd3XpTDQFGY8E0SEI+UDyo4m08XxU=;
	h=To:Subject:From:Date:From;
	b=ZUFxl36fqw9Di/sS+RamsO5HTgIERv5mPrs8qyXdEErwds2ykvFVLizgqWsYPW0xY
	 Wc7PFbHqLVejjM5LtT4FRmsACm3Jp+hH27FwxFeL1YBbiVAzhYOF46/Sx9JiWtnDvQ
	 OUIGAMxz2/xJsJC6TWr/c5M5UeHI7oxvHES/MhufcMCjkO2tQ7J0xACsWOCHsA5rIO
	 SlRPPBSQLbbbY1B6UF7C+LuJZCAnVQ69nVkNYc+GfjDFaWeEb/qbRsC0eygo7AS5+k
	 kh0diM3ihLZTrl0RkTAXmTpLwvbxTEHN0y85oYyOOLIOQ1ZUwBi6UbU3Gi60G37jE2
	 i1WzHSMZBWBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97964CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391131358.17673.16165531880561959316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43ff83521dbc146816f9ab24ae3960f8313fd66d2579f57ea5d459dbdc03dd5
Date: Sun, 23 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763911313
