Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234383D412C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779056434; cv=none; b=lX1SBY783GDT1KIof97s0PldakrUJ9JY1OX8BGZDUpCzFHC+6AL3IgZsDSfKEXOc0zN3lek4qGEcSSTf5oDzy9tYCqwg2zPo0p9JP+isETb4b6mPkJ2r/pSHN+RyldsVcMcmcnsP8fERSxNpp+lQjP8YZWztrCSJvuLSr8Iogbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779056434; c=relaxed/simple;
	bh=UHxdE/mwKWnzmwOxlZvsS1a5Ta1DtEzOjfz985qYqwU=;
	h=To:Subject:From:Message-Id:Date; b=i7TpH2c5rHQ0mp3VSKGlPfl09WOdWvnm+2ezCcFeR7lMtMTGmac7gG3Vpf9bWsi3iM4EQ6+mZlDJZOzA20MsIhGAC2fRrGHAhqlNYGrMVKS1DEl/A+wOmHykFEkRvRphFlNsgRG11JIDZAxwUyZTBHQm6loaeE6byod/GGyrdbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO3p93F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO3p93F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AB3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779056433;
	bh=UHxdE/mwKWnzmwOxlZvsS1a5Ta1DtEzOjfz985qYqwU=;
	h=To:Subject:From:Date:From;
	b=AO3p93F7yaZA9W4nAJ0wZcETk2wO82lyJz9lUuA5fpOJtasjuKypfybN637TktAn+
	 P+ti0MDxeO1EOj8+EvNIBTbp/AJQQlPB3wxowDIuDS/0xo8NaD7xXvV28nbeGAp3VO
	 oBfXPbzbZPbhsSv8hHpbq+0w6Zhf6VdNDf6QD6C6IsRx8vabhXezFIoTm4+aHmNQ6l
	 J2Rcdn0oFdTVml87l/zWL3rRl5/Eys3Pzf0FXcEPWCbeIhT+VtmawmiuTRhtfhq2Ga
	 NKZsAM9KZV4dI7wugDDFUiHryj2HdcU1riItS69nqnIgVTo2hQa2ipeckKfzzOpOq6
	 oEtjTPZlLWluQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE87CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905643369.9853.11709389573420073176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c422b5ac389a74ca1f68212dde9a86f4c47515110b36d4ce84cccfad34c8bd5
Date: Sun, 17 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779056433
