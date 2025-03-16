Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565C28BE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742092194; cv=none; b=OCFvK+mOSXTCv8DaIQlEVclurFNsV8AbnSk1fk2GvL9gxMYctgdZAb94oZ5HlpvKX7EkruSS5Wo/5nzb0GRA4wBbjD+HGD39YYlCy/HH3nBZNyLEGBX/mbF5u3E3SecD5qwbV5XOzQKngUt8bLBTiWmKLT8ROOwPlQZYKDq2cFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742092194; c=relaxed/simple;
	bh=wmgUbJzz+4J9/mtA9JEudAznHLkFNUgSTH1eYq8yG4c=;
	h=To:Subject:From:Message-Id:Date; b=omlgnpPjSNPbT7lmhpVfgo6EsoiG0J2jm+cVx3s7VpE4GzdvRTGB66tf5cdBtezaY5Zda5o+SvQ0NAoT0V0bCj/IYJ4VdsFSuYbm8+bknY/uWbvC9vsImaQJtsLOXDbJE18JH+JCaTlXysRAzO/1yI8sb7T5LmHa/2m5Yo06w+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLoLz/yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLoLz/yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9716C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742092193;
	bh=wmgUbJzz+4J9/mtA9JEudAznHLkFNUgSTH1eYq8yG4c=;
	h=To:Subject:From:Date:From;
	b=RLoLz/yb+72fmbomWuohFpDMnIXauBWH/awdM09t8y4PizxE18FmZg3/43SYD0JGF
	 lmWmjava7mKjAUegW4FFmm23H7KVG9Zq3T82gkFZMGku7/wfSSvrFGsfY8XiuJ8PYc
	 P/jfMYfKDLk5jPdISN05XSLpRlCXG7QZ45FXxgkSu4hLcOesM/U/DAICheNaGpqkUw
	 YC54yYwWpr/LBzJcbK1TfoXF/bZvfKat/3Y6U+DqN9WbKgtqYP8C6agtX9v9etbanO
	 yFPsorOPvOE+AqWCxEvLlA2hgd8wEZWJfo69dqBX5j/0JTluPcED8xoFQsNlc7yfLT
	 OQ1oMYJsLH7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6606C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209219366.32293.9738581148141772590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc55585fe4f5c573114acd988e03b4da9681fca9f2c302d836686d5b6e78b04
Date: Sun, 16 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742092193
