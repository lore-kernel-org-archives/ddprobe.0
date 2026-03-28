Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE8314A86
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774661094; cv=none; b=GgHLDPrc7GGDsylhox2etqgO5dzO/BrgGDKKzv4WyfLpxrqiRZvjtRiRM38zCjxpTs6WIHbth6fgyOQjIK2G72lI0G2EnHOl/2fkIPNGKC0m2lZLSJTp4SD4EDsDfHS2zXirfKAVr8WNkKuo0wYftmbysSs2Ufw5tqw7PdRMgnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774661094; c=relaxed/simple;
	bh=gYCdS6sBrbc6nL75kH2zZRtBO6JRhHx/lyOda5zrzH8=;
	h=To:Subject:From:Message-Id:Date; b=gb1wh1HYq6t2ozE8U3DpD1uqOj5kHUd6nxoVgrxy4Gc4zexnrCfIogyQpy4Jv5KkcEdLv+e435arhLA7+kEXVQWnS4vc5NLo1AN/wqQ51Pum8lZytsWWNAL1j8mDO64wHdg0ZrY5MaLDlVsg2LcfQvWfKsMLlgeEP9mhNPK4mVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/RlOzce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/RlOzce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14AEC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774661093;
	bh=gYCdS6sBrbc6nL75kH2zZRtBO6JRhHx/lyOda5zrzH8=;
	h=To:Subject:From:Date:From;
	b=I/RlOzceISzVugR06bTlv3BF/n26i9DGSDJiUvptB1uErm6VrTNHF72PgZepoF/X4
	 McT/38HaLA8fjaBOhV20aJjnqJyJVI0Nu1vWK//ih71UWrG6XI5PjGneYdvgnSmQbW
	 AIP86+YnT0mjirS1yd4cvT5bEtR2xoDJOsNraNYxxCccTt+2mYiqZb9bZIR6nVcYWh
	 dlYSjmgsnmdbCeB9jfHGs+lzAROBkfk01xylywtoMJdbAp1YqFv52yo2unE8izlni+
	 nAiwwWFTAQZyLIBlhOMP6gR+GahDxML+Z8ZvWP2Ai5XnOThuvVbVc5UosOi3OhDAMj
	 hooxZKVKWtUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041110F3DC5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466109358.12381.13022248572473040481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ac6664d97d907ace9701422ffa35e09a703d15ed1ffc6e3cb8edf6a5afecd5
Date: Sat, 28 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774661093
