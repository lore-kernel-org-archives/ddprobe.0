Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C78388364
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776673654; cv=none; b=Zt3vZH+O0fXeBo5E3Zk0had1PSt8b8xW1cokfy8gf1PjwFwZHJhxrIuJHlQ3iRCwfL7z6IYHctexlP0idqvWWrJJE9CYh+yjpXoElNTjCKdSkTABDJtSAESMf/6MW8FKWUYR9BX2+okeci2p9k/K2SwNnVAYCFDNM84RbGg1Zw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776673654; c=relaxed/simple;
	bh=RPEhCxNWKv3SxahelmxrXV093pr64TYL6a8YVJ33yjI=;
	h=To:Subject:From:Message-Id:Date; b=gfpcOV0qDk6/qmQLOumn+j1H5lCNt0d2HfIjsDmfDQZysajAdwC2W1VYRKHjn4UrEXT2UZhE5NBcEw4hVYuyIJwqM7VpagFFrhN/HYTh5guBJS+WKVoEPUn9HgcQAa8Qa206nHmDNAS2kuJSZORZF7s4qGAMU6iM8SaSC2Q13Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5vMPa7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5vMPa7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83BDC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776673653;
	bh=RPEhCxNWKv3SxahelmxrXV093pr64TYL6a8YVJ33yjI=;
	h=To:Subject:From:Date:From;
	b=q5vMPa7kll6hLOntDXzx0MjalyvkSErCjKRk1qtaTcVPp2rjNSUvw5ylo3DwK6CdY
	 zH5avBlU0aT9JfnodUEif3uviV/wslZMvsc1m6jIFTDL5faaUzZ0rZeSS9ab2KFbE4
	 DGHyeWBOPOR0Vm3fwWudpC7Ouxyc8OwmFseTgXNTxfGRre0dKqhpdgq+BEaWsFEDmX
	 F7Ny1NDg7qh5FEeprylGiRGrnrdqoEVv3hPcIjkdVNtu6bPX2/6Y6yJwnEbLvi3zEE
	 ovUOoom0gBVCH7K3X8bj7y7vYfDmUxN7S31cNE6w9osFWXdvIK4R77S2El4KVwQodi
	 uC8s+3Cd4yTyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9737F36C59
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667365368.11348.6058470426669302110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59769a37125066348254635f5ddc0a9943b8d7885eac0d584834aaa562e5a83
Date: Mon, 20 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776673653
