Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273364A23
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764525174; cv=none; b=tZXK7DKqIf5Z1o1rT8+V0uHNOosNOO2CY4fQt+Q1+f7yREI68lADoDi+yZyphedrqEzD/Qux0mdcDQedJ0m39eMw8iyClT907M5jyXKMjOIl6pSoVLT6i7HYmiWyH+O/Mqfg9iciR73kn92GHJX26bHz7ebx3h7LHfEdLxJe6pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764525174; c=relaxed/simple;
	bh=ipMialcP57Tx34NkrL/9JEu/DypL5l+jEf8pkM8+GIQ=;
	h=To:Subject:From:Message-Id:Date; b=KniRUXqxAhvtW3B2T/zcGRaB8JywPS7vS1jey7RD4pTLhTOZy+LOQUXQzul0kljseLo+ZxAXvnZVgQdceS6DJ0p+s2h7tHz3sOtqI96HMqizyjW7XG/P+wD6ZzWamOEXoqONpl4UWhtsDBQfQWCMv6RiVti0X3Vid4+kCG8bmaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTVNxnED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTVNxnED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4022C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764525173;
	bh=ipMialcP57Tx34NkrL/9JEu/DypL5l+jEf8pkM8+GIQ=;
	h=To:Subject:From:Date:From;
	b=nTVNxnEDw4j/gPqC/ZuuSUqPAqt7UUn3PWal8XNhNBrbBKSV+s3QVVULJBXVB7dIu
	 n0+AHKyK5LXGJjXomlqO3Se/qCrrfsL4HFUbpexADwjsU6DmFd7b8SjjiR+siODuaj
	 J9SA0Ia7+ppEYNaMdgwFzM7pL4U+vD8iLxi0RwSngWacVX92VQr4/pi1jY5mW78Pn3
	 YDjoZQWfBtRgy0Yt/FuFClpBx6+JX9m4i03OaL6NiPevg9q/bt93SZ1vrPI1w2ro9Q
	 0D2uvA4d+t9yco57982UQBLAhG3O8/yvAUDlLgkYnTgC8x4Stjmu4TZ0l49ScLULTW
	 G+7WdxR4Q83qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B44D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452517358.10443.4383047443747527252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f982c1bb829de9864a84ea33d3919d763ef7aba2f371112c44d3b6153c50804
Date: Sun, 30 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764525173
