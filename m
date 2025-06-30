Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D1F28CF40
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751298594; cv=none; b=WSD4TTBeBVHLKM/rsjYNNYK2Zz7IYCbh4PTk2gps3E2KHQX/ilfrxATkFdRXXwUCttY3TsSm7ApVqjMRFwT9pMtEmcR+v9pJoJJ0wsY/4+nv0nZOK9T+UdZ+lLRYdqm7oSz+7v1LzeMqVtHqrhHVClQYEo138lG2lL/GN3cACEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751298594; c=relaxed/simple;
	bh=j0kjzAEU3s489tCV1QUrtJ/yiqeaqjK5wKJLSOstgN8=;
	h=To:Subject:From:Message-Id:Date; b=sZ+U5/2QJf7Q0anffuqV3TUG+Fe3rxXwtmDkCvkyM/MvBRGpQ8m0nDzEXsd7UiIzJ9uuHWsHDBoOpxaNjJicbwSbFXS2Dx1FJ7pzmo6K/sD+kp6dyxBFflBYuuKzURXBAOsOcSrHQgqOe627FnjMudM5RYA5hyER71X3y8r9TVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3NTGHSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3NTGHSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F95DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751298593;
	bh=j0kjzAEU3s489tCV1QUrtJ/yiqeaqjK5wKJLSOstgN8=;
	h=To:Subject:From:Date:From;
	b=b3NTGHSdPTb8CZWuduiRS/XSmRfYMyo+ANNFlvBDOIdlt4lvUJegEWNqjY6rKw+XM
	 POVoq9gP1/15EA8wvd16FPvr1P2HvsZCLyAZR7nYhAsJdnLuieEpO4+U8HW/RSmLMs
	 4BFvjCwIGPqd+dZrY5Y5p1E5KhcZqS2wJppHITv9aU8yH2e2JXI5xhPsl8YhqrGjZf
	 zBuAmW6213ts+FPczqiRYiQcj9gUMcRGgDTNFDFWXlHZ52ldEneTmrv4M+MAHmhhc9
	 1RiPdH35K2A6C4Ya5/YFMcm96cE9AMb2oZRmTTfpQ4QjY35VYR8EPVwmsDzDcQkTAk
	 WduVH7IxY1DSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C0C8302B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129859358.31496.14809780002497005378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5679be726efe05172f0a98413da0083d26aa2508fbde5c13a206e3c0e5d20b
Date: Mon, 30 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751298593
