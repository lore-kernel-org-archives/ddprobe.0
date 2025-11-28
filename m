Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDBC26F29F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328974; cv=none; b=YPPxXhU1OwI1hnKyYYqB5IsZMW16IcsfgtGvFloEwLtvPzoya/qxGvBVaNuNX8FXcvjvAFKOuE1ZKLSivxY7AVakQcXfRS2tmsdNzxmTR677DQLYt1l6ecfQ8awtI0NIdEZpygToQsrvfcohv4Dy9KfS4lDIExCebRzBqZ4UXTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328974; c=relaxed/simple;
	bh=0QHzCBhkqGqlMesgtvsgcc5HppD5AjBIhzlTlybvRyI=;
	h=To:Subject:From:Message-Id:Date; b=m0VVuk7e29pdAlrQIDk/dgQECdHJEOR0/Z3vnhhUC5DBoAlE5W6CTQA35ExgXGnUnJ7kvCJoIw+g9GcsNNvnRCpbc4F08LzGDidgYz0xcKEO66fCrcTwdKU5eHp5kf6GNRgw429byWndXw2V/gpxdI7UpMEa8MuXDNRucwQhi2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDjD2GsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDjD2GsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19E5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764328973;
	bh=0QHzCBhkqGqlMesgtvsgcc5HppD5AjBIhzlTlybvRyI=;
	h=To:Subject:From:Date:From;
	b=cDjD2GsOHOJ4ow7S06JvQxuxuAoUpOgRszqnNx60p/g2Di3h98mrFQn0IdrEN/U5A
	 0bBkWZ/9o7/7fojcxH06xWmLVJimgjQt+773O5sGWFzrGcxadBZJZBZ3/mHONI4K8q
	 0Z1pmleE3fkclj33CZBeNnSCKwH16Z1gJf1Tvv2SQ4U4w6YMJRTRV0RWe7oKVZ9yzW
	 YNaK2tcCedbMU1YLLsU/5Ju72l7S2YgvbN3rqE2fshseRhvBINwMqRuzGoJAm55j1h
	 ESkRm4kbVX+aEdlS+V8U/CR3MVRwXcuI0NaB9sKQIe4xYs17JPqZq971e9WNKPF8O3
	 GcjCLb9QU2tIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADAACFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432897360.14482.9236022439986775602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c52712a740b3df089050023c850271d91dd2e9270a60b3b97451fe36801cb26
Date: Fri, 28 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764328973
