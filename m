Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD341EB35
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727449554; cv=none; b=pSGRgRcialDPVZ8fUV15DKBZ/1MiZnZfPI0rdKFytmdNKT+vQdZ4KqaDOqtEFTORBwlBQWGdLIqRUyysWUMhkok2kRm06b1unrx9HOyH0O6UmDShkvALlMnqKaQSwIC0Pk7zGCPSUg+OdTtLlg41YpVzMgL8N/s6cD2sBlN1jFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727449554; c=relaxed/simple;
	bh=csFv3zW/yBdRs1rPv+CoztZpRp2TAG9oV8ieXBrMdv0=;
	h=To:Subject:From:Message-Id:Date; b=HkgqmzhnM1uZKm3+j0z//Cv5oPWw0pWv4ZHEZscwXv/wMweh7k9/QWdGY6DvEmheJg1TeIQHDvU+zhdTc3iEDQzo2TZYywvlXATnSIKOQ5ArezN5ONmZlw5M0WHW82Piq/qGmdPyU8hrRQTSsko0Z41egS6Rxw6XLhVlggukFc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWI4lIts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWI4lIts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF56C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727449553;
	bh=csFv3zW/yBdRs1rPv+CoztZpRp2TAG9oV8ieXBrMdv0=;
	h=To:Subject:From:Date:From;
	b=DWI4lItsvZsNu5/aVGBw/Sd79NrGLDGKmTwvdu06Raa6qWDQXA6gaGHAIGZcpwD8r
	 WzQe5HvFjTQksdfDWtoNpg2CC+VKyd87ML3GGAi2pMy6+FekTO87QrrYhGBHow/0jY
	 ywvUSKfeiNuAArwZz0ndGCQspf7MpkTYWzx836FwjkAO9HdGUni9hoor31TsNQEAaH
	 LkiewTcgIog9P9dKpuXpnIUUFtW7tkerQNquwd6BkFPbzaZnXg+EGz3NvoQ4DOR8mj
	 wCLZd/llBY7UvGJLdHwLwe3zsXyaxpkE9QcVpyWVnKsDBLVvhcwyTzIC/DC1q3LHn8
	 kHqzYBokBZRuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2F3CDD1BA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744955363.17957.415144280872973550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79055dffd8c81c78c2c249c3b0ddef4f165dd922c952d34a39a01d0603590b0e
Date: Fri, 27 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727449553
