Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302351EF36B
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759978794; cv=none; b=bkX3Jhqq5G/m9nYWEajn67aVjAk/pZSbjUYfIG9f9lF5d/APYUi8HnHKmEErbWpPpe4mffBoX50mceoC883bzcPFK4dFfGLsE/L8StWNqgLLA5nIJtXFWDEVoafPaofbuU8/gP/Svg37QZsw6tzIZa3PHcc/QSVg+v7RwARph2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759978794; c=relaxed/simple;
	bh=znWnwRTxc75s6xIh1PimJwGrHqQ2Gw82oqiMYVDiL/g=;
	h=To:Subject:From:Message-Id:Date; b=U3KFIshciL3j1lPkLFCoiqmiZjWTckL3uns+dOS+NK1LyUO8eCombnG50LedNh4got3vqE6oZbNwmH9LAsZFxa0CWT/ML7H0XbVVvjF+EqQE2mspRuL1Lruj/MRLG9pkcN6zSnaV5gehkGqYH+WETRsoFn8l+F9TjogfAhu1m7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxEVzmZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxEVzmZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EEAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759978793;
	bh=znWnwRTxc75s6xIh1PimJwGrHqQ2Gw82oqiMYVDiL/g=;
	h=To:Subject:From:Date:From;
	b=PxEVzmZCFvzrwlKygTKXgydJKj61ut0HHyPnfrNOIRp3cE5BSqvoXHGixTmhI1OzL
	 k4/D9mllqnLqbVhosp21S2mgSte/opbISpXE61jhsshjQlZeoX7s+NJ5CwcdrwG/yh
	 tXW0smPslMWUlEBBIvJSfWbDhcY6i7lqAAAxM36/BPzrm5TgDZuBJA8+51o7k76rU/
	 3+qKyqTkTnL6ob9VxkWbNI1KlXr9+IbIw/DtkUOZ92cMRaxq2CLJ+yKj6T5cM/9lAH
	 APcv5ZElwlKJ07wNcRnKpaGwga2CxSzezfnUO4eKsMMqhCVvl7B0xz6J/vCgSxml+H
	 Em9XA/zvic7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCFCAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997879358.21852.10916838081898317663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5d72f10ab1df37d4a05346314158c788466d6c224b12e0da91898a7596d1d6
Date: Thu, 09 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759978793
