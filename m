Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289797460
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707016097; cv=none; b=r/WLYw+xgGS4JqKPXsjSEsd1/xR+HuH8pfhJQQsfYrACHHpNUiUtLiGiEmHjGA3LV9ZyLaPWbs8osg8WhaoBK++BaEvBgFZic9Mtk2NiZbBS4Qv6wmGAayXtWN9OCCYyjSiGVY7Q4hxikAnIvCSRtBLjJnv+qo3co8KVavP6m7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707016097; c=relaxed/simple;
	bh=Kk9y+8SdfZ6LJyFYz7JOjoHfOuaz1PmCMcLORDHb/FU=;
	h=To:Subject:From:Message-Id:Date; b=sn/slJU3wn9CgYhBy5FZTzcUqPsgx8B1ZhjOUqHSdDxZcmAA2laKyZvZaRrxhlRfrtAkfgzZjhEwFRjJAEohtutdvpNiHGOtj7+kq///m0Ug7MOJRld/pIiMQl8E/nzvbox2xDpE9GKTqdIIBXkT5s7+7G7ISHnp2WeS0RFS+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn52HN0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn52HN0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838D5C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707016096;
	bh=Kk9y+8SdfZ6LJyFYz7JOjoHfOuaz1PmCMcLORDHb/FU=;
	h=To:Subject:From:Date:From;
	b=sn52HN0uNxNK+Jakg6cZLSG2l6/RpTA1+IaGffrm7FKgYJebNXru4AOQuXWp+dAh+
	 S84khHhS9yCzCkmYcKC1xbrb+g01l5OP8Are+bYcmIQ9yB9BRx+REuYvkMbgFLUseg
	 X4XEGtKuOFaM3BUfvd2qP+5CbNCG4rDbBNMEqstmJbs2AjH9uokjey9orobnXiRf2D
	 ZcI2CSz80r4dUgnIaeiToDWwrzwoXTiarriaJ5YwwK49T3rK3jMCaeeL+yROAa5bLv
	 skP575SW3wr2ivPM/6eMBUqvcfL+akaKxnXkMDjg66Dh1JBgGUdxTDJvf3730CYetF
	 Ihb9rk1S5Oxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678E4C4828D
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701609639.12487.7811315498905231067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799ee838720f6f221f00b1b175969d2214ca7b90798bfbe0870f3ab67f14987b
Date: Sun, 04 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707016096
