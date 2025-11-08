Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0672D4317D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762580394; cv=none; b=ZmnxxSgy15jpXpgzaxsJVNP0KMu0U9STw8fMXjSb1E3jTEpyBXnyyXtSEvHQVSYt1wHqWEdPze2EDAsziex5ChxnJB7GqJ72kpFXKU9ykwNl+1fcXCImgAWUr1hRzZwWaLOUsjKpPsIEMYMM8IjOeqrb6YyL3Ge+oL94dJXiMwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762580394; c=relaxed/simple;
	bh=KIK4AGxXlDCVWWsndWON+agUXG6uZidB4RKwsMCxg44=;
	h=To:Subject:From:Message-Id:Date; b=C3bJPTxvDK6sSGeHWLxmWQGvRSHPGRFeksCOOqJ/NJKBXEe0wqOaxH2hgalmNqk6r2svMLcvzU/19UQtdPEoLu8F9APJBXGS5PNc7Nf6CQ2goZoZceF9Yixymqs8MbbJ89vbzTNsj/4I0izs1vH+qAoIB1HMoadBiSLyNxeI9As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fe7NUuZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fe7NUuZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9819BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762580393;
	bh=KIK4AGxXlDCVWWsndWON+agUXG6uZidB4RKwsMCxg44=;
	h=To:Subject:From:Date:From;
	b=Fe7NUuZixDentJn9Flz2Geu1suuDxuKZQI92u0t30rck+hr4E/jAzmVsrYaZ/2zd0
	 fHgb960D1CAOXC9B2jOgoCcTuhQpSdb8tziQBEhn2Ip+7SI3KJBjljab6oC40vcY/G
	 MLdAjQ6S780HjKLHyPmqtR/EIfOUVxohG8hzuGurgQtPvA4I9nRrzQgj05EuvW7wFo
	 D7SdcyqocRx3BYlSH/fKDDfXFW19ChwMqLZMskos2El+YOiWyoSzi8kaBWqi/nlreM
	 APYrY1xUbZoGG5ZXBfutwAT4LNU8O7NOhlJkM+eIIJhjw6GzoM8SSxUTLrHWrFp8nk
	 FV+FjEF3eKwuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196ECCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258039358.1056.15671558898312523429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b91492ca6508f18852ad308af79b7eeb6f5957d24ba8ceac55d8b027651c510
Date: Sat, 08 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762580393
