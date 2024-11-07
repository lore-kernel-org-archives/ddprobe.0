Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAB118FDAF
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730983555; cv=none; b=oEsM2Tjwpdk1mflLaxBc91x5LsMg0qp5BmaiRrhad293hXwIUL0N3DluFNobJCFMuUmqTu5qWAy1LUJX53Dq29lNpb1JZRbDQiUNYOlZ8JyvzuoZ75YEMwjbS/zj92su7rsGofIko38P+czjCWjAb6CHPEI2IKm9h3JMcPp8N7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730983555; c=relaxed/simple;
	bh=PHsOYkgJGAOxhFDH+4j62sIXDTy1Xdb/UBmwC2rEaSU=;
	h=To:Subject:From:Message-Id:Date; b=rtnNm/OI7P8Iygz2vBHH6IdTZ9rrImn//4Nqk4KvZLsd+u6TfMrMtGdMZ9eG4aWmRrMq7LnP2Fr8Z+MMifcvNG4N3rGr3CgCKAuKd1ab+V4JEdQnYXdn1Gv5upA/m+OYmCNv3601Cti8K6lvzMxOZ2UY/GpTmNFZF8SU6fi8dqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED5JtLZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED5JtLZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08B0C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730983554;
	bh=PHsOYkgJGAOxhFDH+4j62sIXDTy1Xdb/UBmwC2rEaSU=;
	h=To:Subject:From:Date:From;
	b=ED5JtLZZQMRSiSsidw/YHAMsdncnDcUOKNRqKYwF81s0zinJmuHHmgdkULAqWK448
	 G+/0V/gsyYHtIOB81oERKF87GcvGmd3BaTAtT7YZNnW0lLBMix7CbDA0hLn7Knnn3u
	 56HEKhe/vx02jdyyT8jsXH7gEseFlc2pa6OjqZWkG2pNX6geCu5KEutRn1CWyN608f
	 W6RXLlWCNNMZP5cAEMZFCBt3hdW4665RINxWS7v+Jaa1R1NFYpvN+hTdWRVB8+Mokh
	 h7wT/8PTQmG+vyvHFhxVuPW8FVeyJ0D2zX97/4NGKmxYJ8PMZA8eaVG1zFXs6RHHho
	 QGeuYEJNCQleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93033D4335A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173098355359.4568.16765722875620957818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551e032b3104da6b41be0f700cc99704374a443a658e909b3244bd98b6b04707
Date: Thu, 07 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730983553
