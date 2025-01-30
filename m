Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540CB4C79
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738197354; cv=none; b=SyKKkScEGvFyvTPXYuhArvLxGt328NRAkEH1nIxYzPmFD+2Xj17+hQVIDMN//BQ5V6tF/DWjq7RcvP4BKKjFM+53457DKn5PBug5LRLdAMBZhBumkCdmwIsw3ZPN1A/YBqW5X/aKr+w0kKn+x7da3/n4JnofBJkqB8C7Tz7k3/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738197354; c=relaxed/simple;
	bh=CiUo5Ml2SE6igDYsLKJW72kDWQDT2NXDl7HTWPyOogA=;
	h=To:Subject:From:Message-Id:Date; b=kpE2Mx2DSNPUCnrfrUXkZ3UIrkqN0TmU0DXAobN4zr7VFjNflz9A93F87BhUqFwZTa66gC95nifQyR26rHYxDopIl16MtYZ/tEGGo/b8JwGzxeJSQybbnBZZnFHld+Mo4zy17e/aUUGqKi2KwbEQluyurdcaWZHljTSDWxvjU10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmjjmynK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmjjmynK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB744C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738197353;
	bh=CiUo5Ml2SE6igDYsLKJW72kDWQDT2NXDl7HTWPyOogA=;
	h=To:Subject:From:Date:From;
	b=BmjjmynKWEAbYq2kBhE3UGVv2SNaGvFMIUwv70oA9eBKCY283yuCFc9d5KjrPmyXD
	 w3yozsX7EH/CWYVMLlvlrCE12loKwLm/rbq39wGWQkcAVh2Om3e7oBqnMh++SBQGAM
	 Den8xOslECYh62WOPC4u+e1M/3vKX66/94K4W9HZmH8EGaQEKYYHkaCh+UI7CSjBtx
	 jPeatBySpPgbQCoib/OADxdZqnqnp+3hQgXdjMR9Ro8Fn9haU4jUEgcgEW3pAdILtI
	 zfsvKW3YsvOewvnYejh0stq1OfTgZR7fprmGJdK6Lg3pLORTpce0lL5UHq8OsH4hAd
	 92E9SGNaQCW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9CEC0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173819735363.7784.16849225816261845716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e34a285f41c03fdd3d11d7d203b41748b4f7aed817d2b8d83854d5f6f1d00b
Date: Thu, 30 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738197353
