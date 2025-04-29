Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E21876
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745898594; cv=none; b=j2Gm6Vp25pQqDm8RpkqUwXXjvQelwBOlhlqIqzg4LZOvl0LQqyZ4ah7cBGfgAbla/n4d1V3MBCDrlsHGsBaT3UgT/Z1jxp3Gql2RrIyt77tIb6D7CQY8fLOE1G2COT80/rBlsBilEOpPEic67I74FzUng/sjqHeB7D0oDQ9W5Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745898594; c=relaxed/simple;
	bh=PsgJ0dEjgBYkM8GEPGyaHOgqR0284H4cJUQ1d6w6UK4=;
	h=To:Subject:From:Message-Id:Date; b=nt/98s3g8Z0u7x4odlJSYAPmVEyURzCEi/3BJ7tjtTCg4XQ1IKg563xKqTkvE1dMe2e1F/pTuQte6TFk13EwL8nsJts3d7Bp8a18kFS541tGVz/XsLsmMDgVh+cTqTR3WusdZIAkbhNntQj2P6YkwWILRGRDvM21FvEDUJVkdkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMQMni3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMQMni3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745898593;
	bh=PsgJ0dEjgBYkM8GEPGyaHOgqR0284H4cJUQ1d6w6UK4=;
	h=To:Subject:From:Date:From;
	b=uMQMni3cCGkhELJsdV8sDO+Rx2HML1WsgjUyfdzwcut5ODNSrRu3hijNhTfoFdSw7
	 G4T8tghrMW/5hrruu5PEEQJPsAJn4adIA4qXKjx6ny0SSCvMWebuEm5MWy4h5/Srbs
	 cm4Dq/Ruz/g86IPOfucIKs1k/37b6yUQfMaToLYbJjHWA8dqiSn4IgGJbSS124u/RJ
	 u6lVu8jf6K/T1MLsbGKCHP5GlngkBic2zwGvDbMStVkjXnrd+UrXUuY2HN1i0vDn36
	 58joVt6ILeiRMKIp8AtGqvJJlJWZxxYBD9dGoekTqZT/XjPYRIv4blWDgITXfTT38F
	 t3sYjXuTOgvtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19CC369D1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589859357.29895.4100894439472162324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5027161de90a33cfd7976cdfcd09bd765a9bf09fe8dc8802c8d6816fd8012e
Date: Tue, 29 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745898593
