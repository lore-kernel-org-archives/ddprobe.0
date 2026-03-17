Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37FA37F8DC
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773772494; cv=none; b=jfN5bmpucFdeyA4oBSZDimKyZCNdSGcV1SlAZWYSVRYgVuca1X39tnC9WnRZW1QMph/fY54XVdaoAl4t+mUCq5p0Qtub15u9PA+35UottmQvEy5um9D6UtXW4e52uLeNFxP3TfZBE9MLZYNJtu+phMc1h3KSIpBwgHXR2bqCboE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773772494; c=relaxed/simple;
	bh=0B79wZt8QgLzPGRTp7MFf4Fm9XmABddWHkctjLmm904=;
	h=To:Subject:From:Message-Id:Date; b=p7xvcBquuu/kN2thJe8smsPnNW6qqOLPif2zFktZ1B/y9omHOwKA660MDJuRFeiFKWbUgoZ4cvkkzVaUJiscAR0Fpq3j0klsYIPEQeLzyzjwwh9dFH5Oyx4QNSQhIK6i694l91UxSb50S+zFmbq8Ql4hlgWvonpiCcB3RiBeWGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2SJENLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2SJENLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD949C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773772493;
	bh=0B79wZt8QgLzPGRTp7MFf4Fm9XmABddWHkctjLmm904=;
	h=To:Subject:From:Date:From;
	b=T2SJENLKpYV9qysH691gKuvp623W9YfWvBXt6qzml89NoOky1Y7YdDsR8n+4ePVz/
	 Hv7BquKhmQ3HQBUHkjv4Gx7nVR0MQNcbC9GVhR3+GvVVgTVAlE83dVZ6rGFcOiKJ9w
	 kMTfmBOODHvajzwJZe2t5LjxT3ws54Gojf3LPzFerEu6EilIcBziHjATM4Rqn19+AM
	 5T0Yf0YwXuOm+Nlc9/7+ZyTIZzG8RiJvs3j/v3fwIY5DKVuEa6JgQIagLqGIOsqoe4
	 ZusUxg/VdXjVIMa4/wU79tRKnrjQ4uKb0gOarsXr2zsQjxILp10553wbK9eSbng/t3
	 qsgYcsiA3PulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C300FEDA00
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377249362.24477.13160605419011485437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6ad7a73c7453bb3845bccea11eb18f0a08b0630cce819ff13dff6527026d14
Date: Tue, 17 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773772493
