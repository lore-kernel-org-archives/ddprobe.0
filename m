Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEA283154
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749590394; cv=none; b=KJr0seRwkoCHq2NLFT5oV9FAE+pgD0zcX24ukx8gtWfrhFzKzgxq5RAEW/RpCdHKbRbqh6kRjzdtaE/zedqLzO60KBSY4Jw6sFSrr0OVuVqG9qIZLi6IvYaQWdPVp8AdZgqRCfXZvAqvGULZjsIUQi+Knlu8VMmPrgvAGUV9GrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749590394; c=relaxed/simple;
	bh=InjTuz+RbHDHacn94TzDGhWmefa8xbY0VsGowR+sxTg=;
	h=To:Subject:From:Message-Id:Date; b=dCkwerHTwAMrZmRTcAwveIUUgbibtulfiWR4Tn+JxZWIokGM2brs9K2HN/XRv10mTxpn+gl0M/dCQk2NBUGxAorRp5Z2QGwAq7S2+WubvzMEvM0uc/IjyFN09Yh+4A9vN5ac1maV8pYZ9/heZHLjPpPGA9XNJUrJLJ1Ae9PxvOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXzQXxN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXzQXxN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1591C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749590393;
	bh=InjTuz+RbHDHacn94TzDGhWmefa8xbY0VsGowR+sxTg=;
	h=To:Subject:From:Date:From;
	b=AXzQXxN55xN64AP34wE9AIZBc85cT01SbcgRgl2WK9dsXrebILRUPhXuirGgvFbiT
	 50N22U/omg7HU+N6CR8qiZn6U2TUB+F7+AqeICni0OTFL8dTu5c6hIsZ8xLwtJ/2lw
	 FPla0MY84oX5x/4+KdshlX+SCVPv1SFv6IJmmrRm90Wbk4IE94XQ7bwlYKEp+EGyBE
	 YNd/cw9RavhgO9Os3Gyc09Lp25rIgRdm+DLLqqWUlo7jmY4ajjVcLOKHOT8IE3ZvrJ
	 MeAl8k5ls1qJedhCVluUrQAsBfDME6ZS3wW9oPJYa8rmpVLSicshu1PufkfexwE4mG
	 kF5wFkG5jCbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D7C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959039358.10849.16329881805588964534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614f965b0c28dace489924c3bb391618de50da51949d663e55e875b0dcc14a6c
Date: Tue, 10 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749590393
