Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C015E5BB
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718740763; cv=none; b=XS6pS8IVih56dPx5IeuHSJl3P8TYlbXiXvvah3WHPR90ThdSwpnZjsOV7elZiMV5muOdv0QFkUkZPkKs383mgBvxo9J0NXrFIe2WHHbIk6/VAG1NdSihIDVtoeS484vO5fJjG3ZP9Jfd8YzI96UGUHu9h4xwzHgzf0qgTfLAAew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718740763; c=relaxed/simple;
	bh=U/ZdK/o1TBIMvZFXvySXp5f94tpmpgeoX0JSeG4sS1Y=;
	h=To:Subject:From:Message-Id:Date; b=WdR7NYt8R+AEVY81SGm0krs2KWAbgoyhfhsQ/oq+32SwyBmel7lnbJ4HYxxi5tLk7WtSwhi+nL/NAxbVsI4+iuNgkihK3CUTjd9x2xmVmu1tx1Lizs6ij3mit678ZibB9QF1Dyw8caAkyiR1S2KjmMaO0ZezWaTwSCGDGZxnLeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkUqTvEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkUqTvEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB372C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718740762;
	bh=U/ZdK/o1TBIMvZFXvySXp5f94tpmpgeoX0JSeG4sS1Y=;
	h=To:Subject:From:Date:From;
	b=mkUqTvEuYu+NvRdw4uwQT+TpTsG+v1aVWGoJQ5Gpv4bf12yYzic4vd8Onc2M76Jsp
	 Z18wWl639mIQibpWkoCPSXDjnVNBhWNQ/Lk0q94eHKGyvocIpwjhkUueR299GdcviQ
	 JfSSCEKxtAX0rkyzeXsRk7gJe81vH8TMi3N70buFYtr8ZXDDG4D55UvLRiP0aiROlf
	 O9iGX+Sg/PPjurEE3vRDJBy5PRpBmWYM7HERkBa7DoqAxd8gtGrUD99ezzKLJU39uV
	 bVnR83fe3p99U0dZtIVDavn+eh9X0P0bZ7Esn91p9CE/YFVSLUyPRCyGVPGS0WOlPI
	 aHT8chfuHk5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC266C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874076276.24449.15025763305339526943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6e1b1d78c60da2891c6d5aef8310be3284519a1faff38a58dd2f7827d5025c
Date: Tue, 18 Jun 2024 19:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718740762
