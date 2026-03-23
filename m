Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38F623C4F2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774280094; cv=none; b=q8oPmtRXwbAi76s3GCpSfOLLku3LxMhWbQN0PrfepI1f7l8CpWU0A5wSNOsmeoOrfRRKIqqZRnvt45TaXb0o/MFg1u9hy3/k6X7FwZgZsVfaGMTrYp6BBBdlITXjcwtqsMc0YftK/CGTt1e5Rc2qLmGfs6pIvUCdppsV6VNbR1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774280094; c=relaxed/simple;
	bh=l2Lw7SeE45D1H5Y9flcbqtlFUyVthtTT8wg7bRlUIwA=;
	h=To:Subject:From:Message-Id:Date; b=kAUybD0dMl8FIPiCnkUi+Of8aJLkJtjHJmLrF30JWo83Fi4AMs64pRcll0JVSZU/15JV/afh+OJuau34ep1NJHr+FKVEnQo9qrtujv6HkA0LvJKVByOH9EX3Yet/yh71NuSh6u4Qz4KViomImZK41tGLFUenQyeSEEZd/Og3i78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrS0/5nQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrS0/5nQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A435DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774280093;
	bh=l2Lw7SeE45D1H5Y9flcbqtlFUyVthtTT8wg7bRlUIwA=;
	h=To:Subject:From:Date:From;
	b=lrS0/5nQzssNono0viLIFxtTpZlxkaDWbVS2HQkAfk8yY8os8KDEIEjh+11zdCxyt
	 gOFNAz29S81U/xrLjddGRQogr6DPhn39FHgW95XtvjAq+T3DtNPP/wjmMaD5jPG8Ha
	 2yB8DstxQ2FjZUx9+tKLlCvzbzbvXa4t2IN0+8GbAWW7X9ZdkCNMmq7FeghpZHTWNT
	 LgIB8gywKHEHwgEUgtARQcIdOMc7K3iojiJ40tNJQDS56IO+akCLg1F1vS4lJyJdSY
	 MZ5BfurkbHqRm/h50Cnyu8gXYe0N4DhBWefLdmOyCqXGMyeits6SxDq7nlqr/7Fks0
	 QgZc756tDO55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB7F46139
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428009358.19800.3134268187517684624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2703679ba3cd6d8de88360545f2196f96062469a9dbad76b51337281bac0fac3
Date: Mon, 23 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774280093
