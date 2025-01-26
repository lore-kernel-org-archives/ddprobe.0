Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459C01C32
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737894954; cv=none; b=GjiI4CwLtiJx6FvIH6vweir9FBdsvAMwqnohsFcywndb/J4X9eo5CiP7odACP8n0afBhRp2rsa7KgOdcwxHmvdNfCFPPtIScJn5m5NuYqS3V8KRS1N0bkeuGkyvrNyieb1zTdvWHQ9ugLHnE+vZcy54+72no1SqJy62tYYrNHCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737894954; c=relaxed/simple;
	bh=/lM2l/gjSU/2mGSd6ctVllvXq5VHoHInRo8DEyLxPlY=;
	h=To:Subject:From:Message-Id:Date; b=PMqIiH0j4lG0lIgBplwCuGhBBM2fRt7SK34I6j5rnYA5LNfZA4iRLUqJNeJ+h4HxhKulKtrXYsU+nbLZLY1mehcstPYhGW6/sDVLdErsRnL722IycdmMf/NPzJZwBjFo0yQ+zzezvWCUYqvqjyBbQ8K0qvZyL3WGZq7302JPneQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx81Piyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx81Piyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B6C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737894953;
	bh=/lM2l/gjSU/2mGSd6ctVllvXq5VHoHInRo8DEyLxPlY=;
	h=To:Subject:From:Date:From;
	b=Vx81PiyrdqJ/Tyj2b4ciC+3mfbgnWUKsVEgEcLxx+xutrejgdYvERUMrn6SFQY+Yh
	 jfIiJEJs8bb0or0w7CXbigLv692w7iwxrU+2UcJv9U7GWcprZcn7IqFrBkxupV4yVO
	 11FFVcLG/eub9Cu5uE+bkx5VYgHZyRDTVZQ3/kjxK0CoPaotwOpNpFvHJkO40dtt/t
	 +jV9yYGhWzsjG6L3UYpW9WJQYtMkavYZpnE1XBvv9gDH2zncBkTexh7Hs8OEcwaRTE
	 APGeO78mj1yd6rYqGClWt8mTX5bRok7m10/rxN0CN/xRSKNgppi65fW9DaywaVyBkI
	 pu+lTN63DLt4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F8C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789495357.27347.14093226760056463934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e833490bd88efb31a317e6cd817ae39f5c56557bcf2875c334bd58dbdf7154
Date: Sun, 26 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737894953
