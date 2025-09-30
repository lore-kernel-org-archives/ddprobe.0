Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F522243367
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759204794; cv=none; b=g4ffQrLVwSYM6lY2LrLlmXP+mcj0IdgSr4njCG4wURIwAi6GQLd7bC+eJKlNewCUhDS6uVuGA2cnwf84BmFtDtjcH9hKLkNp4xwA77fUjOxfyTx/xjOMBzY5LuS7LvOLiFfpHWMUm5f1JbJdLhr0tOfP9hQjCSPEtwZcIsubdho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759204794; c=relaxed/simple;
	bh=IZqCX+kjum89C09n+lJuGu3J01SQpFr5/l45h25/Zcc=;
	h=To:Subject:From:Message-Id:Date; b=YE0zoN2lo40jz2Hprj7gLc+UFKfL603BuTXyDb4o6hO6EYSZTGkll+aWJVTdoZjzPN8PezoqoxepV8QRNdHGpM7X4x4jEzobyuGVf9vXJiN6v4HvD955idcwk6sNhaV0MLRo/bwGwaATSRw9LoxA9JG7ooB5V1ieD4HpLfS70z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r41AwaRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r41AwaRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2151C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759204793;
	bh=IZqCX+kjum89C09n+lJuGu3J01SQpFr5/l45h25/Zcc=;
	h=To:Subject:From:Date:From;
	b=r41AwaRuO2FH3nIDXspUt8zDazKuUPO+VofGHQnalY6fdIwTiyuqjVlJrlhaXhb3l
	 meplvoGAJ0uWMmNqYhQ2AEDti+772b5IlL+3eIxFrE5e0YazBK4lpoUx5WpB6DUmuU
	 G2yGMGXfEX06s/GWjgnrSt88HGeOBL9oVEWVZNWBm/j8tRjXIt6YAC8uvKvzbzincc
	 mtxpyQ+tZMF3Nd0GPw+PbFchk2NVD2PdK0LUhpz6Ztz5oYNew2WwV0Oq1532gB/evM
	 /bQ/EL8jZZiFtNGCC1MPD3MJXvWmoW15aCGnuk3qDTjUwRCxgTE1f2yACeAldU6ApE
	 UNZ2odLAL8yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F2CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920479357.24077.12684889846597153370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e464fd0eb56b85a758fc3a727c0cd38742fe70db8334d0a22720d78225fc4811
Date: Tue, 30 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759204793
