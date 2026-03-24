Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84103F7E6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774369494; cv=none; b=ey4Th3V3aw7kl4mP8MUr/S7cj/E4drjPUOnpZ+Hz7GdOvIdtDOIFlwZloxeqxQ+esRRgFKiD08vIM7ai3sVfnpHosIHbK59sCH6GV4PqrN3Nv164AlhtPoEucqJpL+8ZDZWjQK1z3C1zuc2NWPXRCspiZHnnt3Of+eLC+jJ303k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774369494; c=relaxed/simple;
	bh=m1KJTj1vBQeGBxP3s8NzDDOJASQdErXIqM9KEzzI+Ls=;
	h=To:Subject:From:Message-Id:Date; b=b+hrLb4DEuEBA8mX2WY9Ivvxp0zTVImrpxABNyCr/9itUas2dH0xnkhDaFB3ODTyIzC5plGgr9+PMme/it+l1zyZSbY46XdTKV1Q+uZKbdpIvI9rA84W0MS9Bw+xGkieiAGztHtIRl2klOS61KEC3Euy0OFAaqIxHn9bdApTZb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LolOlWTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LolOlWTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E0C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774369493;
	bh=m1KJTj1vBQeGBxP3s8NzDDOJASQdErXIqM9KEzzI+Ls=;
	h=To:Subject:From:Date:From;
	b=LolOlWTxhSxeezaGFjYK5Zn8zGwF9VRERFRe8J9ByXZTna57hirRlqd3KGGY4qBeo
	 psfYONDcJwkjbIBzBPOyv/ccBz/fAJYCTUFm5aqU/86ldim2JJc1VxND6dXDUEmWNv
	 6V6GT173m6axfh9LMLwfjgEmx03PGG6orB8zWZMdPFrutoycDVC09z1zXokngTljxA
	 FBvCP0RIjTs3O3zB5Q5kKqFBzBHXzpPkrjFAueNHyuImpIsLurf8w9DYODYYMi77va
	 s6ZAmOkuuBfVR//GMeWq0ga4g/7+fddcCzuvXC5Sgu7LBnEXMSgMyy5O0skMyTIroU
	 eeBV1qIfo2Fqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E52F54ACF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436949359.6483.404374980014199056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355adf49c27bbaf90a0c83e79ddb1229d593ca192c4ce21fedaeee9bf6b417e7
Date: Tue, 24 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774369493
