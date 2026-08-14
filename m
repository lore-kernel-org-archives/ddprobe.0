Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E547D464
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786719036; cv=none; b=hlGZDHzHQZriu2xVFe4GQ7eF+Mh9w7n2ZgPWXhmullOOtZQQBM+3DllNqkdkPI4i6bPkFGuq+O0fEMK1Rpky7hL35ss3ZMkd7QpqJA3ZquARD9aj6nVMh7Yv0AawWXpuDrXL85zvOYX/k7Sf4QP/cWXs3G2HCP1+M2BMBgf3l2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786719036; c=relaxed/simple;
	bh=ckFFti2SusRcU0vUDMdd0kPugQIsbcf3L9EQQ/J1VrU=;
	h=To:Subject:From:Message-Id:Date; b=mJ+d8kWnj7FjSxwZFfHS5YP8/IOdAE0QNsEpd3qsI/aV5wr3nk92Pi2QWL87gMMB/vTGk6Q6FGyXaxDTiiCdtdyP6t4+YW/LGpZXCNaq/UupAPDtf7wZT3F3aASOkJbbpK4wSpT2iKOC/x3mAz8pN+ckO66VLdLXIA4PNAQHI5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjlVKu1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjlVKu1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94A2C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786719033;
	bh=ckFFti2SusRcU0vUDMdd0kPugQIsbcf3L9EQQ/J1VrU=;
	h=To:Subject:From:Date:From;
	b=LjlVKu1n61dz+tD60+qGLnpqrHc1+jfJj7q4t/X3bQAaQM/Dbbs4TXpDkf+esqMcW
	 kuPhtH1KhNIlFbBk3tnGbHRpFZSZr71Pg1iTk5dQn2hXhnmtTLAWgZmPl4+jcbsA8Y
	 jGIwf0dmYTn204qxGRQYjJOHMVi/9OE2XGCO035Wu+EgBZJ7hN6FaILsJutWhXxXxY
	 4RdaZ0IMllGu8dua0ZHGf5GQFy1teDd7dRwU9mroyG+Zpr0rE//WCcutod/NwrhckE
	 m89LDRJN596ZP80b/6My0NXeJg2RbtZAFrh0gJUoKXWkglVSlP/u7gHkZN4urLKJ/Q
	 H6h9PMyvWfK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7996C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671903367.9815.17724407327141374272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9696f50c14c9bf41b1ba368460c746eb9b4c63338a94443e6ccedf8edbdb2e
Date: Fri, 14 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786719033
