Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBCF13C908
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792314034; cv=none; b=o1AN/RUv6BuC/zyBov79BJUuToh7Qq3zlzhejWtDOSEdKX6NdqP/ewCwswd66wcg+JSeqKVfJver6GiStUQ4PeGac6REcTf2n33q+dIVR3OefQZpIaiP15WRFnHRMFjaBVbqP50/PJeafXvAkI3ASsejPu01FQFAoEfWS14+wDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792314034; c=relaxed/simple;
	bh=uraC/yKje4UobIo2tPCxIOukIm6/6P2C+jgGAA8jAVY=;
	h=To:Subject:From:Message-Id:Date; b=CHUy6+5ioucV40eGCc+z74YcOeUt8HB7NraKuAqq6DdfiBAKJEbtwx3YFXKvgnL/8CbukowMgGgtrnNVjZfzrSkse5TttICuiQM7GfWUp2MiGBckENm4E9XdogHBIfnBhB+x+phm+EzrhnFsrd44ae5W6+BUD+bs3rqGiT22OX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qboPbr3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qboPbr3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC784C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792314033;
	bh=uraC/yKje4UobIo2tPCxIOukIm6/6P2C+jgGAA8jAVY=;
	h=To:Subject:From:Date:From;
	b=qboPbr3tD1KFoRMFfrjWONAn8ehgGRgCXLVjv9LOwCb/7xyfebECyBkbWik9ZMrFH
	 Jf4k5e88xglchvADa2ZtbnbYx3a79XUOsjDChCWe55Rnd6D3RFmfYeXVF+/83EAg3V
	 Uth5E6Dz9eNBG/ovc2qAmyZFT4T4AfECCPbsC6SaKV0FUgkBCkSSRrXy0jqjlYew5C
	 b5ZAevNy9RAJhkprOXVfW72/X06l1Ow7wm1509L8/+ZN7r3AIgHg3oTmDzVJlBanZy
	 //GsIHo0pXjdy/CPQFuKKULcHunx0Fwuw/3Ekw2g4ORqt3KVqq5VPX9NnjPAVbyHFO
	 yA3PAt5eZsobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DBCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231403368.8339.13909791812179832307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa285b2afd651578cfb5c37b4dd82806b01b4dc7ff754d7d2d5d34e178da1b46
Date: Sun, 18 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792314033
