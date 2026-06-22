Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C3037AA91
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782141994; cv=none; b=mdjRGOsmuy6TMd+gu/xI1YjVmUkLFbj31lKEb2ZbUVcgV/Sg3yBj9lsnkjRuvfPkv+5EjX6sElPijD/0vKNvPjruKS4ezyDAMqBqNKY5Xwfh6W3Qcxocds8tf0iD2tkqiHAqj/TqMDnfOEKpMOsw5esqayJFxYs5R/IexBSFx5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782141994; c=relaxed/simple;
	bh=rJvuOin8PrD6g3sDoF/9VjRhA3GjPAdzT/r/wHRg5e4=;
	h=To:Subject:From:Message-Id:Date; b=UFRIHU7uIZk/KToOqcUNu2gFXYUzrrigajL1XZ+U56JrrCtWqtld9PoeN6nnfrZ7/auVNsUPOjf59KM/pxPOsBE3O/UxTo8PyDOVzVAWrNdNHQUnuoE4nvaYfifbh9ZQVvmawhyiDG2EM4PeQE0m6AeRwDUtIVUG1pJzW0nv7uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpV4X0zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpV4X0zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C60C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782141993;
	bh=rJvuOin8PrD6g3sDoF/9VjRhA3GjPAdzT/r/wHRg5e4=;
	h=To:Subject:From:Date:From;
	b=gpV4X0zd8hvnRE34f4f3fwMQtNTI+nrbMqxe0EDrhT7la1kZAqmCIPwvDUvayqEeB
	 O0JmOOwUFPY0BdcLtiXLmypfzNWTKaGQcOAHw44XzJo2mAk3I0rDrUqnaDq8cwSept
	 LGwp1vPJiVjqArHPhChxSndR5yAZHAsCR6mVD0/cT1E25sMfQKh+AG1IaXAqtgUmkr
	 ZMJMlYsJd8NQZSSEqtmi4q9vYyhtffCDX3Jn2Adj3iqITBF3NWvVCgNQXiryw+/fVl
	 nTWVXJ9pHT7DAEXkKH/UCk+9IZhRFNLaD+Dl159scryUX1g5TXmcO3N2qvVLRkLa8+
	 97/z+MYHUKxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1BBCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214199369.17092.232980483690844926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08665d176afe6d03f62d48356f165ed9ecf9b8514032724338c804d3c3dd255c
Date: Mon, 22 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782141993
