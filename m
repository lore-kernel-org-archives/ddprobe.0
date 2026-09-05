Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B272E8DEB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788598234; cv=none; b=TnX+ycbVCEBeMpw7aCYaUPk4y47oQx2KKnZegWFSVLFpRzzQawWRW/ubfS6BZ768UjAGUCWFQ61vZM2MZe8eN4ltdeAPZd/xBFn081QxPXbRD1USZPH1TwQCU8jhcCDEC20lp+vlbsqJVC9Gq/v122zvu87nSR74LeSa+TehTtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788598234; c=relaxed/simple;
	bh=Kmu58Eq0cfJPEH/l/C85Wg93yrZfCRwrrvNHHGR4BVE=;
	h=To:Subject:From:Message-Id:Date; b=KUZ8Ya1i/g3WQ3omRzYYAQyNhJpKHZhyIaQcW02sc8kJNgCzmM8dO+yEwzPBGiwIxt7zBjeDbXpgohMLxpiBH6uEPLWAUci/z6s8dGMNGbIzuxRvkuN/KHxnc4Humff/bMrY4z3flxDiAz3WdeY4YKK/mvfsuOEr6B5eFO+Tr4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtOhlA34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtOhlA34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B3FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788598233;
	bh=Kmu58Eq0cfJPEH/l/C85Wg93yrZfCRwrrvNHHGR4BVE=;
	h=To:Subject:From:Date:From;
	b=YtOhlA34o6HN0aXKuL6ZKfFP80s9btqyBgB8sFT9eR0k+6MtpasLPeGixJgk3sK40
	 Vm1CAVlOIDikdQh+s05gMS3Z6JZEpBjrO5xBbp+lCpT0CHv3vW7xaRGelGWK4T+0fx
	 V9597ToMHUdJ/Odklb1wS7Y2CnMiFv5KiktzI8+HFZzHFgfPnE7W1u6PoqbiJGbAej
	 rNpmvRFQseSceUD+jXcIE1mPmwLv0ZQAfEqsO73C2fzxQPTN5jGkify4IR3v8w+m2g
	 Wh/A4tfqT4eEKciODXcCkm2Sn7q78vF9ZvZvUVy2mVm9tDSZRUE8VKUaLCvfIlgnP1
	 DR8P/tc+yKl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69D2C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859823377.26648.2315924129928226853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de0315739f278775d422b5797011405f115372c48e9c96502c0c909c5eb4dd8
Date: Sat, 05 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788598233
