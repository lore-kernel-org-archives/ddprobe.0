Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B8A1849
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718321903; cv=none; b=Vyj0mg3YsDFmZQ4j8CASQUoYWBCCAGkNKibjCD1Y4i3OwizXM9Z97VNxHQAmDYsJFE3oZkk4alczt5ljxPZIoKQPjUC1wJac9o23zZQJWBx7JBpQ7UNKqMaI4GGp/JMZC0usX/410eMOcD2GlcbhKba39BIqTWfo0JMw/BRu5SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718321903; c=relaxed/simple;
	bh=TgXCGl3GHJb1wlSJNk5qVF7opr2njMsibKX62L0ufzc=;
	h=To:Subject:From:Message-Id:Date; b=OypSjs8YabPOilRKLbDtV0pEdrEjDZBduP5jkxSCQuAL8z/jm7XBSpr1aAz/8ez3Kr6PNCbDLkL8FIa+EEZdo5OeNaGN3U4Ruxc3d+lbdtCFih/kSt7woInkKT578/9cLB3hUvNeFepfwLgb0a2oLqCIMyuL6TJTTcScob7WJZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxMGwBXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxMGwBXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D75C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718321903;
	bh=TgXCGl3GHJb1wlSJNk5qVF7opr2njMsibKX62L0ufzc=;
	h=To:Subject:From:Date:From;
	b=gxMGwBXqJqyXFSOH5HkdYJlkDYrWgFDBfkkedY2+ob6I8uHd1QAHBHvLvn4wxYCjz
	 VKuMxdsSzMcolaVk1UIx4YBddc6hwYPNT0cTrM2aD2agfyUcNcrcDZmxDfSHrS9QuP
	 AfxJcQIihB6Z4C0XioX+I4WzjBA2PwCUXtvdvebyqBTnmSrpme1fJzbglK2KSe2P/1
	 j4a0PY64kEz/wmPJdyQNOa5XQbrvLuXUJtkIQ84MxJ+6dUi2C9VfIRC/eDAHPVFGoB
	 X2PupUrA/+Gp/dkw/vygadpyn1Ap7QXAR11c0y4rGaP2rZW3nD4SqzdQaggt7Silu8
	 mi3zWdWAZxRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6182C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832190280.28339.13537269268588294464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1741cb77d0de5bfca3dafd1b8e285a94fea27e5449bbd363f83c8de5c7d637
Date: Thu, 13 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718321902
