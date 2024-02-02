Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F389113AE9
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706849897; cv=none; b=jePl9QZPLvdV/KmmUax8NaYAh6iHxFdwWM6fcBevGzuspw0lfJXpFL1YbFDO52Iq7TLzodAI3+swe6uBdMxvYccUNxSVLR7uV3p43qphZNSDEbjTZOmMRUaM7Jhe090BdRn3IAoivgUs0j7oSaCbCsI+jL/IXPulp33PrCu5YjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706849897; c=relaxed/simple;
	bh=W2xrB3d3Ce/c7rdOYlRuwfS6FPF/SDDfUhnZEL1byU8=;
	h=To:Subject:From:Message-Id:Date; b=iiZj7th97C4v22pVMSlCDZzSzowiL6IwLEO0nB6CPpO0abFPd6f4C7TRDytGyiRX0nXe7uE1LM7RZHcLpzaj814nTIWbTMvlvK5L1XV66D3pDbAADSqRxlWxFCUxkcQLJ79v2xSycfo/ZOOhA1nqA84OMXbrrHnEC7Q37lloe7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXk6XLiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXk6XLiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A1BC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706849896;
	bh=W2xrB3d3Ce/c7rdOYlRuwfS6FPF/SDDfUhnZEL1byU8=;
	h=To:Subject:From:Date:From;
	b=sXk6XLiT6CCpxvF77d/MVOqqKOfr9hni0POLsGaPgSxOCHb7OuBvsqyAfFIvgvaWg
	 Bewhym7/5uMAGHDtWyvA25bf4+8GGbqFeXkboO8kXRa08BBmlo5NWylDJ+iXyVKOY9
	 kMA2wgwJ6Qvxgsa+Nza9w56OiXWGqSDLqMcRX5DEqszSaz8ihdnETGOe3R6JJkIBQP
	 TZ2955VecimImRxtsllO/6KDu6WP7dyJSvBiDN764KRPAIKGoEs9CxExOUlQhR0g9q
	 BgwbZTj1WimqQR7SmZi14L20Kj5ihQ5QdMyeZ+I+JM9THcJ9CPfX1Kk1548+tNIxjz
	 ccGyZInMm4DKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683D7C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684989640.29269.7375872842793149095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91476ebb6a81124fcaff26ead493c284812156b318d6ab5ec7c42889fc076e51
Date: Fri, 02 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706849896
