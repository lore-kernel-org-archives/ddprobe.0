Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE7D1836FD
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718331503; cv=none; b=ZyiyS0Ep+AeiJlqibsalG5D/vkUr9XjRGkd/oyLWeZgXHTCnm7TafA7CQ/0IVC8EeagwOwxQN2gQluNSnmx/gSueOg0jIVQQQ6sULv7O9RWgKId851644u2ENmWAFHy5ucja9djmI/IifaumgTdEDRKW/2uduPP58W87yVg3go4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718331503; c=relaxed/simple;
	bh=UvOcrREutAj3sasSMrWEPJgc9N9wv7qCsM5n/+0wMKQ=;
	h=To:Subject:From:Message-Id:Date; b=ZQARpyJxzdorRK4y1GyhY8oKmJiGuiTQBFTedxVirjRlHoKPLYROYmiebNb2WZ0GHgw13naLjkPtLXsXdzk7koJipnJ6DXMM3SeorMt7ayRxiDbOZzmtVPpigbL9snHu1LozcflrKz63wg3knCmHK8lnaz74BzYZJaHgND4m60U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdozDxgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdozDxgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30E1C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718331502;
	bh=UvOcrREutAj3sasSMrWEPJgc9N9wv7qCsM5n/+0wMKQ=;
	h=To:Subject:From:Date:From;
	b=mdozDxgwvLNNAwQvIIe04jfvkJsNv0xiwqXnGZcxPgXSAcGWf0kNqwush5uDGjG1t
	 +ANQUWDPQu4Dnh7X8b+9M+I93ODPluz/j+F/yLdPuDV86d7oI9qxywqAVuZ6DhhT5s
	 hEO/v/PtjVArWCCT/Ax56ypISyGb63ip9Ne3LOakCqKkdGbSO3wttYpp24+hXXFH4P
	 mYhZKKsxZsUtEmierihKhABceYsYr+vYXV/GKthmGKyhCgG8FxcTG428XU0DaWLiB+
	 GxMVcXxeq7iKS+ewTrFLRTvUq7zQANFHEqIV6B8v8jSgLYF0Dh5YhFsHS3rCktn6Hq
	 4qCeOHMKrHAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB44C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833150276.10739.5708287387284795214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c09446da290b5781cfbed6e967a8ff5af9e26348012108750884a5fca647ebb
Date: Fri, 14 Jun 2024 02:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718331502
