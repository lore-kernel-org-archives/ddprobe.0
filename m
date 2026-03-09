Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03476392C2C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773061494; cv=none; b=Uksb2fn+WyZ8xof+pC7aWyzZ2Vbaw09KAXTDeyevnRjbG4P5jSU1oxTvyBg7A5mXsg55jwmRTxhxmuYPYVKooK+ZPKR2+i7UKGJul6D8nzKHGitykzVA8TNjWZb6cllVR3VjMFLZgajbcRqYMyrWpxZ4iqVUJRK5xQ9bmDj1ERw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773061494; c=relaxed/simple;
	bh=CdBXnQgssZgYmYKBQC4rMMuZK5uYGuXv9JG98FroanQ=;
	h=To:Subject:From:Message-Id:Date; b=Umwqzk+KjVbEx54FW7RPGHolz3xEYGgU0vM2EXnNrtWx/zOk+eLb5WmUZevspC1h43YAigMzNKwK8dvPlCgUl2Wa+xurFlCwfBPuinc4VWWoa+siDMl7gJDgdyjrkyREhnzuhcXxyXxyDTbPQlHReV0a8zWVR0G8gAD+UBLYcNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTHb2tNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTHb2tNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773061493;
	bh=CdBXnQgssZgYmYKBQC4rMMuZK5uYGuXv9JG98FroanQ=;
	h=To:Subject:From:Date:From;
	b=RTHb2tNh2Ex+FKFIPbKDP0eMpPbryzvRdy9Q0+aWbMJhZ60sh70nM7EK0zub2xyMv
	 iuxq9j+Lw6MNb2CO8zXzTXx51YNjEZBCmwgYeDEZRiuDMIIWMuW6AH9XX6pi6uN806
	 /lPBwVKEZ3r3mt7Y9RddjgHFpYcYDOtxpcvuPD7hufaZgkfVmvaD5ycpgM/5txwhw5
	 xnuMChMTjJEeo3cGAa2iB/J21ZU5/GdkbFKM1ieBU1tbUk3gg5pCWA+2S/O8Crx1x0
	 Znxk8h7ennuPz59ICU9sFcMOMYNXDlxPD/8IaXLdQdXQn0Ne+qYfqB/GGf8S0ovyTa
	 hrWZjZrCstw4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F9F3C24C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306149357.31742.5946554511007036377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcce96fe1d49e032dd6876eb83c4bd13f16293fcd59b67b15caa444232404bf2
Date: Mon, 09 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773061493
