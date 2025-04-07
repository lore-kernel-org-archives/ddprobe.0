Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F5121B8E0
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744055394; cv=none; b=ecFqZmbF06vBdJJ5e5d/Y7mp0SYInUlJt5YXaMLKi3436Ghx2IzoTRAKhgslleq3OSMsFo9GXNlwAvdRkP9/HTOuQcBaIrg73FbpmVXjtgtp2Lmjwm0z7kzMhsxJc0cjxVHGm76bWJyGbl9WqC0CKE6DDvf/e+21W75Pw/32raA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744055394; c=relaxed/simple;
	bh=mB8if/HWpaA064sV/rx+R5okyy8kk4IMcuuSt/t6JnY=;
	h=To:Subject:From:Message-Id:Date; b=ebOB5nqgunPQYx7Hu8nTorFQMQ7tdlKllo88SBOZroROqQrZEl5GRuAroxxLYwFdNzv0X63ZAylybcaPFvJ+zn+ZX/RSx3PegnqZLJGi+SrsHSI/AwYegCnHhMVd1096LsmSDCdrHjFZg0QMWYIpookegdBewbxrr769CciUFM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhKnx78q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhKnx78q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1EFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744055393;
	bh=mB8if/HWpaA064sV/rx+R5okyy8kk4IMcuuSt/t6JnY=;
	h=To:Subject:From:Date:From;
	b=FhKnx78q9wGW0izqC9jv7sVmlpKbXI5Ny5JGp+v3Gc61vK5RHtQWH3SEf/KNk3Of9
	 1PluwBn8hD7RUAXLjYPF+HgPgZ92YHTW/O49EzMoUyIV1IuqCFXMxkO6TOIm3gQ/+p
	 TKnhCHKdrHcf5kcXiLpTwxQzs9Fo6jgoFFmmzz5r76hLbrWvMQUqrjIKhKNVsEcUtB
	 8RmJ6QMJL06fmu/5WF2UR4KyzwmTLmTv3SgttGMCI97LSDU2ETq0QAyxAlOrIs3JW5
	 ohvcmgehUtxvdJlWcEVJIxSTb8yGkpT4Kb19BcENXMq16XZl35wDxxUiezjVWfb1yM
	 PsAxpYgVma0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405539369.23285.3493858262473825820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67444f051f8bc5caac142e7ae4ff23da1cb9d8826330ed523a41ca0054f8fc01
Date: Mon, 07 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744055393
