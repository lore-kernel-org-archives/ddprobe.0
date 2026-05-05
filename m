Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07E43E92A9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777967254; cv=none; b=Ju+ot4NROT5tCqNEJN4IbykcQgTxRZhtw3XZ2bdB01FJ0zGOImk5G70tS0IWnJ2/Vi41lHDapu7lxlZbojB90vxQFPqy5zqauBIFRMpUcexhwhc4nNMhtAKmdu9D0+NpQRjyH29G1LY9SKkakZ7G44pd24Ef5jHRiZhNLlUkWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777967254; c=relaxed/simple;
	bh=OdM0cQK/7nSP2RrQzkAuGo2tnJ//i2vV9+vQWX8hn1A=;
	h=To:Subject:From:Message-Id:Date; b=TY2voyLFL8IXpW1Cxp+UXuEPuoO2wqd7+d8z+TB0ewrAMR+kqWw75bahhck8h1KNyqQ3pVxJbNGPSCHCyQWg+9lId9EWL455YwwJP5jQFsNCAyyV589dKe8hvGHf/bii2dZCQDynCm3Lws+KEZQLRwU+eI7fkv4J9Qu/9m+x+Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBwFGO+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBwFGO+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6134C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777967253;
	bh=OdM0cQK/7nSP2RrQzkAuGo2tnJ//i2vV9+vQWX8hn1A=;
	h=To:Subject:From:Date:From;
	b=jBwFGO+vKOLzPVOOEW4Nn7J1mbADkkK0VAcJEniqzyk+nC04bbiIt5b1g6cDHkeal
	 rJsQja5TdEa7XSmgf2Sjrw1ZpUgdf2u8+GTyWREOjFMSVj3+6UNXjJZjubB7MhLJ8j
	 V+wpC9B3T/GOxh4noo10EuZsW3v6tqjBmFI+hSq/CrKTUKe8cfF/TY0cyabHpIxpav
	 d/aFPHrAcPulOiwfB2hKldYTryimqDjron3jkohLJ9SZPy3fhr+uaNn08TgL+K9E7/
	 KncMR7su93aZ88lNCzDSwDNIRmSAxBDbQCtp+VyQNN/JG58neSDqmJTSytulnd7Z60
	 LGYMcQFg808JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BAECD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796725368.28069.1386695962499164227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79828f634cf5bcf733f7d69ae9913b093702e5121fbedbcf9886fd9833e42585
Date: Tue, 05 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777967253
