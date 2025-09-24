Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B52E285CA4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758700194; cv=none; b=KjsOQ+TT4JCIdKJ6H3oSwYk0xqSwvBf7MHC4GVhQ7aAQ0JRmxnoZYvEHof0eEuMri8edVALkt+0EuDxNDr3w566fun+lhnE1AZFceO/VRjGe0EbJ6J73lwt/cR4xn38YtypAvnqGUdRddrOhXSASkVcHfJKNPa/1bcUL8qJbVOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758700194; c=relaxed/simple;
	bh=fcx5RsPI56iTgO+lgDkVaQ1YaDUArwPnSilIYy9Ezz0=;
	h=To:Subject:From:Message-Id:Date; b=A6gAcE7ps66+Okgjn1glMCCqMKkKXqTpwDmE9e7XVJLayPKRVbS6R23BOX0vBK/EfFGZiA3hqMRXecCDlo90nVBAJDu5U+ahoTz1nw2SClvwr10XNtkvD2rxBnorO6XL7PD8EGl+cB1ymk5U1FcKXS3i8ZpQJwWlrTtku51n818=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLXZRd6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLXZRd6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC5CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758700193;
	bh=fcx5RsPI56iTgO+lgDkVaQ1YaDUArwPnSilIYy9Ezz0=;
	h=To:Subject:From:Date:From;
	b=aLXZRd6amd+H0MlU5rSC0aQkIG26m5SqEmyZUXQXr26mD6aza/F8gwsS7ag61vSeT
	 gbqs5XuiMG1h4mhuLsEEuxgrXINDqGaosZOjkdCqj/0n8N0mqyZj2v9yY3zK69CpQ0
	 Q8MiZaB/cbkxHZl3dRX1+wd3fGA/xzt3hFgo73y9JW8arHawoM2ccKy+WMqbofGJKm
	 FW5Xug1xjUPD5HlaJyOS/psUdxToGRTjRzMuoUnkiRB4CqpulrBXOJ1GUTPmqAisQ6
	 I/kqyU2kIOKE1BKvl3Io3Hh2PIuZVx8WVx+TNroftNi4ynffPn9zHMyLdXV2EoqWsd
	 SnABV9vJ3hk5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937FCCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870019359.9645.15220498956189051878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8e71514dce36c3fed71ce1f096334669e41182cfe43368cda6b90aee21365d
Date: Wed, 24 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758700193
