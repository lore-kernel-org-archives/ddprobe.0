Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C15374E68
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776649054; cv=none; b=GzZ32NmX9o6CUuHWqR1qtkdSRoT75vY2MTUJqk5p2uhMmoOI69klUxVslLuLb5O4xFq2Fib4t+ZFyx/kOZs2OWoTj+EKi8aOPR8pNnHj2N8wKUbWuZnRaXFY6ntu5XmQ2u8EoeP+ZedmoNI/WxBmyDBCP8ktlmB5II6GpEg81S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776649054; c=relaxed/simple;
	bh=PsOSlesR92hSo0jnu2pALhbvd+YkhT3U77EHAK6kkIk=;
	h=To:Subject:From:Message-Id:Date; b=s61R5aU40iFFzZb6Qg9yIpBuieR/Usc+qRVo3ydB2Vyxqzfl6LCy5iEtanEuFVKrQK6NIgEJehwAJ1HmrayIk/yD3FkRIy981pmQV1AspsxSKOikSYQWmwBLwgHHCwme+Xm6BtGLepiz/Zp6M8/WdFOuR2anFkA4l4ruuhQJObw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXnESE+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXnESE+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFBEC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776649053;
	bh=PsOSlesR92hSo0jnu2pALhbvd+YkhT3U77EHAK6kkIk=;
	h=To:Subject:From:Date:From;
	b=SXnESE+/E6zMec9cZMZi9yW8KSLAnb0uAkYRR7xVH3Yueehn9LLfrDcQv60N3x4dy
	 J8t1w9vF4NXs5KS+yW97o9u8h9O58rdXBDZe9FU/AC6pLzGt9aw37Y/Lz5liUYizSG
	 GQTric9VSOwMSaPHOpsFVCeNoDdHL55zMkMNMSAe2X4XX4REVovLPPaZLsAxLwcTxR
	 gO2U680954vb1OJCwBAA+Sb8hieBMHExHPadrBp4/nENuBjok6VEXB65GeWxNl8qqc
	 T5SKZj3SXsb0zhIQo9Q+3r0ujho+8h0s12600Ms5X/z7jrqfD04ADT5HviMbnBcHeP
	 WwHtgpw4qRy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EBEA71B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664905369.10762.6760538088555387679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb796225bf36ca7213c4eb8076f9266771549c2b968c5365beb0e6f9b149833
Date: Mon, 20 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776649053
