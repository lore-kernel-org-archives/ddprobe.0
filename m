Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564F929E10F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791780634; cv=none; b=KI/j7eUGSsejdh5bC7MHyNlNlLwqBXt9c40kEq/YuUNNTxILbAciCqWfwlXAJIClgwdVZsIB1RIvgXC1IRirglAvT2KvWu7/kI38N0onWUiH+6Fm/BoWzgZoH+Ts7YEgktf/Y+B+DiZrMPDjOeEcBATu71bRAbp2U3bNvzkSnUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791780634; c=relaxed/simple;
	bh=lyIYBx83sWszOm2Uy5W3o3rgUByXyjdpKxuu5UC6hu0=;
	h=To:Subject:From:Message-Id:Date; b=B2npCJsiLSA//n7wxzLw216dYACc2ELvDXeWaqzos+VBy6QQu0bMlxaRxQm+v5BJ6osuls25OvRI9hIBtxtjVUV0HZN3VtaYKvf8FHbDO3yE9UdlemVyZJIE0lxvxkhhEahiFczEbW5vXQ+mBjABJFRYYaLotyRKvWWzUzyY/NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNAk1O6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNAk1O6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791780633;
	bh=lyIYBx83sWszOm2Uy5W3o3rgUByXyjdpKxuu5UC6hu0=;
	h=To:Subject:From:Date:From;
	b=tNAk1O6Y32X0QP71/xRHPLldMEYX+w0+T8+tzDViPTT3TcqW0IGVPgRBMhF7DrCVF
	 JeHtAAYkEow3zjWbrpwmhyGvkVHrUqGyVOv0fCCaTFZ0MhuLGk/VeDAKgKMiZA3NFc
	 TF1bfM0cFzHjfOJ3iCki68yATt73p1W0VyJ7+ySZKDqgl9diiLvsy8reLt+k/Vsz+V
	 Nw0IPJY1dAyC15KjBhm7kjr3zl64kfVkeEqwZ9p+iKnPCp1pq0/kU9YhkY/SNfzM/H
	 0suN7MzRe0feNfbr4jfaq1tLjGlWp8OiyIsLVFuoz7GRGnMFZWnDd0AUXb6Q4XuwJP
	 d2ngPPN1KB7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F3CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178063368.8494.803454376239282511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da5c5c8e266bcb45c54501b7b6c568cbc53f3957ae98aa254fec67d4c3089a0
Date: Mon, 12 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791780633
