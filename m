Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1679433CE86
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771653894; cv=none; b=BIWQewpjYt8iKyaZr8d7gmbenueUvDFX7jqs/0czXG/Km3wyOsvPKNEp98T7mqWR68g754KVB7BWqyIqU87TxQrKShI6H41sCShoGGSWBPmX7BtGRgkSJ3OCyy1CGckqBdEv52TdJnwOjV/xkutrJ8mFTd+e2Yo8x7amWkJevDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771653894; c=relaxed/simple;
	bh=WIFTkRO7UgrLURdc+TLHUxLqidRb63gaUMXWfzxCKCw=;
	h=To:Subject:From:Message-Id:Date; b=fcU6uvDsaDHjxm6rEB1uQtG+6qsdXLDJBOq7yC/F595NkcZFsLTaYAsonqkNvbwm/g3Bhew0PeSfApezdNmvzEhqgBo1kApXsZJsAdXO7xfk+031eyTjS+KJOpIwdaSCLhDy+DEl6G3wCIL2c3pdcdGxlLuT3WbqdscGup7ubss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NokIJZyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NokIJZyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771653893;
	bh=WIFTkRO7UgrLURdc+TLHUxLqidRb63gaUMXWfzxCKCw=;
	h=To:Subject:From:Date:From;
	b=NokIJZydom2Lqm2gTmzMrzSBlNalWCWakXMVQBJssNnUqjMKp76pyrbWoSryzGM3O
	 ZrOt2DQhC5LgT050A4+pNUCKNLckge6Z8wkEFJNDFPUykiRiPmEYr2cdIvly284JFf
	 mPzwKJsOPgokuSzNgoCOwLIraJhk3TgVHxripf+ZOTBWX29qBnpovGwPZtUXWBJIEV
	 pQSzHoIl39cFyeAhBxl9+BG0aYJInn4kS6b1TJ9WN7QmE8k+hkIa9nyuP+sy6gtlmq
	 zvabSxJBNhIZu6ZoM4nZkKFn+9iGnSNFI6ft1GL5ABFqQz4CW9K+UpSYyK3aTGRNLJ
	 eNEl8DYuqAsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93946C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165389359.19425.6371109133025879416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fe17b50656dc56cbf1c3a93adbc3f2c81e34d026d48b12af4d1e20c6989bbf
Date: Sat, 21 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771653893
