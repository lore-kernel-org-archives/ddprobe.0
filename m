Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598CB3AEF58
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787386234; cv=none; b=QcnuhkAUWw6rgkkOScl7n2qPl8Gfi2ioDiquKUgMJ0aR2AaQint7SOOlWiog2go2GG8Jur2dqtsVdFZ8iCBt10V6BrAbeLYaKZGK+1qkT5aXLCKoDOpxIvFwmY5qjb/MfBDbyKX7FphLiMXZS3dTHIMGfw/n0+R4zYInJ0OqS/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787386234; c=relaxed/simple;
	bh=y5AZL5EgUn20U1DarwSQl6obdZ93LfKxrxP6wKDBKAI=;
	h=To:Subject:From:Message-Id:Date; b=NoqEPPH83inwxYH5JQYx8f00Va6zUY0ElcmGLLYXoxrP/BbbV1Vzj77JrwfvO/Jd/qhm/Ts6csdSrKNQg/wAMqMio001x7Ml5rw0n0e7rh61aJhORz8VcLU64HS80AizkC+TM/JbIPH+EWVbCjdLQ1xaMXzyDyFTb0RJQCCOePk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daJGD0/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daJGD0/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787386233;
	bh=y5AZL5EgUn20U1DarwSQl6obdZ93LfKxrxP6wKDBKAI=;
	h=To:Subject:From:Date:From;
	b=daJGD0/77XBWntmJkYjCLj97zXPhb5p/+2l4ubvdiw8ju/cI4sh945er3sgRsyBGo
	 9EpQftXGF6YN0tbTJYN1A/VyRzh6MMbl7qAEqImGNg+tyhTi7k16rMD6lrzc6J0TRP
	 pfeffgHLnJksjs6z7XvztX1BfnGpoZ3X/AXH+asrYlhnpS1xTB2XIzRcBOaHmjWV6q
	 65QLdAgp1e1GgXLnG97YOtdug/hyTLZXiun42Sif7Ejn62eLGqcvQCsjiprMj4XDD0
	 XLX2b/mfRSSSwpihqnb9t7RLkgjB1XpvAa3+G2gdUit4LRYUplwdY78/xbdsWoF3xG
	 x/eLgp4E9qQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09D1C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738623368.10638.3580954118981648576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727e65c0b54a07fb3e4df05406a77a221d3f501777d96a22f57da939bd44f0d0
Date: Sat, 22 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787386233
