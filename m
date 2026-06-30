Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280CF42AA6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782784114; cv=none; b=Sspq8Fd5dmI+0Aw0yKs/oV2DB7ZkXtotLvsr7P1H4QIoGpxEAwx9buJjShd4GQzGBkgGQf5/qaOP5dBerA5KHaEpv5XHzn5F+sMrrStIpOdTTWnFKynKb/jojIMSstkxDWuzK9bIk+IblxTNGVl+GzJaw3i4SlTNXPwjNNzuOFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782784114; c=relaxed/simple;
	bh=BojTLsVGlInVU1W0Vj1FLyFLgvSujzA66Djw91E5YAw=;
	h=To:Subject:From:Message-Id:Date; b=YT13u27s784MrsLWC72Yc+sW+HQnCm871PvuPrYmWP2okx1R7cPMW09jGTiNbOhs+YYNw3keMrNdfc15Vs8VqHW/bMldnpK0hLyPMxgY6Tr60sXlcTkCEr638G32g/UPqre2j7O3sEJyndYIezM7FFjxFzhbtI2jUocO4V+8qa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n70Jk7KD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n70Jk7KD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7A5C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782784113;
	bh=BojTLsVGlInVU1W0Vj1FLyFLgvSujzA66Djw91E5YAw=;
	h=To:Subject:From:Date:From;
	b=n70Jk7KDU9o4l0cK3RHaZxpnAR2DI4RUtgpDiYm4JUs6TW3ieVYmE4hC3J/HMRwRw
	 d9XHcaFrarBw8IMEJVyX+u1NY17AcR+hGPynLIpwST5MZ63MqZ9GmpYCo+nai6qXhb
	 IHjLR2uAZb9kDpoP3mp13HLhCeiJFM6XYkn9TQXhyLc4tPA0EEELFzD5sVjDPbnAZa
	 1fFCZ4reFf53GxwqrS6ukY7r2f8DVcobrp7VpmRSfNrxkAE9TbjhEBs1ZLuDG9DuyE
	 CSDx2fBkypGN92V35MwUrAPaOKoc8KWAy25n1/Rn7OROLeoYBGVb439py34m3WQDyz
	 Oiu0FoZYI78Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D4C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278411368.2018.8592963733365597657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4bc585bfd6fbd88571325cb597df8d1f5723b32defbcc6b4586714b45c69ab
Date: Tue, 30 Jun 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782784113
