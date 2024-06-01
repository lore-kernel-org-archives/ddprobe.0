Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DCD11711
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717230263; cv=none; b=fCO0FYQpF2OqF6lG7GJ980XQoBQDQrKMc3mQYSdejdrTUkGudA1Nme60xOkG5XNAUU4kXCS4K65+vzsP/+3G3tr07jCnJfh3BYaSnKYCZN5wf+Efs4DxmxUokGU1TWY26o9IXGZZ5nw9EJtC2kVPJITtkJn80vD6cL9gSkzCdt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717230263; c=relaxed/simple;
	bh=zzZAZsBLeiPtV5BVi30e9mwLCGTdpzoF4En/q0UiHxg=;
	h=To:Subject:From:Message-Id:Date; b=skmAiYlvEBOx8Sy0aXS95aHCaorLzoUxuxM+ssQ47tVLcriXi9tC7bUFRWKLDzVXb8lsRFWJKeB97T+lDvzqgmnbl/rLJrEOR9triFZCBTmsZ8FYZAMu9GFDBrl8KNRwO9o2MVBfYjAxd0C6FrvXqSxi8v9R6K2OE/BowgZuEMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo1dWX9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo1dWX9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D4DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717230262;
	bh=zzZAZsBLeiPtV5BVi30e9mwLCGTdpzoF4En/q0UiHxg=;
	h=To:Subject:From:Date:From;
	b=qo1dWX9T6iEnzzU5+8H3w7tnEXFySw1OLn5sx00gJ1VA/lmIekRYc40GIrJWmCI5i
	 SGYRXTfzd3rqYGwWhIm2lwaxU4aaNzm9p3jbQ1pdsXQgCPzh5l7322EBUQkz5JLQvC
	 bNQPwqdyZDe6n2+jrvXco+Fr/joadAIBksscluJ0JmUtlol86jIXbrtsU22DO2vdkY
	 SmaGFMNRNjQpsVY410WHsAUOC4JQxVaGfEe53lpsVuoMTa+LVSBULygYIzljRdMYQE
	 FPrV1K5O8alXKZyRhaGV08Os9FmQuUQoTLfWNZffkUP81V2vSR2ZkCZ9zyKammpBTW
	 X7sXDCHHA7hAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2068C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723026278.17255.14051896035565861563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1926225f13af9b5ddd85cd9888ce4cb4e9279e1d13b22c3458ca3866e93060f
Date: Sat, 01 Jun 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717230262
