Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702412D47F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776854254; cv=none; b=CXd8TD0DO2dkhCz2IS696LeEQC237SdA7BgbYbAMAKBW6atEiHEbvNPe/pNPJFhfuu2LxkKltbqBmNkmc7W4tx47t33SS/KQGwW55bNAzreoU+XIeNCLmy0q8lYYMoVFHe6KYnoa8U0h3URs5/uWEY/NbA8AMrbNV6ERBX4SJ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776854254; c=relaxed/simple;
	bh=LEq9UWz/EuejDQCMQ1c4ryrvjg0Lxe8pSC8wCpiwrbM=;
	h=To:Subject:From:Message-Id:Date; b=BmFsPUm4UjB8lOkCK51hRI3TUYprs4xxylJL4Bgl19MUljpVWzrB+MIYNo3eP2eMFOucTdGfTQID6xhwCfj4xS7Y2taxMkQYFEQtcY+INX6GTN3vp2DUDfGsR5adPG5waoKg7BnZtQKpzoLvOEM4Z8mtA3dFC+63udUQ9eQz5zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy09QLIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy09QLIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBAAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776854253;
	bh=LEq9UWz/EuejDQCMQ1c4ryrvjg0Lxe8pSC8wCpiwrbM=;
	h=To:Subject:From:Date:From;
	b=Iy09QLIhNlGDhdkUpmHV3Wuc5h3rpcjznE9RjUswnCdqUysrauR9zev5eBrx/7w5l
	 7RVreEJfPdYzRSJONPDWRdJawstUDoDGQ68BzFf0Y4q0gOXIZfa4Ukpch5aIF5qFVK
	 tcCvA+zOEWDJbOcZ3VpNH5teh/H1/ymLRUNjGB093l75RS2KD/9B5ExBVqtGHzdXJS
	 2OWKiszDvmwx8Z9ucEUUuwssrNrDCzMF0Ik4r3ZB6NvXPE61Sq+MObTrcECnnms5OB
	 0Wx8dhm6LclrG3rlHhPAgdDykYmTwYhdFmd2Nd8+Yh7qiv9hQYedAjGsJ1KQDyPD5G
	 ZjRCUBiWor2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B7F9B610
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685425368.1881.17571335974538163896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474cc509a3ebca5649dfb7a9d307793fe236cc6aa1c9c0c064543ffa87384047
Date: Wed, 22 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776854253
