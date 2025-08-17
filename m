Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A57E53A7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755410394; cv=none; b=cGlKc6aA6uvKVoL3BW/o1MWc8qmfckoVQliRzcklmT+by4fUaYX7Z9qzUs+5hp9RBATqGl0zaJrRl1l/FNet+ey/ewdqW3PfFkIkDsRWQAvfvMzP7ss+HRoXHV8TPo++3iInIKXe6xtFea9qEk1Zq91gcpKcDJxYhZLcqJHy+OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755410394; c=relaxed/simple;
	bh=iUvw9uLna6xIXa9tjWiqKI1gHeRJ6+apNHkEX27uNLQ=;
	h=To:Subject:From:Message-Id:Date; b=bd9HSFXWhHCaTiIX8sgwmenNbRmIzLBUbRXDVwREg6+M1yquMQXB+cWXTUIJfGddW/xQcjrj9CupnBpG7Y5SOQL9y5PWRrDqJEePzQlwdNCf5Ul0WGy/R/uuAFMWGpmmxjDrOHchSEL3uj6Bb5XQv9h1cV2JDHChp3jczg/RNvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy54bJ/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy54bJ/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755410393;
	bh=iUvw9uLna6xIXa9tjWiqKI1gHeRJ6+apNHkEX27uNLQ=;
	h=To:Subject:From:Date:From;
	b=Vy54bJ/bDyVSZXKDfV0+9XzCjPOwv3I3Kih5R7im8TQrao1yhPHQKTSKgbGVh5YWm
	 uIusyVvI3IlaUhGTXcot14cPniayQxIdcbECrQO/JnLUAkStqHyrqAPO4K46eBP8oG
	 N8HHyKrtAD7zvoooeQD6qGQe/A/FElUomVv2EPHhO/WoQIY72YslciFvNUaiKGSqwo
	 Gfd44dmzGzhFvJtki+iQoUs0xAV68HkfPV1cwAquxth6WmB11MnnGNnVgp8bxrg17l
	 rOYghGEtxfnUAvipiNITfmyGTtBKCBDYVGVj/iltpGiL46dBHhZyeTTNeUCv/6EQoP
	 vXoVOhFh6KtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD6CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541039357.11495.10514205014113381855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0833df2ea08e01b72809a41f1dc79175f14d9d67f9ac4f9ca2e27a1de579df9a
Date: Sun, 17 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755410393
