Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A48285CA4
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782048394; cv=none; b=Kutt6e23tncOCmSQsmRQPq1l8DOVyMk/oPtJrRUhMPoP2TfbjJTAM1LhYIKkB8U6+Xbse+Ttz8hJrkif3ea4X9qKJvJLQMRCpmSrwZ+aC5RMs5654EITJNyveepOsE8wWySjNOTJdF9ju13WCpPDvHHZqDNESSNU49/Zyzjp1hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782048394; c=relaxed/simple;
	bh=r5189VAVwIqR+8TPbqtiZQS8R6o6AkgcKXUNrwjGOfc=;
	h=To:Subject:From:Message-Id:Date; b=t9yt+gNZK0VrdCoUlH0pwn8IIuY0vw4DQcR0n1Lv7nXXOpya6FOMKFpDwQnZ3JCW1iUxI4MUxGuqZ3jv1FxNQaKvpPvPQLuhw88FDWyc/ipt2fDjyzTMDP1ugAcrPeOJ9rIVufqgKZ7i+SpEZaEpxMxE6pYs0iL14SWcALHLYhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsRwQeok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsRwQeok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B95C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782048393;
	bh=r5189VAVwIqR+8TPbqtiZQS8R6o6AkgcKXUNrwjGOfc=;
	h=To:Subject:From:Date:From;
	b=YsRwQeok2Q/3LYUhQXIHD0QTFsxxrZG1dy0P6bSEVruKcK3dRVqCnD47PEzfW51qD
	 eUnqUlsgwHL7PXf2Xcg16zs/ZRJgTch9IrIBrL53RgDRV5thQTin9aQBbqZ++Q7ETn
	 IQckMrJS2KvRUpyzJyu6R87DOId2LBdfNrmIUlHLy4SqHxxdje2NrqBtVfmgPcQ4B9
	 HU9x41tejRisvziu3eBRPCawelCI021jJ4VZazyCoKVxndFlxXoULVWTMbLZfztgXS
	 x5EKhVnhJQxdhokcz3zTeO736ihiIzf1MZehr+jUZ1VwUZpBjbS6qKioQHT55wrBaO
	 4/IqnVhnI0gMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB555CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204839369.1959.9446397260355552176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ee196697a2ec182b06596dcc405bedc6d1a3a4e5d3c157ae976af3f5e7501f
Date: Sun, 21 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782048393
