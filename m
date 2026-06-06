Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B8B2BEFE5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780764874; cv=none; b=CRxpXQfoS3BLW1rJS7Lg3xkhiE63xkJqtjn585qYQsK/OIvoZOKH1XpUZz0fZUTLtoiYBvvysueEWXi1PfQ3quKWGFBGpJGQuEWPht7HkTeHSuptgPdnCyzXOm2AiF9d+zpMgXg+vJTNUEurECME6LjUK2TRc38Z+9uVzGD53OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780764874; c=relaxed/simple;
	bh=La8EGMkXZkEq6Cniv5XTXrOEbpQylwWQS4S1cqlgukA=;
	h=To:Subject:From:Message-Id:Date; b=YlhF3LROJeZNjVdOCpDVNLBUGn+2ewXtOK0QTQWgPjUnFoTv1oiBKtrV75ozY1X0rOGS/TUpqb1OApRw7gmO+S3RzzwyWqL0AyZ/XHKB25MZPWHhKyRL4jOn1SjhU1Jq8XCWJ5eH1Es8GPyHKugDC8eNv3VqeRAIJUF0D2wVxrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN5HE9bX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN5HE9bX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE71C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780764873;
	bh=La8EGMkXZkEq6Cniv5XTXrOEbpQylwWQS4S1cqlgukA=;
	h=To:Subject:From:Date:From;
	b=eN5HE9bX6n+bSGiTK8r3lJkjo9E0APC5ivtRp66A/wigZLPnte4ApLkhmR71Z3jjq
	 oHP1L/iFBjL8b/nH8yK1rvTYKcZXEwdzLITQxS+tzh4NE2B8FZXjPlF5/gz2s/dX6n
	 hIdu3exn1pms6NwkLk0ceUIzK/Rh3YBz19i4/QkxY097B42t3UsCTUp7lHHrpZ2bop
	 f9N1UE3uwmocr29Zrk1luJ0/zmYaZDGniQTUTWOGvxAy6atI/jI9TrYai9YAd8Sxuc
	 CuUSI+oPdYYemZfv5MvsPKEMXyMjyTYVSHUoGBbbCdOqpP22y2zIwd6KEbX5zda+lo
	 ZllEh1g0/LcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD294CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076487368.18136.3267823912619317325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6b42b1d175a69c06ec4b1d5a28ddeababc5b09e58441c7c51730314a3b7d17
Date: Sat, 06 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780764873
