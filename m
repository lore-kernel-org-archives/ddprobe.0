Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B540155398
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729374954; cv=none; b=SQcKY33fRbg7yBHLucSCSANr5pmOEOPaYeQjzUWN03dCdHCPbSkXHNwM2BNqhBkJlUAkKSaX5gCJ5aIBmq3o+9bK1sV+3omN1bUf17YaNRchc3/pi9Hym4dMrIpTUV3PMKGHfTuyoY/bQXCEMQzZhIYoaykLbSklP7X7Wkfbh6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729374954; c=relaxed/simple;
	bh=D6y+0XgweT/ewqYmMTL3AjCEuC+PJSsMxvnr4xRd034=;
	h=To:Subject:From:Message-Id:Date; b=JQBu1ln4nMYXRDH+DbQ3YulHXxtWNS1MHbIl4JGm6/Eu1IvDg7KRAfEkyWl1ibPaPQ2qOHn+9kZKaMFF6qVRDaockcNkmKRwHS05z/AlbbzFN7aXM1saJkVF7fROJ7T0oXQgtpNrJRlqKaQ+Fk3zp5NvLFYwGiux/ZxBS9V3TtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUGZjByF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUGZjByF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE388C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729374953;
	bh=D6y+0XgweT/ewqYmMTL3AjCEuC+PJSsMxvnr4xRd034=;
	h=To:Subject:From:Date:From;
	b=QUGZjByFrkE4Wr1lDWBYspl0MTNCD0UfDxwrg5udlf4kf+wTS8EBOr8gPT/dWjfAf
	 LuFUVqWvITLHFr5UMn9n2+lgRVxeuLLHO46tjelVHZ1N2s+5zV8lUqyQmhQ6aC0gFW
	 kyK/stZ9Ji0SPLXg5p02j0jiqs7yVgrJ/9D5iSkQKZmoLMF8aMSFllK20QRW73dH+N
	 6RnjFpVVTVD9mpSxOH4K98ZTE5XfITqpyESloHWC+cU0T3sV1b6ixHvA/IOzcqtDSQ
	 YZDyERbnPDKp4BE86CDPRBPYR5G89uF4IxPlv1oLuoJovSvYKxDMPW8xdSVwlNxOC5
	 iG79L8BNE+rZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B10D3C92E
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937495360.17996.14395830315266016809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88f28a8dccfa217a4d3eab7a11b18c3203e0aefb20a12566f29ed74ca8c0e26
Date: Sat, 19 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729374953
