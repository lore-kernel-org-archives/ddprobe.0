Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0231FECD8
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740166734; cv=none; b=iiD56LB0WFbZmuOkyY0acOxyva1xr9kp4Z87R9fFZQFjjbTizPmY+shnt7hNVn6l8JNpFFgd3sqWoyY+8E36D2aBHmyAxhgg7JYxI/UJ4/m84UxZZRKuNReseyQBQXTUgZF1LakO2DqY+QqCJFfmivGDQwt9frAA1Vg6uVTbsUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740166734; c=relaxed/simple;
	bh=24gJ9xim1PFA4hP7Qg6LU1ENhWD3hu4lqzGUVQp0wpA=;
	h=To:Subject:From:Message-Id:Date; b=Yx1mXg3xtXSm5VxOOkoEqBxaluMSJlVs2ICOXLHTlTa7Y3RfxFpzPlBWIJfwkbMOeO1HkNNcOEkOdCqtbGukUd4xEPP9vMO9cvuzIUu21C5zoIBwGI51waNIcwttUOoSNJwFmj9+/QjtT2WjXrtzpPfhTphURSuiCq4TXTbF4KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSH3hn+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSH3hn+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740166733;
	bh=24gJ9xim1PFA4hP7Qg6LU1ENhWD3hu4lqzGUVQp0wpA=;
	h=To:Subject:From:Date:From;
	b=cSH3hn+Ks1m4mfd9wFLvgYgQLczO8/jkQhgudcMTmq/jiVLgsGN5qdoTSe2itVM3A
	 To6HpSsbFcsSrI1xcoL4yNCOT5J7KljPqamU6cz4QN+NitW/mlU/uxYnoSV1YRckGA
	 d8Nq259n8XXm5rjIbV1Pd6RmV6CzTfbKX/ysVbl6/Xlz3rBJ4Mea2lLSkfu0D2CZ3z
	 vIKthY7Etpo8eXdO+PyofSyAHqe2kj+Iy91NvLz+Bq2o3IFs5KziXcS1xRHJFqdFOL
	 aWQJKSrXhLtUc7D9mqVC2HFRm+2soXvAUSCjDOlaZFhYYWr9VBqWr2a2G87To2q4he
	 HJ1cJ++irIEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9941AC021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174016673361.5327.6283404144764843212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50cd8103d62230fb7ead1ad2c732faa2ee65ebd315f749d1e753beaa31dee31
Date: Fri, 21 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740166733
