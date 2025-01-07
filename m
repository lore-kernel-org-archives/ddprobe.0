Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276C41DE4CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736291154; cv=none; b=jhG3XIZK0eMYQNErJCh/DYRUY0lZQcAX3tUd9BkyxpQETGAAsSCZB8oNPPLkY+bsb3H9Patq+C111xGydfaPnPsD3gAoiwJbWpqxebKdrwHIhmA/0Ns7WKy00bp6xS6WP45wJpFOyFX8sCy48GKihxLVwjb2steGGio2ZwNLQYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736291154; c=relaxed/simple;
	bh=SAYlhR2Wjl8eLqOkSvMNPyFThpZyHXw/l517TLTuhik=;
	h=To:Subject:From:Message-Id:Date; b=U5IBO3Bnbujv/jfxxYcdT1eRC4LJLQaIfpIbYYpsGtlE0sOQe/W5bWH/gpvljx8ILOlBVBwuG+tOykq36XsqKN3wR+ok5WdQ552vzMqM/jlktS2AtHg9b38ayzXniiPGe3noYYe75Q3COjWJRPhH9GmBwPkM/66MMfGtHBOkbgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWYMV/hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWYMV/hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959EC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736291153;
	bh=SAYlhR2Wjl8eLqOkSvMNPyFThpZyHXw/l517TLTuhik=;
	h=To:Subject:From:Date:From;
	b=uWYMV/hZiVqIPGI8xkM3iZ9RhRRZG4EBx0grs/LyybzB3BKTHXkFCGGis+LfCcL9P
	 /Af3KLTs10zvjmJQYqzBaB/UQwnV/6EtMldh7KtLSEyEArgv3ilD5557yfh1aVh4aJ
	 9P5DDtnLCfDvyRSx2E2og4RoVIYefJTpN+QSD2Qz3jO9yzONQbSXTe7HfOjTY8B/M5
	 sUNKUEdBBfuUEDsq7IyZl/8vDTeycB0/1GxIp5r+f2wFM/zmMfrVO6m48ZMd4Rod3C
	 TwHrDsNCd6tipnc0LzhfN+wHTN+kcPyPr7qVkg5VqTbMROUoLUUEdcdNrpPkNdwfms
	 D3N90Q+hMGafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F3E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629115358.20267.10829830050408036747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc46d4e08a47d3966142fd7c064202deb79a915d3e5a40907118b54dee99434
Date: Tue, 07 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736291153
