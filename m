Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3705F20DD51
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770189234; cv=none; b=c6UqkCqbkCdligYgUuwE4apyEXoiCjd18MSGZQpKozPGCZ9RB5ZgpxH/T5qIdN3ZAz9e3aIXVuLnK2W5EgGUjBPkRXZBgFreYH5piwZ+2ly7QZKXxItU3yikXHa7JodvcNIu9cZ4PgBfqXSGwh16OaCI6jKQGWI8cNt1eQ0yOtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770189234; c=relaxed/simple;
	bh=VWBbLfn86cmOsAWai+GQhBMmCTwA9pxygSQRUVS0n8o=;
	h=To:Subject:From:Message-Id:Date; b=G6p2udxARmLm01Aw6eJsEb+wzddJ6QoCFp9EYsPH2P+BA3T4nDygW9EQJvHB2WrEXJW0sAZsJduBo7F2Uri+Pgb/otNnvDfmyvZu9GDhK5/L2QSnFFCq+DZIVbioPy6bach407UwD1Sst2Hhd5F22hoPGW9OKmFSxhkDbsX1qUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHR9Oxwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHR9Oxwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9203C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770189233;
	bh=VWBbLfn86cmOsAWai+GQhBMmCTwA9pxygSQRUVS0n8o=;
	h=To:Subject:From:Date:From;
	b=FHR9OxwbNmcXuj9PqwGHu0UT/7CY5P8oTklI951hqfp0fvExX4ZDkEBMOdlrn7u50
	 8J8IfkpjQCnkazh/dw4QNG9hX6/Mty6vtUGLI/Kt3Hk0UpWzpo/BXvv0cekl7kFmSS
	 IzXaQ5ZXjUYIYp7/tivclcQ1LuSEZpchu9xSmfkh3lOMsH8/UU0rGIiayYzo9DZ3Py
	 nHNVzlECSSjh8KZbIuEbX4uUa3EuEYDg/+uuHKibspsUnNnMAX9F6c0FXI7ED6gqd5
	 ERVho36RDMQv5/QQc5PyVUrjrYiYe7JfD4yww19mCMvcXzN2VD8yVR5Fd8p+kJo9tw
	 bn/kgkNMIWN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E42E83EE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018923370.10034.12119874576668037858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed858e370c7123a2749b86a442c7242aef062acac2da038d4a79b3e7188b5f95
Date: Wed, 04 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770189233
