Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46A262FD9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753879794; cv=none; b=WvSRQBvLEiCjMW33b38uENlnbzxnBkTnCvpcUC9z1NEJ+quOoZZoo9RXhYKCseb1gSQJzLDUFdHL42v5UOc6fF6MAD7PKvt4Yub6DYJfTv6k0aS5jPd6HBfVfBCOressh2I3xKVOy6kvE5LVTspaILi36zvBd2W+b7GjLJ+l8wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753879794; c=relaxed/simple;
	bh=RI96+knGl1BwNkvqQ12ZWkj1uu5YZD4cL1Kr2ZysFAQ=;
	h=To:Subject:From:Message-Id:Date; b=LnOARE3lBHj/0wSwVO/Chjw6ccaEAvIlvHbBQRnstuZqlO2xPPM3iMYnmm9wUHOgF6gASBGVSdcojOeXu88qyn++zB4m7VNJegva2Cg/uF/6aP2rkzychiKWNSyuBX1prUAi15ZUaN30pUnpOOu1knfshLevaNzT1z/PIQFj1v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLbxsp6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLbxsp6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753879793;
	bh=RI96+knGl1BwNkvqQ12ZWkj1uu5YZD4cL1Kr2ZysFAQ=;
	h=To:Subject:From:Date:From;
	b=bLbxsp6lE3rH+97W4/sjUs7NGWU2fKV//6sft1Og+TjfVbVRvo7V8sk0fBlN4xkm5
	 mTVAgEa5rpyT/gppjofRCFGNjoPSlv5Pyr6JhxxIbHiY2ORdCUXrH9lLD3gIsqDcuH
	 t/c8J5+ihUMk09eJWq03kLB4QQ4pjO2t0l7PLt75X9eabZ0A7tTXQQFM+4LbIefs65
	 2znAfVfbAstV6OAYF0hMOZTkXas719/PISIMdqBWIW7YYJU6HZoOQOFbChhutqfu76
	 SFldQsjCu6tdDIaDpeiPnGRvYZa7+pel5+rTvwN0HW8Yvpo/YAbgPMtgKjuFKD7sS8
	 EWcxajwvAVwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D5C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387979357.13672.8921240992921899850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0261df91e02563853242a3ad7332aed1961fc12d1db4f2dcf5212bd0e4720e2e
Date: Wed, 30 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753879793
