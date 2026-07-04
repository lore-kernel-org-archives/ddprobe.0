Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B024290DBB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783192114; cv=none; b=C/IxsU5TxrmQkSGnA228nrdIBVSRhiYv0dmzanp47yki1NMjsz3xGF4Havk2k69p0XWT0nZU8JP1fFvGYC+qxY/FCfnYuAlrKjZRiPjpJaj8QSxxqdm0Or61MuG/HpLfXth8SZKq8UZlFZQm/DE8/II4mrLtqH3Wql2ZZUuTFRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783192114; c=relaxed/simple;
	bh=1QSyVxCRRgmnEFfj+qw1inY4SAeANFLQ/OGBWoReyaY=;
	h=To:Subject:From:Message-Id:Date; b=eV51H9wEbc71f2IBHO23m/EL6bSkOyXhR+CHOZh3Z0K5YhbJX7gNrvGRI+uKlEZYBeV/C2wwBP//og1BgxiisoKrTG4d1V7dSDnVuARIUHQXElHxbSnVdd5e5DU8qUKGxQRDLRa8RLQ0bWl8W/30pG0sX8PDShcaYhhqogFVPFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxVhOhVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxVhOhVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05C8C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783192113;
	bh=1QSyVxCRRgmnEFfj+qw1inY4SAeANFLQ/OGBWoReyaY=;
	h=To:Subject:From:Date:From;
	b=oxVhOhVg+ZzC5VC49z04NvljkLkPRYHQ6jGEF0R6tWcXULR7Y8PJjWNztSb2LJ5QD
	 FR+cacxru6NigS6Ay0z9Wm/13tgwwtSSb7zZ0o2HuzkUo0Xi1RkRh2cUHVbQHgIT+z
	 qisjB/7rmdVkJsav3VOWSrDgyIz2JtcXP9hRsB/quQYvrViVfsM751LX+KtlgjY9Rj
	 rM0DMYI0/EVUPz4IsPQpb40S9wIe6s4AxzfcpucRmwkeSLBLYQ5T0sIyjYBjyMnwoS
	 CWZ514/s9P6vtWXznhPkwGoZKslwyjhsnhe7u1soqi1/4++H0EkRN3CPYZYG/D/Fx9
	 4ubgq4XfaBMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE56CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319211368.1353.1451363086056256386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbad5bc544ee564b200d5f89b3c5ed67ca85174b9185502ab1e03b258187c4a
Date: Sat, 04 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783192113
