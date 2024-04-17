Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511282134B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713320363; cv=none; b=VSQolh/ModHr2Bi8hRpveH0sy/YNQ0nCK4AD5a3p1jsJ6w9ME8T5b9mCpPG4zPRIv5uai6qU3av2gyJS28MdVIU3qKCby10pRuXDTBrLRzVTgZqoRUxCleeNw5l2o1I9OMBUZRvA61UbQY/wmxgNQJj3TJOm1C4BxRzGBna2Alk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713320363; c=relaxed/simple;
	bh=MhOi44AAhUXOf5fXY8jQxpRpLABfXf2A+EF14a2A7As=;
	h=To:Subject:From:Message-Id:Date; b=V3EEaFWSwMm7CrK4kR4q8X5Vhkve8/+UOlE+CNRTlZgC2Vxhc/12MM2E1vgSPHq5ebeqebemJDBvb0gZACReaqn8xgkhQT7RUt2DfHEKGC3Q96jEKlzQEFUFCHN63GnIqVwfgsQv+yZMRmn1la3ub+zhGcNVKNtgerr08NDDUdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYGjAX5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYGjAX5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67C7C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713320362;
	bh=MhOi44AAhUXOf5fXY8jQxpRpLABfXf2A+EF14a2A7As=;
	h=To:Subject:From:Date:From;
	b=WYGjAX5RYttpvcwdhg0OQs+sv9xRUdqa5XzhI3izOaMwoonDLR7CmEE5BM53VDeN8
	 B1UwpyYJ3lnAyOU74rbb4Jtmf8O82u9fwwBAeDpz3uDOBP016qcUjAnCvw8LZnCyK2
	 +FyQPdDYQ6pFFD0eLBG6cfsfAcdq6/TvZ6IEnQ3DJSH9nDoOjx237ecnNarRPQY1B9
	 KWdayTe4OcXxaKkEzkWb79+uC061tmKYu/8EMcbsDhxDr7B+87tKcNWHqIbGDOVae6
	 cArnqUBDgQVqNwFBK8fcei7k7hGoq06+Gp5BEJHw/+LTZus2SjBhScujxmrbzyMdMs
	 1A1DC3vx8ONiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06ADC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332036277.18246.9215736946284658842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8f384f1eb8f248d596544bc5612d2cf951db5565e08b1290ea555d4285c8ab
Date: Wed, 17 Apr 2024 02:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713320362
