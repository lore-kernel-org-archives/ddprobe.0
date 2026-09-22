Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52541542809
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790093434; cv=none; b=bHBKO8lmRX79AJ3lnYl2OxpFEaJqmJC6zmuRuT54rGKyL2bte3TRQvltASFwl4EqHP0nXW11STSK0N5bIT7Dh/KOQ12a2fvZcXNaLuQgI7FRq8T0cnuIPJi9iELI7qJGNrq3nL1+layQmdBWLup/Kvke6ClvQHPU/WZE1KOsQac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790093434; c=relaxed/simple;
	bh=IsAYAQyCTMWCiK9YJPIGs75WBWhhJTp3TaVQh987O1c=;
	h=To:Subject:From:Message-Id:Date; b=L5pzMK1765xvvctItwqzL15GycHUwQUIdBIaSoo6jMGZddv4dRtAJ8+7kNU20/HJrtvMlOoPpT1rpGJVWn3fXIp23twDHMDnSHkWRZxueaBVpU6XQ8tB8PpqQtGD03RHr7+ay54xil55YiTP/nE8b2gPY+iWgDCYeHE+V8Yk6kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH31NSW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH31NSW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64F9C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790093433;
	bh=IsAYAQyCTMWCiK9YJPIGs75WBWhhJTp3TaVQh987O1c=;
	h=To:Subject:From:Date:From;
	b=RH31NSW/0bkASZ+IxtUzDrH8ZfCkn/ULl8kHOM2xMWect6E1TyJHCDjRMpRUkwDA8
	 G62IIdP5O0kZMgmOao8PYxMTUv0oLJYcrigIe+lohh9yAke866V0WwDDifwl5ZXA3F
	 bk+gYiWxVsFmevf6Jymka2CWs/5z7eko+2JR+OFKMF0etQowSdIKJ8KWRw9qY6MsMx
	 lQzdujN7wbV7T5Ij97NT5MPc8j6ScJy1gxW5t42T83ZeL0hm9hZCzymG6BcxByeBLN
	 2evqwvMSnrNjiqCU06NG3423SdGgobjiu5RM/whWLk7BtEgEf1bEYJugXHEAOrFH/3
	 wfV1ryxN4+YTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E16C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009343371.770.3252542339306742180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b5448b6ca6c44d26af5e1470b36065854a33ad15e4c0fe5c1ef307b2b8207c
Date: Tue, 22 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790093433
