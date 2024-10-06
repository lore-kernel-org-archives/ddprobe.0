Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6434C91
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728211554; cv=none; b=IOdLMHPkNeSVGSpGbY5XGMr/E87GJH4J8ZHfyrRcVfdxrPHJ8z3JkeSGxW9elRW0Y/u3lYwJzPR+ZjQlKIIrUiwXdBjbepPJWx/u8on7We4C1EkaSxG5qclNA0nyrG40hhCMZB5chmRXqfIpcwPToNu/zY0RaNXbyiw6PxzC2d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728211554; c=relaxed/simple;
	bh=J29Svl4By/XUzH/AsNS3PasdOmjG8Y4ZzEjD6bF0Cao=;
	h=To:Subject:From:Message-Id:Date; b=a0AscshEbGllE0orclScoa8G6/XnNl3G293qLgDkU6gMH/36LWELzS7jZjpuRShg96eBrpa//gxnL4mm8kvCfxhLhLChEVQKYlxyHxiOo4nOKD5z+v7OZENXXms9rK39X3Sz+hP2EonZdFisVpjgJ/IdcbqlUDVMTf3d6jsgpzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uipeIHmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uipeIHmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728211553;
	bh=J29Svl4By/XUzH/AsNS3PasdOmjG8Y4ZzEjD6bF0Cao=;
	h=To:Subject:From:Date:From;
	b=uipeIHmXa4cdaWmpd+SjiehCvrrgBvARSFkHtrlFW7xzjXK2z9P8GgmAmUMHNrClO
	 8U7uKsBtaXrrQaG38MSuiJwmYsupqEwTNsilwrwwZpsAP9OrpvXFWw4APrxB8973E7
	 VjOaKxx9gqVqNR6ufHdG5ZlJtcU2knkK7yxVJBKbpCNRr5IA/wI27jQm+8xEcyXHKu
	 KlImicE23YUh8RUE4PWUMsJmwuS4HTyyXPHIx3xAs+dCZ19dXBv/jFeKh0kxUfRUAr
	 2rBdEdOiEl0urUxE4Mdh9rLnZ/5rNDwPC4oLH2viWMzIivDP7DGgOsTGA3U7b/uf8S
	 fWth7/5EtJw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E1CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821155360.20356.14273137453188897418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcc8fabcab58a696e4cd7fd7f9bca940c3474230f99e95f76ce016eed5f8fe0
Date: Sun, 06 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728211553
