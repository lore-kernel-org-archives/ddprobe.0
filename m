Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2277D1607A4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753120794; cv=none; b=T5YIkdsDsKFWbk7OoCZ9kZiGU3NBrW/KOFBZ6arsTqaNdouA0DH7Py0uNGfGT7UnibPwGN0OQdzmkxjEGU8/QTyfZxsTVlZILC6zQVOB+3YgRyWDsmsRF4McxyJwNG8uVM7d3kDw1ABUDL/J52dODPAUfB7uP1oOm9F0ROGLz2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753120794; c=relaxed/simple;
	bh=Xo6AkXXj9hq2zQf8Bn+cAWIOI7HxM/Tcar+2DH7wzdk=;
	h=To:Subject:From:Message-Id:Date; b=HlGnhSTgdRomd3h98hbgpLGENHH0712n4WBZHyMEJsXEArKji8gtxXsxeybaGCQJay7rV9HEU1OANuhFmg3NgTuCOynEVAmM71ZhCFOD93P1wcIUMslwCQdC1oZQ45M55vIlNkms+fG6NQav6j/e5cM98yQ0YHdMMUQKVjmdYys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbU7YNo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbU7YNo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2512C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753120793;
	bh=Xo6AkXXj9hq2zQf8Bn+cAWIOI7HxM/Tcar+2DH7wzdk=;
	h=To:Subject:From:Date:From;
	b=NbU7YNo+bz/k7YOJM4XvtnGO60F2pXyvyTULV/SQUwBjd39+HMNjxhN/Qs3tH0GOQ
	 F9nhkySd429tjw5EH//l+QXfcwrnwFxxNTrRVKJPYuzvNXjTiygzLGDcMkcTjw034d
	 rs1jwBCUO1IdNGKMEf+hFei+8P6k2uuiK4utE+fMgH5adESTBb99/zxpBdvVh1+9WO
	 ZbBepo86yDQvIC8lbUZcvMUD0JU6wTXPVD1+GnmwEjTpXJELxg/tnG0nsk4qOBL4Pn
	 ICDLmxhgbn8gzs/wp+Be2JInuhVd4QfuZksM9kmSCbLpqINeRX+O/IfC61rmyQAjYZ
	 y1jdiXEuDPBXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312079358.9175.11456587773712204764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29c9986b17af725bb86d6a171eef34332051a10ca5e1e757099ffead5942499
Date: Mon, 21 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753120793
