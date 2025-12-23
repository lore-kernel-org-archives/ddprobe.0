Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBB0BA3F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766448234; cv=none; b=Y3MQC1Qy7w1dX43V1AhcZG7x6Y25ijZVHQBbE53/lupfhKfM73tYKjWjOAq7h7fQXsgLB7xJNo07nM81Z9VjlzvWw0u4wt4O9wSXkFv0vcqb9gdqSXOdkCdILTSGgTzJGDjct/kGYUPv5mWhUbm0ruMhX0WRcrslEZY1oUcb+Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766448234; c=relaxed/simple;
	bh=9SnatoUQe2Stdri9ucmwJQotfuFuObvqrjtBCMFuYAE=;
	h=To:Subject:From:Message-Id:Date; b=XGmt3o4kaRYOYaHkre00zRNSTiaCWFu3KLu7kVi+XuyPTWxKLuFCXNR/Rb8peDzLRXm0DiUjUMDjYdvazNtR7p6w0tZ90j9l0mkFTAGoXXPgLW3U4xoP+Ztb1SgLUg/qaz74/SqCf+AZssyeohJh6Gqkcmhc1ZY/V8gVyOl1ue8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaeVyBKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaeVyBKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0595C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766448233;
	bh=9SnatoUQe2Stdri9ucmwJQotfuFuObvqrjtBCMFuYAE=;
	h=To:Subject:From:Date:From;
	b=kaeVyBKWwa1c6FIvv5jdMkLB6LaV/Rs6qbR/wglbsmsXilTpQedx20b+liuMadPIf
	 5DtUgQYhPZnYG/sL+uLhK0AEP/CuCR6MK7SbsHMsrjlmCYOzV2Z64rgnvkAUNcCbCf
	 Bos8lVAzcUzzZUizrW8xkv+Rwu37BOurR57osCoe81/NN0dTRkW3xPX6c6THTJsf0X
	 C6uu3QymRG7gCO2xFRfjS/+LuHGCjuqxyrD448RN9m5mX9SLMpJ1W2CcO8dqC9UWhS
	 apWKrKRpL7GJXdfwAQVXx2SwxROZm6k8cLxw5zGwQXpd3VREdOprSQMu0/Un1f3y+y
	 QH0i3ANn6EEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA09E6B260
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644823358.17659.1913080720248424356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9a81bb04da4dde18a483fda76d196d600d22c43e1f1c9b38ead7e3853cc4c4
Date: Tue, 23 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766448233
