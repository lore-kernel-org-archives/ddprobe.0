Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5CC35B149
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761605394; cv=none; b=f1cBaZ/tl3MjAjaCSOBLRhDIpPS5mgzug1vZJ1XsDAns6YDjKtzcJZV3M8rABajzBM4vkhRuBJbKQY4qaiY/tzKCfqRkXquB5OTkLl1pw+gBzdN7zOK2DqCE0GI0jZrBiKFoXv7uiJtIjM1uL9RLwhDu7cpAOE/skwDlqmUEbwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761605394; c=relaxed/simple;
	bh=LSxKxKsZd1+6t2z4PatKncIYkD5s1xO3ls8o5ZDn7ag=;
	h=To:Subject:From:Message-Id:Date; b=sm3ooprSagO1+WjKAMHgGMTx46u8LDydhbheBOR0F86BBOtiDIO6/a1o05mpQUqkj8AK3+Y/kkjQlSXZwPMoMZQ5q1xmlacceGTWE8hUvtNOdvqghi1GqBlEMOlXiKl7hBPSj3+f6sH4u7aVOL2ynvLpwtpXSA7hL3d5sSfy9Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt+aXbgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt+aXbgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE931C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761605393;
	bh=LSxKxKsZd1+6t2z4PatKncIYkD5s1xO3ls8o5ZDn7ag=;
	h=To:Subject:From:Date:From;
	b=Qt+aXbgP9d6Ix3YK8jkoTZHf5EYZQ8L45R4WYo3X5rH8yOG5utggveATKjMD9Jf6k
	 qkY4x93UmZWsG6TChJQvH8JNQIzGLvTDNDJ9o70Rqlzf/qWudoQZ8t78CRjvUx4g6D
	 CqYWbG2W1VHYrJMx+1Ci+TNVIro/JcFunmnrWJkt5Pz1QkWIYJ8Ns5/TfxFl7TnDjE
	 tOE8FnbJjlHtlZ5WK0jcfFgLTFj35IMOk5/liVSKykNgPjMDTvAp3/62yYd7Ci7TiX
	 OyycrDdmsRUM28EoL2yR04QiqAfwc4w+YjzgFbCDZbjpvZzCt2RQuKyYzPSv56LYRf
	 045UG+dKy8c6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B590ACCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160539373.6632.9746423075036101980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13ffa4ee4a06a0397d24acbb108613a93fd762352d268ae6135b8565a6ca3f6
Date: Mon, 27 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761605393
