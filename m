Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56777224AF9
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787014234; cv=none; b=S6co1AZrcejVg8yUJNK4sTXIXIFjBEDAec/z6zmK/wiUO4dmLhzfSt2NJqWP1NXMr+rDjvmVJiDEK65OTipg3dfmyleYy4+xjtsr8uco41kYTTRXIohzkLWKHpLrsSaq0RrCsdnGr16m6BANkiMmhJqieIswCThzk+qz5Iobn6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787014234; c=relaxed/simple;
	bh=XAY6xQSMGTUTyoMSTiyESm25yLKWrrJ9rKlja5pufHw=;
	h=To:Subject:From:Message-Id:Date; b=RiFO1JMym1dvUIQN0WC8Ti5Vv+/0CkFHSYxogWPKHyYXtzzTgYB+ieuWKH7QbIix2PnM3+pThzT32cDgaUz97mKktG9y5oncnOzd6wwcUKpbbkyRgsEoIV6dUE8GprJaTRy6AS7Yg5tEPhPqI68cQOYNebmW46QBpkjy53YiWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5BGIpck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5BGIpck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2019C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787014233;
	bh=XAY6xQSMGTUTyoMSTiyESm25yLKWrrJ9rKlja5pufHw=;
	h=To:Subject:From:Date:From;
	b=C5BGIpckLCIYcLNwxDQVX/waN1AWVSLIt2qstDazFn04ay8ZFL8wyr6C4/I9TWghy
	 yivSBfgbJnAHjJgWH81zm0V+okKeC/Ch/V4C47rCZw/7CN970TvEkYerD1SA7tQciP
	 urmZtXWItLMKfgJ/8+J/lWYwU1gGT6v4HQfoXXuH7UeZTG3BXSuHe2UyICrw3G1O/M
	 RgezCNwNxbSb0t7zvpd7vRASg+0I1uYmGCpDpljZJDGbQ+tjNwQ/RSXTkHWlHr7JG9
	 X8Ao3UYDmYQDJBef+cD4Zrwsem9SJwHTZz30+EFWbNjSGmPU19Bhit8limeGcc6nwo
	 yRCgpjF83czZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFCBC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701423369.26708.3759599204927594718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d3628b7a0777bf35c0844c56f9da9eae023739eed1826ea3edb731fa353396
Date: Tue, 18 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787014233
